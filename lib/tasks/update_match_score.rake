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
		if error == "OK"
			match_results = parsed_result['matches']
		else
			abort("Error!! "+error)
		end
	end

	$update_count = 0;

	def update_match_score (date, club1_id, club2_id, club1_score, club2_score)
		result = Match.where(:club_1_id => club1_id.to_i, :club_2_id => club2_id.to_i, :match_date => date).to_a
		if(!result.empty?)
			match_to_update = result.first
			if match_to_update.update(:club_1_score => club1_score.to_i, :club_2_score => club2_score.to_i)
				puts "Updated Match -- "+match_to_update.inspect+"\n\n"
				$update_count += 1
			end
		else
			result = Match.where(:club_1_id => club2_id.to_i, :club_2_id => club1_id.to_i, :match_date => date).to_a
			match_to_update = result.first
			if match_to_update.update(:club_1_score => club2_score.to_i, :club_2_score => club1_score.to_i)
				puts "Updated Match "+match_to_update.to_s
				$update_count += 1
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
			count = process_match_data match_results
		end
		puts $update_count.to_s+" Updated!! \n\n"
	end

  	match_dates_to_update = get_all_match_dates_to_update
  	update_match_results_for_dates match_dates_to_update
  end
end
