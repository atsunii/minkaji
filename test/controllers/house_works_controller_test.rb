require 'test_helper'

class HouseWorksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get house_works_index_url
    assert_response :success
  end

end
