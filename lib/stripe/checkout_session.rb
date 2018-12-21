# frozen_string_literal: true

module Stripe
  class CheckoutSession < APIResource
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "checkout_session".freeze
  end
end
