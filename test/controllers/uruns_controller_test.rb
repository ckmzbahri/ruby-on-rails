require "test_helper"

class UrunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @urun = uruns(:one)
  end

  test "should get index" do
    get uruns_url
    assert_response :success
  end

  test "should get new" do
    get new_urun_url
    assert_response :success
  end

  test "should create urun" do
    assert_difference("Urun.count") do
      post uruns_url, params: { urun: { marka_id: @urun.marka_id, name: @urun.name } }
    end

    assert_redirected_to urun_url(Urun.last)
  end

  test "should show urun" do
    get urun_url(@urun)
    assert_response :success
  end

  test "should get edit" do
    get edit_urun_url(@urun)
    assert_response :success
  end

  test "should update urun" do
    patch urun_url(@urun), params: { urun: { marka_id: @urun.marka_id, name: @urun.name } }
    assert_redirected_to urun_url(@urun)
  end

  test "should destroy urun" do
    assert_difference("Urun.count", -1) do
      delete urun_url(@urun)
    end

    assert_redirected_to uruns_url
  end
end
