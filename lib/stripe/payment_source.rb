# frozen_string_literal: true

module Stripe
  class PaymentSource < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List

    OBJECT_NAME = 'payment_source'.freeze
  end
end
