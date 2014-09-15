namespace :user_score do
  desc "TODO"
  task task1: :environment do
    raketask_last_executed = RakeTaskDetails.last
    if raketask_last_executed.blank?
      raketask_last_executed_datetime = Match.first.start_time
    else
      raketask_last_executed_datetime= raketask_last_executed.datetime
    end
    datetime_now = DateTime.parse(Time.now.to_s)
    matches_updated_today = Match.where(start_time: raketask_last_executed_datetime..datetime_now).order(:match_date)
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
        if selected_league.save
          puts "Leaugue updated"
        end
        if prediction.save
          puts "Prediction Updated"
        end    
      end
    end
    raketask = RakeTaskDetails.new
    raketask.datetime = DateTime.parse(Time.now.to_s)
    raketask.save
  end
end
