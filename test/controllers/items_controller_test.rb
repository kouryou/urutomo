require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get complete" do
    get items_complete_url
    assert_response :success
  end

end
