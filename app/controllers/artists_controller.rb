class ArtistsController < ApplicationController
  before_action :set_artists, only: [:show, :update, :destroy]

  # GET /Artists
  # GET /Artists.json
  def index
    @artists = Artist.all

    # render json: @artists
  end

  # GET /Artists/1
  # GET /Artists/1.json
  def show
    # render json: @artists
  end

  # POST /Artists
  # POST /Artists.json
  def create
    @artists = Artist.new(artists_params)

    if @artists.save
      render json: @artists, status: :created, location: @artists
    else
      render json: @artists.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /Artists/1
  # PATCH/PUT /Artists/1.json
  def update
    @artists = Artist.find(params[:id])

    if @artists.update(artists_params)
      head :ok
    else
      render json: @artists.errors, status: :unprocessable_entity
    end
  end

  # DELETE /Artists/1
  # DELETE /Artists/1.json
  def destroy
    @artists.destroy

    head :ok
  end

  private

    def set_artists
      @artists = Artist.find(params[:id])
    end

    def artists_params
      params.require(:artists).permit(:name, :label)
    end
end
