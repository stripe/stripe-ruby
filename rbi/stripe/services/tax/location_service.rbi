# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class LocationService < StripeService
      # Create a tax location to use in calculating taxes for a service, ticket, or other type of product. The resulting object contains the id, address, name, description, and current operational status of the tax location.
      sig {
        params(params: T.any(::Stripe::Tax::LocationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Tax::Location)
       }
      def create(params = {}, opts = {}); end

      # Retrieve a list of all tax locations. Tax locations can represent the venues for services, tickets, or other product types.
      #
      # The response includes detailed information for each tax location, such as its address, name, description, and current operational status.
      #
      # You can paginate through the list by using the limit parameter to control the number of results returned in each request.
      sig {
        params(params: T.any(::Stripe::Tax::LocationListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Fetch the details of a specific tax location using its unique identifier. Use a tax location to calculate taxes based on the location of the end product, such as a performance, instead of the customer address. For more details, check the [integration guide](https://docs.stripe.com/tax/tax-for-tickets/integration-guide).
      sig {
        params(location: String, params: T.any(::Stripe::Tax::LocationRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Tax::Location)
       }
      def retrieve(location, params = {}, opts = {}); end
    end
  end
end