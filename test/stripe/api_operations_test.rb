# -*- coding: utf-8 -*-
require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ApiOperationsTest < Test::Unit::TestCase
    class UpdateableResource < APIResource
      include Stripe::APIOperations::Save

      def self.protected_fields
        [:protected]
      end
    end

    context ".update" do
      should "post the correct parameters to the resource URL" do
        @mock.expects(:post).once.
          with("#{Stripe.api_base}/v1/updateableresources/id", nil, 'foo=bar').
          returns(make_response({foo: 'bar'}))
        resource = UpdateableResource::update("id", { foo: "bar" })
        assert_equal('bar', resource.foo)
      end

      should "error on protected fields" do
        e = assert_raises do
          UpdateableResource::update("id", { protected: "bar" })
        end
        assert_equal "Cannot update protected field: protected", e.message
      end
    end
  end
end
