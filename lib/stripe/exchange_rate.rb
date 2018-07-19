# frozen_string_literal: true

module Stripe
  class ExchangeRate < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "exchange_rate".freeze
  end
end
