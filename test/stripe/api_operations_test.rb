# -*- coding: utf-8 -*-
require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ApiOperationsTest < Test::Unit::TestCase
    class Updater < APIResource
      include Stripe::APIOperations::Save
    end

    should "the Update API operation should post the correct parameters to the resource URL" do
      @mock.expects(:post).once.
        with("#{Stripe.api_base}/v1/updaters/id", nil, 'foo=bar').
        returns(make_response({foo: 'bar'}))
      resource = Updater::update("id", {foo: "bar"})
      assert_equal('bar', resource.foo)
    end
  end
end


