class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  #load_and_authorize_resource

  # GET /listings
  # GET /listings.json
  def index
    #@listings = Listing.all
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
    #trying to get the seller id/user id - how are they linked through listings_to_sell
    #making 2 db calls here:
    # listing_id = params[:id]
    # @listing = Listing.find_by(id: listing_id)
    # seller_id = @listing.seller_id
    # @seller = User.find_by(id: seller_id)
  end

  #does this go to new page?
  # GET /listings/new - get request for the new form
  def new
   @listing = Listing.new
  
    @categories = {}
    # do i need these?
    # @all_listings = Listing.all
    # @all_users = User.all ???
  end

  # GET /listings/1/edit
  def edit 
  end

  # POST /listings
  # POST /listings.json
  def create
     #@listing = Listing.new(listing_params)
     #TRY THIS FOR NO SELLER ERROR:
     #@current_user = User_id//
     @listing = current_user.listings_to_sell.new(listing_params)
     p "***************************"
     p listing_params
     #@listing = Listing.create()
     #need to pass params?

    respond_to do |format|
      if @listing.save #redirect to root path after?
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json

  # def destroy
  #   @listing = Listing.find(params[:id])
  #   authorize! :destroy, @listing
  # end
  
  def destroy
     @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def listing_params
      #params.fetch(:listing, {})  
      params.require(:listing).permit(:title, :description, :category, :buyer_id, :seller_id, :price_type, :price, :photo)
     end
  end

  # what about require/permit?

  #   def listing_params
  #     params.require(:listing).permit(:title, :description, :category, :buyer_id, :seller_id, :price_type, :price, :photo)
  # end

    #@listing = current_user.listings.new()
    #@listing = current_user.listings_to_sell.new()
    #@Listings.seller_id = @User.user_id
    #:seller_id = :user_id

