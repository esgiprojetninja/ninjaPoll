require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
    post login_path, params: { session: { email: @user.email, password: "password"}}
  end

  test "invalid signup information" do
    get signup_path
    assert_no_difference "User.count" do
      post users_path, params: { user: {
          name: "",
          email: "invalid@email",
          password: "otot",
          password_confirmation: "toto"
        }}
      end
    end

  test "valid signup information" do
    get signup_path
    assert_difference "User.count", 1 do
      post users_path, params: { user: {
          name: "Denis Richie",
          email: "awesome@me.io",
          password: "Password",
          password_confirmation: "Password",
          is_admin: false
        }}
    end
  end
end
