class Api::GenresController < ApplicationController
  before_action :set_genre, only: [:show, :update, :destroy]

  # GET api/genres
  def index
    @genres = Genre.all.order('name')
    render json: @genres
  end

  # GET api/genres/1
  def show
    @genres_stories = 
    render json: @genre
  end

  # POST /genres
  def create
    @genre = Genre.new(genre_params)

    if @genre.save
      render json: @genre, status: :created, location: @genre
    else
      render json: @genre.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /genres/1
  def update
    if @genre.update(genre_params)
      render json: @genre
    else
      render json: @genre.errors, status: :unprocessable_entity
    end
  end

  # GET api/genres/1/stories
  def stories
    @genre = Genre.find(params[:id])
    @stories = Story.find_published_stories_by_genre(params[:id])
  end

  # DELETE /genres/1
  def destroy
    @genre.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genre
      @genre = Genre.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def genre_params
      params.require(:genre).permit(:name)
    end
end
