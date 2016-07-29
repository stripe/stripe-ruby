require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class SourceTest < Test::Unit::TestCase
    should 'be verifiable' do
      source = Stripe::Source.construct_from({
        :id => 'ba_foo',
      })

      @mock.expects(:post).
        once.
        with('https://api.stripe.com/v1/sources/ba_foo/verify', nil, 'amounts[]=1&amounts[]=2').
        returns(make_response(:status => 'verified'))

      source.verify(:amounts => [1,2])
    end
  end
end
