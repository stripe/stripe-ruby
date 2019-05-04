# frozen_string_literal: true

module Stripe
  class ApplePayDomain < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List

    OBJECT_NAME = 'apple_pay_domain'.freeze
  end
end
