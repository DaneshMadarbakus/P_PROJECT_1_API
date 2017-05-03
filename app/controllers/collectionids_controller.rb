class CollectionidsController < ApplicationController
  before_action :set_collectionid, only: [:show, :update, :destroy]

  # GET /collectionids
  def index
    @collectionids = Collectionid.all

    render json: @collectionids
  end

  # GET /collectionids/1
  def show
    render json: @collectionid
  end

  # POST /collectionids
  def create
    @collectionid = Collectionid.new(collectionid_params)

    if @collectionid.save
      render json: @collectionid, status: :created, location: @collectionid
    else
      render json: @collectionid.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /collectionids/1
  def update
    if @collectionid.update(collectionid_params)
      render json: @collectionid
    else
      render json: @collectionid.errors, status: :unprocessable_entity
    end
  end

  # DELETE /collectionids/1
  def destroy
    @collectionid.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collectionid
      @collectionid = Collectionid.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def collectionid_params
      params.require(:collectionid).permit(:shopify_id)
    end
end
