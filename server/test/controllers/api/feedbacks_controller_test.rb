require 'test_helper'

class Api::FeedbacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feedback = feedbacks(:one)
  end

  test "should get index" do
    get feedbacks_url, as: :json
    assert_response :success
  end

  test "should create feedback" do
    assert_difference('Feedback.count') do
      post feedbacks_url, params: { feedback: { segment_id: @feedback.segment_id, text: @feedback.text, user_id: @feedback.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show feedback" do
    get feedback_url(@feedback), as: :json
    assert_response :success
  end

  test "should update feedback" do
    patch feedback_url(@feedback), params: { feedback: { segment_id: @feedback.segment_id, text: @feedback.text, user_id: @feedback.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy feedback" do
    assert_difference('Feedback.count', -1) do
      delete feedback_url(@feedback), as: :json
    end

    assert_response 204
  end
end
