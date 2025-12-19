# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class LocationService < StripeService
      # Create a tax location to use in calculating taxes for a service, ticket, or other type of product. The resulting object contains the id, address, name, description, and current operational status of the tax location.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/tax/locations",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieve a list of all tax locations. Tax locations can represent the venues for services, tickets, or other product types.
      #
      # The response includes detailed information for each tax location, such as its address, name, description, and current operational status.
      #
      # You can paginate through the list by using the limit parameter to control the number of results returned in each request.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/tax/locations",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Fetch the details of a specific tax location using its unique identifier. Use a tax location to calculate taxes based on the location of the end product, such as a performance, instead of the customer address. For more details, check the [integration guide](https://docs.stripe.com/tax/tax-for-tickets/integration-guide).
      def retrieve(location, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/tax/locations/%<location>s", { location: CGI.escape(location) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
