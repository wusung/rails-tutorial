require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    # assert_no_difference 'User.count', 3 do
    #   post users_path, user: { name:  "Example User",
    #                           email: "user@example.com",
    #                           password:              "password",
    #                           password_confirmation: "password" }
    # end
    assert_template 'users/new'
    assert_select 'div#<CSS id for error explanation>'
    assert_select 'div.<CSS class for field with error>'
  end
end