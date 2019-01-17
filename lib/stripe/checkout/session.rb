# frozen_string_literal: true

module Stripe
  module Checkout
    class Session < Stripe::APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "checkout.session".freeze
    end
  end
end
