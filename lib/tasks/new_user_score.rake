# namespace :user_score do
#   desc 'TODO'
#   task task1: :environment do
#     class UserScoreUpdater
#       def score_updated_matches
#         raketask_last_executed = RakeTaskDetails.where(name: 'user_score').last
#         if raketask_last_executed.blank?
#           raketask_last_executed_datetime = Match.first.start_time
#         else
#           raketask_last_executed_datetime = raketask_last_executed.run_at
#         end
#         datetime_now = DateTime.parse(Time.now.to_s)
#         matches_updated_today = Match.where(start_time: raketask_last_executed_datetime..datetime_now).order(:match_date)
#         matches_updated_today
#       end

#       def
#         matches_updated_today = score_updated_matches
#         matches_updated_today.each do |match|
#           predictions = Prediction.where(match_id: match.id)
#           predictions.each do |prediction|
#             predicted_score_for_club1 = prediction.club1_predicted_score
#             predicted_score_for_club2 = prediction.club2_predicted_score
#             actual_score_for_club1 = match.club_1_score
#             actual_score_for_club2 = match.club_2_score
#             predicted_score_diffrence = predicted_score_for_club1 - predicted_score_for_club2
#             actual_score_diffrence = actual_score_for_club1 - actual_score_for_club2
#             user_score_calculations
#           end
#         end
#       end

#       def find_actual_winner
#         if actual_score_for_club1 > actual_score_for_club2
#           winner = Club.find(match.club_1_id).club_name
#         elsif actual_score_for_club2 > actual_score_for_club1
#           winner = Club.find(match.club_2_id).club_name
#         else
#           winner = 'both'
#         end
#         winner
#       end

#       def find_predicted_winner
#         if predicted_score_for_club1 > predicted_score_for_club2
#           predicted_winner = Club.find(match.club_1_id).club_name
#         elsif predicted_score_for_club2 > predicted_score_for_club1
#           predicted_winner = Club.find(match.club_2_id).club_name
#         else
#           predicted_winner = 'both'
#         end
#         predicted_winner
#       end

#       def user_score_calculations
#         winner = find_actual_winner
#         predicted_winner = find_predicted_winner
#         points = 0
#         if winner == predicted_winner
#           prediction.result = 3
#           points += 3
#           prediction.save
#           if predicted_score_for_club1 == actual_score_for_club1 && predicted_score_for_club2 == actual_score_for_club2
#             prediction.accuracy = 5
#             points += 5
#             prediction.save
#           else
#             prediction.accuracy = 0
#             prediction.save
#           end
#           if predicted_score_diffrence == actual_score_diffrence
#             prediction.margin = 2
#             points += 2
#             prediction.save
#           else
#             prediction.margin = 0
#             prediction.save
#           end
#         else
#           prediction.result = 0
#           prediction.accuracy = 0
#           prediction.margin = 0
#         end
#         prediction.points = points
#         selected_league =  SelectedLeague.find(prediction.selected_league_id)
#         selected_league.total_points += points
#         p 'Leaugue updated' if selected_league.save
#         p 'Prediction Updated' if prediction.save
#       end
#     end
#     score_updater_obj = UserScoreUpdater.new
#     score_updater_obj.main_method
#     raketask = RakeTaskDetails.create(name: 'user_score', run_at: DateTime.parse(Time.now.to_s))
#     p 'raketask details saved!!! ' if raketask.save
#   end
# end
