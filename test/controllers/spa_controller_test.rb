require 'test_helper'

class SpaControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get spa_main_url
    assert_response :success
  end

end
