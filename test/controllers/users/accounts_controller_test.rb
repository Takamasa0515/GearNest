require "test_helper"

class Users::AccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get users_accounts_edit_url
    assert_response :success
  end

  test "should get update" do
    get users_accounts_update_url
    assert_response :success
  end
end
