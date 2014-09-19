namespace :user_preference_time_zone do
  desc "TODO"
  task task: :environment do
    User.all.each do |u|
    id =  u.id
    Preference.create(user_id: id, time_zone:    'UTC')
    end
    end
  end
