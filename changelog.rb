# in development.rb

ENV['FACEBOOK_APP_ID'] = "282535961932879";
ENV['FACEBOOK_SECRET'] = "43a9fc320df66fb64f6bd597e89aba02";



# in database.yml replace all

# SQLite version 3.x
#   gem install sqlite3
#
#   Ensure the SQLite 3 gem is defined in your Gemfile
#   gem 'sqlite3'
#
default: &default
  adapter: postgresql
  encoding: unicode
  database: prediction_app
  port: 5432
  host: localhost
  pool: 5
  username: prediction
  password: prediction

development:
  <<: *default
  database: prediction_app

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: prediction_app

production:
  <<: *default
  database: prediction_app




  