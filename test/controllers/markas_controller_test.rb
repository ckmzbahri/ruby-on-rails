require "test_helper"

class MarkasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marka = markas(:one)
  end

  test "should get index" do
    get markas_url
    assert_response :success
  end

  test "should get new" do
    get new_marka_url
    assert_response :success
  end

  test "should create marka" do
    assert_difference("Marka.count") do
      post markas_url, params: { marka: { name: @marka.name } }
    end

    assert_redirected_to marka_url(Marka.last)
  end

  test "should show marka" do
    get marka_url(@marka)
    assert_response :success
  end

  test "should get edit" do
    get edit_marka_url(@marka)
    assert_response :success
  end

  test "should update marka" do
    patch marka_url(@marka), params: { marka: { name: @marka.name } }
    assert_redirected_to marka_url(@marka)
  end

  test "should destroy marka" do
    assert_difference("Marka.count", -1) do
      delete marka_url(@marka)
    end

    assert_redirected_to markas_url
  end
end
