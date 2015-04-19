class OffersController < ApplicationController
  def index
    @offers = Offer.paginate(page: params[:page], per_page: 20)
  end

  def show
    @offer = Offer.find(params[:id])
  end
end
