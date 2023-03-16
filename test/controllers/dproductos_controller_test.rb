require "test_helper"

class DproductosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dproductos_index_url
    assert_response :success
  end

  test "should get show" do
    get dproductos_show_url
    assert_response :success
  end

  test "should get new" do
    get dproductos_new_url
    assert_response :success
  end

  test "should get edit" do
    get dproductos_edit_url
    assert_response :success
  end
end
