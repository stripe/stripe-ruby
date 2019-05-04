# frozen_string_literal: true

module Stripe
  module Issuing
    class Transaction < APIResource
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.transaction".freeze
    end
  end
end
