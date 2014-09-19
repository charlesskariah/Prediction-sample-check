class User < ActiveRecord::Base
  has_many :selected_leagues
  has_many :leagues, through: :selected_leagues
  has_many :preferences
  accepts_nested_attributes_for :preferences, allow_destroy: true

  validates :firstname, presence: true
  validates :user_agreement, acceptance: { accept: true }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, omniauth_providers: [:facebook]

  def self.from_omniauth(auth)
    existing_user = User.where(email: auth.info.email, uid: nil, provider: nil).first
    if existing_user.blank?
      where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        # user.password = Devise.friendly_token[0, 20]
        user.firstname = auth.info.first_name
        user.lastname = auth.info.last_name
        # user.image = auth.info.image # assuming the user model has an image
        user
      end
    else
      existing_user.provider = auth.provider
      existing_user.uid = auth.uid
      existing_user.save!
      existing_user
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session['devise.facebook_data']
        user_info = session['devise.facebook_data']['extra']['raw_info']
        user.email = user_info['email'] if user.email.blank?
        user.firstname = user_info['first_name'] if user.firstname.blank?
        user.lastname = user_info['last_name'] if user.lastname.blank?
        user.provider = data['provider'] if user.provider.blank?
        user.uid = data['uid'] if user.uid.blank?
      end
    end
  end

  def plf_score
    selected_leagues.map { |l| l.total_points.to_i }.inject(:+)
  end

  def name
    if firstname.present? || lastname.present?
      "#{firstname} #{lastname}"
    else
      email
    end
  end

  def admin?
    self.is_admin
  end
end
