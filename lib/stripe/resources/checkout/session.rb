# frozen_string_literal: true

module Stripe
  module Checkout
    class Session < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "checkout.session"
    end
  end
end
