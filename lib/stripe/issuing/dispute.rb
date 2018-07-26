# frozen_string_literal: true

module Stripe
  module Issuing
    class Dispute < Stripe::APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.dispute".freeze
    end
  end
end
