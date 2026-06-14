# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module PricingPlans
        class ComponentUpdateParams < ::Stripe::RequestParams
          # An identifier that can be used to find this component. Maximum length of 200 characters.
          attr_accessor :lookup_key
          # Set of key-value pairs that you can attach to an object.
          attr_accessor :metadata

          def initialize(lookup_key: nil, metadata: nil)
            @lookup_key = lookup_key
            @metadata = metadata
          end
        end
      end
    end
  end
end
