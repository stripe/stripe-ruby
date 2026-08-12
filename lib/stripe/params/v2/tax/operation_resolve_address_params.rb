# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Tax
      class OperationResolveAddressParams < ::Stripe::RequestParams
        class Address < ::Stripe::RequestParams
          # The city.
          attr_accessor :city
          # The two-letter country code.
          attr_accessor :country
          # The first line of the street address.
          attr_accessor :line1
          # The postal code.
          attr_accessor :postal_code
          # The state or province.
          attr_accessor :state

          def initialize(city: nil, country: nil, line1: nil, postal_code: nil, state: nil)
            @city = city
            @country = country
            @line1 = line1
            @postal_code = postal_code
            @state = state
          end
        end
        # The address to resolve.
        attr_accessor :address

        def initialize(address: nil)
          @address = address
        end
      end
    end
  end
end
