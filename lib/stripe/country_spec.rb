module Stripe
  class CountrySpec < APIResource
    extend Stripe::APIOperations::List

    def self.url
      '/v1/country_specs'
    end
  end
end
