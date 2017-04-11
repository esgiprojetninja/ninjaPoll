require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest
  test "Invalid signup information" do
    get signup_path
    assert_no_difference "User.count" do
      post user_path, params: { users: {
          name: "",
          email: "invalid@email",
          password: "otot",
          password_confirmation: "toto"
        }}
      end
      assert_template "user/new"
    end
end
