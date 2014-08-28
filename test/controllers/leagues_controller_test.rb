require 'test_helper'

class LeaguesControllerTest < ActionController::TestCase
  test "should get view_leagues" do
    get :view_leagues
    assert_response :success
  end

end
