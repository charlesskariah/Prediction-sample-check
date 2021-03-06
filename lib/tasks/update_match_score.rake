require 'time'
require 'net/http'        
require 'json'

namespace :update_match_score do
  desc "TODO"
  task task1: :environment do
	def get_club_id club1_name
		clubs = {}
		clubs['Arsenal'] = 1
		clubs['Aston Villa'] = 2
		clubs['Burnley' ] = 3
		clubs['Chelsea'] = 4
		clubs['Crystal Palace'] = 5
		clubs['Everton'] = 6
		clubs['Hull City'] = 7
		clubs['Leicester'] = 8
		clubs['Liverpool'] = 9
		clubs['Manchester City'] = 10
		clubs['Manchester United'] = 11
		clubs['Newcastle Utd'] = 12
		clubs['QPR'] = 13
		clubs['Southampton'] =  14
		clubs['Stoke City'] = 15
		clubs['Sunderland'] =16
		clubs['Swansea'] = 17
		clubs['Tottenham'] = 18
		clubs['West Brom'] = 19
		clubs['West Ham'] = 20
		clubs[club1_name.to_s]
	end

	def generate_uri(action, api_key, id)
		"http://football-api.com/api/?Action="+action+"&APIKey="+api_key+"&comp_id="+id+"&&match_date="	
	end

	def search_result_json date
		uri = generate_uri("fixtures", "bd902c26-f14d-aeaa-6fd728eeb3af", "1204")
		uri = URI(uri+date.to_s)
		res = Net::HTTP.get_response(uri)
		if res.is_a?(Net::HTTPSuccess)
			return res.body
		else
			abort("Error!! "+res)	
		end
	end

	def search_result_match date
		result = search_result_json date
		parsed_result = JSON.parse(result)
		error = parsed_result['ERROR']
		ipaddress = parsed_result['IP']
		if error == "OK"
			return parsed_result['matches']
		else
			puts "Error!! "+error
			puts "Ip address: " + ipaddress
			return false
		end
	end

	$update_count = 0;

	def update_match_score (date, club1_id, club2_id, club1_score, club2_score)
		result = Match.where(:club_1_id => club1_id.to_i, :club_2_id => club2_id.to_i, :match_date => date).to_a
		if(!result.empty?)
			match_to_update = result.first
			if match_to_update.update(:club_1_score => club1_score.to_i, :club_2_score => club2_score.to_i)
				puts "Updated Match -- "+match_to_update.inspect+"\n\n"
				puts "match = Match.find(#{match_to_update.id});match.update(:club_1_score => #{club1_score.to_i}, :club_2_score => #{club2_score.to_i})"
				$update_count += 1
			end
		else
			result = Match.where(:club_1_id => club2_id.to_i, :club_2_id => club1_id.to_i, :match_date => date).to_a
			if(!result.empty?)
				match_to_update = result.first
				if match_to_update.update(:club_1_score => club2_score.to_i, :club_2_score => club1_score.to_i)
					puts "Updated Match "+match_to_update.to_s
					$update_count += 1
				end
			else
				puts "Match not found!!! \n\n"
			end
		end
	end

	def process_match_data match_results
		match_results.each do |match|
			match_date_from_json =  match['match_formatted_date']
			match_date = Date.parse(match_date_from_json).strftime
			club1_name =  match['match_localteam_name']
			club2_name =  match['match_visitorteam_name']
			club1_id = get_club_id club1_name
			club2_id = get_club_id club2_name
			club1_score = match['match_localteam_score']
			club2_score = match['match_visitorteam_score']
			count = update_match_score(match_date, club1_id, club2_id, club1_score, club2_score)
		end
	end

	def get_all_match_dates
		matches = Match.all
  		match_dates = []
  		matches.each do |match|
  			match_dates<<match.match_date
  		end
  		match_dates.uniq
	end

	def convert_dates_for_json_call dates_array
		formatted_array = []
		dates_array.each do |date|
			formatted_array<<date.strftime("%d.%m.%Y")
		end
		formatted_array
	end  	

  	def dates_less_than(date, date_arr)
  		result_array = []
  		date_arr.each do |d|
  			result_array<<d if( (d <=> date) == -1  || (d <=> date) == 0 )
  		end
  		result_array
  	end

  	def get_all_match_dates_to_update
  		today = Time.now.to_date
  		match_dates = get_all_match_dates
  		previous_dates_array = dates_less_than(today, match_dates)
  		convert_dates_for_json_call previous_dates_array
  	end

  	def update_match_results_for_dates date_arr
		date_arr.each do |date|
			match_results = search_result_match date
			if !match_results
				puts ""
			else
				process_match_data match_results 
			end
		end
		puts $update_count.to_s+" Updated!! \n\n"
	end

  	match_dates_to_update = get_all_match_dates_to_update   
  	update_match_results_for_dates match_dates_to_update

    today = Time.now.to_date
    match_dates = get_all_match_dates
  	previous_dates_array = dates_less_than(today, match_dates)
    matches_updated_today = Match.where(:match_date => previous_dates_array)
  	matches_updated_today.each do |match|
  		predictions  = Prediction.where(match_id: match.id)
  	    predictions.each do |prediction |
  		    points = 0 
      	    total_points = 0
  		    predicted_score_for_club1 = prediction.club1_predicted_score
  		    predicted_score_for_club2 = prediction.club2_predicted_score
  		    actual_score_for_club1 = match.club_1_score
  		    actual_score_for_club2 = match.club_2_score
  		    predicted_score_diffrence = predicted_score_for_club1 - predicted_score_for_club2 
  		    actual_score_diffrence = actual_score_for_club1 - actual_score_for_club2
	  		if actual_score_for_club1 > actual_score_for_club2
	  			winner = Club.find(match.club_1_id).club_name
	  		elsif actual_score_for_club2 > actual_score_for_club1
	  			winner = Club.find(match.club_2_id).club_name
	  		else
	  			winner = "both"
	  		end
      
	  		if predicted_score_for_club1 > predicted_score_for_club2
                predicted_winner = Club.find(match.club_1_id).club_name
            elsif predicted_score_for_club2 > predicted_score_for_club1
            	predicted_winner = Club.find(match.club_2_id).club_name
            else
            	predicted_winner = "both"
            end

            if winner == predicted_winner
                prediction.result = 3
                points += 3
                prediction.save

                if predicted_score_for_club1 == actual_score_for_club1 && predicted_score_for_club2 == actual_score_for_club2
                	prediction.accuracy = 5
                	points += 5
                	prediction.save
                else
                  prediction.accuracy = 0
                  prediction.save
                end

                if predicted_score_diffrence == actual_score_diffrence
                	prediction.margin = 2
                	points += 2
                	prediction.save
                else
                  prediction.margin = 0
                  prediction.save
                end
            else
              prediction.result = 0
              prediction.accuracy = 0
              prediction.margin = 0
            end
            prediction.points = points
            selected_league =  SelectedLeague.find(prediction.selected_league_id)
            selected_league.total_points += points
            selected_league.save
            puts "Score updated for: " + prediction.inspect.to_s + "\n\n" if prediction.save  
        end
  	end
   end
end
