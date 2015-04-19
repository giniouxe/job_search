class OffersController < ApplicationController
  def index
    @offers = Offer.search(params[:query]).paginate(page: params[:page],
                                                    per_page: 20)
    @query = params[:query]
  end

  def show
    @offer = Offer.find(params[:id])
  end
end
