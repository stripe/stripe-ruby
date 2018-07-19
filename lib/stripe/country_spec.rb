# frozen_string_literal: true

module Stripe
  class CountrySpec < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "country_spec".freeze
  end
end
