# frozen_string_literal: true

module Stripe
  class IssuerFraudRecord < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "issuer_fraud_record".freeze

    def self.resource_url
      "/v1/issuer_fraud_records"
    end
  end
end
