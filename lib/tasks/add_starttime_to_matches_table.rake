namespace :add_starttime_to_matches_table do
  desc "TODO"
  task task: :environment do
  	matches = Match.all
  	matches.each do |match|
  	  date = match.match_date.to_s
   	  time = match.match_time.to_s
  	  datestring = date.concat(' ' + time)
  	  starttime = DateTime.parse(datestring)
      match.start_time = starttime
      match.save
  	end
  end
end
