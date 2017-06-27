require 'test_helper'

class PollQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poll_question = poll_questions(:one)
    @user = users(:michael)
    post login_path, params: { session: { email: @user.email, password: "password"}}
  end

  test "should get index" do
    get poll_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_poll_question_url
    assert_response :success
  end

  test "should create poll_question" do
    assert_difference('PollQuestion.count') do
      post poll_questions_url, params: { poll_question: {
        text: "tutto bene ?",
        poll_id: 1
      } }
    end

    assert_redirected_to poll_question_url(PollQuestion.last)
  end

  test "should show poll_question" do
    get poll_question_url(@poll_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_poll_question_url(@poll_question)
    assert_response :success
  end

  test "should update poll_question" do
    patch poll_question_url(@poll_question), params: { poll_question: {  } }
    assert_redirected_to poll_question_url(@poll_question)
  end

  test "should destroy poll_question" do
    assert_difference('PollQuestion.count', -1) do
      delete poll_question_url(@poll_question)
    end

    assert_redirected_to poll_questions_url
  end
end
