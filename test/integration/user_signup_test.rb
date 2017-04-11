require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest

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
          password_confirmation: "Password"
        }}
    end
  end
end
