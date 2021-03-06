require 'test_helper'

class Api::StoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @story = stories(:one)
  end

  test "should get index" do
    get stories_url, as: :json
    assert_response :success
  end

  test "should create story" do
    assert_difference('Story.count') do
      post stories_url, params: { story: { description: @story.description, image: @story.image, published: @story.published, text: @story.text, title: @story.title, user_id: @story.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show story" do
    get story_url(@story), as: :json
    assert_response :success
  end

  test "should update story" do
    patch story_url(@story), params: { story: { description: @story.description, image: @story.image, published: @story.published, text: @story.text, title: @story.title, user_id: @story.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy story" do
    assert_difference('Story.count', -1) do
      delete story_url(@story), as: :json
    end

    assert_response 204
  end
end
