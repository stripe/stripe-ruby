# frozen_string_literal: true

module Stripe
  module Issuing
    class Cardholder < Stripe::APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.cardholder".freeze
    end
  end
end
