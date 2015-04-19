require 'test_helper'

class OfferTest < ActiveSupport::TestCase
  def setup
    @santa = Fabricate(:offer, job_title: 'Santa Klaus',
                               job_summary: 'Deliver presents to children',
                               locations: 'All around the world')
    @spiderman = Fabricate(:offer, job_title: 'Spiderman',
                                   job_summary: 'Save people and fight evil.',
                                   locations: 'New York')
  end

  test 'should return offer when query matches job title' do
    assert_equal [@santa], Offer.search('Santa')
  end

  test 'should return offer when query matches job summary' do
    assert_equal [@santa], Offer.search('children')
  end

  test 'should return offer when query matches location' do
    assert_equal [@santa], Offer.search('world')
  end

  test 'should return offer when query matches job title & summary' do
    assert_equal [@spiderman], Offer.search('spiderman fight evil')
  end

  test 'should not return offer when no offer matches query' do
    assert_equal [], Offer.search('Superman')
  end

  test 'should not return offer when query matches title but not summary' do
    assert_equal [], Offer.search('Spiderman children')
  end
end
