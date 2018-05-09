module Stripe
  class IssuerFraudRecord < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "issuer_fraud_record".freeze

    def self.from_charge(params, opts = {})
      resp, opts = request(:get, from_charge_url, params, opts)
      resp.data
    end

    def self.from_charge_url
      resource_url
    end
    private_class_method :from_charge_url

    def self.resource_url
      "/v1/issuer_fraud_records"
    end
  end
end