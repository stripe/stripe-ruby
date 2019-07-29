# frozen_string_literal: true

module Stripe
  module Checkout
    class Session < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "checkout.session"
    end
  end
end
