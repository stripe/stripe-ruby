# frozen_string_literal: true

module Stripe
  class ThreeDSecure < APIResource
    extend Stripe::APIOperations::Create

    OBJECT_NAME = 'three_d_secure'.freeze
  end
end
