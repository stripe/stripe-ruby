module Stripe
  class CountrySpec < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = 'country_spec'

    def self.resource_url
      '/v1/country_specs'
    end
  end
end
