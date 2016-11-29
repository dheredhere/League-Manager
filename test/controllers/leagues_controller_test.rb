require 'test_helper'

class LeaguesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get leagues_show_url
    assert_response :success
  end

  test "should get create" do
    get leagues_create_url
    assert_response :success
  end

end
