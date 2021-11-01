require "test_helper"

class AnotationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get anotations_index_url
    assert_response :success
  end

  test "should get edit" do
    get anotations_edit_url
    assert_response :success
  end

  test "should get new" do
    get anotations_new_url
    assert_response :success
  end
end
