require 'test_helper'

class OffersControllerTest < ActionController::TestCase
  def setup
    @offer = Fabricate(:offer)
  end

  test 'should get index' do
    get :index
    assert_response :success
  end

  test 'should get show' do
    get :show, id: @offer.id
    assert_response :success
  end
end
