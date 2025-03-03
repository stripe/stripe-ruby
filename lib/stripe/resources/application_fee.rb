# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ApplicationFee < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::NestedResource

    OBJECT_NAME = "application_fee"
    def self.object_name
      "application_fee"
    end

    nested_resource_class_methods :refund, operations: %i[create retrieve update list]

    # Returns a list of application fees you've previously collected. The application fees are returned in sorted order, with the most recent fees appearing first.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/application_fees", params: params, opts: opts)
    end
  end
end
