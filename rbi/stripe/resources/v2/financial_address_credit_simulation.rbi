# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    class FinancialAddressCreditSimulation < APIResource
      # String representing the object's type. Objects of the same type share the same value of the object field.
      sig { returns(String) }
      attr_reader :object
      # The status of the request, signifying whether a simulated credit was initiated.
      sig { returns(String) }
      attr_reader :status
    end
  end
end