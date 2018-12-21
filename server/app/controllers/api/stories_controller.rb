class Api::StoriesController < ApplicationController
  before_action :set_story, only: [:show, :update, :destroy]

  # GET api/stories
  def index
    @stories = Story.all
    render json: @stories
  end

  # GET api/stories/1
  def show
    @story1 = Story.first
    if @story
      render json: @story
    else
      render status: :not_found
    end
  end

  # POST api/stories
  def create
    @story = Story.new(story_params)

    if @story.save
      render json: @story, status: :created, location: @story
    else
      render json: @story.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT api/stories/1
  def update
    if @story.update(story_params)
      render json: @story
    else
      render json: @story.errors, status: :unprocessable_entity
    end
  end

  # GET api/stories/1/likes
  def likes
    render json: StoriesLike.where(story_id: params[:story_id])
  end

  # GET api/stories/1/number_of_likes
  def number_of_likes
    render json: StoriesLike.where(story_id: params[:story_id]).length
  end

  # POST api/stories/1/like
  def like
    @user = User.third # Need to change this after
    @story_like = StoriesLike.new(
      user_id: @user.id,
      story_id: params[:story_id]
    )
    if @story_like.save
      render json: @story_like 
    else
      puts "AAAA"
    end
  end

  # DELETE api/stories/1
  def destroy
    @story.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      if Story.exists?(params[:id])
        @story = Story.find(params[:id])
      else
        nil
      end
    end

    # Only allow a trusted parameter "white list" through.
    def story_params
      params.require(:story).permit(:user_id, :title, :description, :text, :image, :published)
    end
end
