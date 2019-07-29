# frozen_string_literal: true

module Stripe
  module Issuing
    class Dispute < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.dispute"
    end
  end
end
