class Api::RelationshipsController < ApplicationController
  before_action :set_relationship, only: [:show, :update, :destroy]

  # GET /relationships
  def index
    @relationships = Relationship.all

    render json: @relationships
  end

  # GET /relationships/1
  def show
    render json: @relationship
  end

  # POST /relationships
  def create
    @follower_id = current_user.id
    @following_id =  params[:user_id]
    @relationship = Relationship.new(follower_id: @follower_id, following_id: @following_id)
    @relationship_id = 0
    if @relationship.save
      @author_followers = Relationship.count_followers(@relationship.following_id)
      @relationship_id = @relationship.id
      render status: :created
    else
      render json: @relationship.errors, status: :unprocessable_entity
    end
  end
            

  # PATCH/PUT /relationships/1
  def update
    if @relationship.update(relationship_params)
      render json: @relationship
    else
      render json: @relationship.errors, status: :unprocessable_entity
    end
  end

  # DELETE /relationships/1
  def destroy
    if @relationship.destroy
      @author_followers = Relationship.count_followers(params[:user_id])
      render json: @author_followers, status: :ok
    else
      render json: @relationship.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relationship
      @relationship = Relationship.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def relationship_params
      params.require(:relationship).permit( :following_id, :created_at, :updated_at)
    end
end
