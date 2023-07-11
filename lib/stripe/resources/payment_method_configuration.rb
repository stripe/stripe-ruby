# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # An object detailing payment method configurations.
  class PaymentMethodConfiguration < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "payment_method_configuration"
  end
end
