require 'test_helper'

class TuneControllerTest < ActionDispatch::IntegrationTest
  test "should get up" do
    get tune_up_url
    assert_response :success
  end

end
