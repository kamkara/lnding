require "test_helper"

class ConnectedControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get connected_index_url
    assert_response :success
  end
end
