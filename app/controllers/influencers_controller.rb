class InfluencersController < ApplicationController
  before_action :set_influencer, only: [:show, :update, :destroy]

  # GET /influencers
  def index
    @influencers = Influencer.all

    render json: @influencers
  end

  # GET /influencers/1
  def show
    render json: @influencer
  end

  # POST /influencers
  def create
    @influencer = Influencer.new(influencer_params)

    if @influencer.save
      render json: @influencer, status: :created, location: @influencer
    else
      render json: @influencer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /influencers/1
  def update
    if @influencer.update(influencer_params)
      render json: @influencer
    else
      render json: @influencer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /influencers/1
  def destroy
    @influencer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_influencer
      @influencer = Influencer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def influencer_params
      params.require(:influencer).permit(:first_name, :moniker, :last_name, :one_liner, :about, :front_pic, :about_pic, :spotify_about, :spotify_pic, :pic_1, :pic_2, :facebook_link, :instagram_link, :twitter_link, :website_link, :spotify_user_id, :spotify_playlist_id)
    end
end
