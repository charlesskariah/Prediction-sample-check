RailsAdmin.config do |config|

  #Change the number of items per page
  config.default_items_per_page = 50

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan
  config.current_user_method &:current_user

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    show
    edit
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'Match' do
    list do
      field :club1_name
      field :club2_name
      field :start_time
      field :club_1_score
      field :club_2_score
      field :round_id
    end
    edit do
      field :club_1_score
      field :club_2_score
    end
  end
end
