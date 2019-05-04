# frozen_string_literal: true

module Stripe
  class FeeRefund < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = 'fee_refund'.freeze
  end
end
