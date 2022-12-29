require "test_helper"

class UrunControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get urun_index_url
    assert_response :success
  end
end
