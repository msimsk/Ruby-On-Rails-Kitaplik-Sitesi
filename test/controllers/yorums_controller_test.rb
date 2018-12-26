require 'test_helper'

class YorumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yorum = yorums(:one)
  end

  test "should get index" do
    get yorums_url
    assert_response :success
  end

  test "should get new" do
    get new_yorum_url
    assert_response :success
  end

  test "should create yorum" do
    assert_difference('Yorum.count') do
      post yorums_url, params: { yorum: { mesaj: @yorum.mesaj } }
    end

    assert_redirected_to yorum_url(Yorum.last)
  end

  test "should show yorum" do
    get yorum_url(@yorum)
    assert_response :success
  end

  test "should get edit" do
    get edit_yorum_url(@yorum)
    assert_response :success
  end

  test "should update yorum" do
    patch yorum_url(@yorum), params: { yorum: { mesaj: @yorum.mesaj } }
    assert_redirected_to yorum_url(@yorum)
  end

  test "should destroy yorum" do
    assert_difference('Yorum.count', -1) do
      delete yorum_url(@yorum)
    end

    assert_redirected_to yorums_url
  end
end
