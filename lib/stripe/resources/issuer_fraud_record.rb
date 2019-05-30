# frozen_string_literal: true

module Stripe
  class IssuerFraudRecord < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "issuer_fraud_record".freeze
  end
end
