# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Stripe needs to collect certain pieces of information about each account
  # created. These requirements can differ depending on the account's country. The
  # Country Specs API makes these rules available to your integration.
  #
  # You can also view the information from this API call as [an online
  # guide](https://stripe.com/docs/connect/required-verification-information).
  class CountrySpec < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "country_spec"

    # Lists all Country Spec objects available in the API.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/country_specs", params: filters, opts: opts)
    end
  end
end
