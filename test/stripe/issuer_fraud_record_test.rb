# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class IssuerFraudRecordTest < Test::Unit::TestCase
    should "be listable" do
      issfrs = Stripe::IssuerFraudRecord.list
      assert_requested :get, "#{Stripe.api_base}/v1/issuer_fraud_records"
      assert issfrs.data.is_a?(Array)
      assert issfrs.data[0].is_a?(Stripe::IssuerFraudRecord)
    end

    should "be retrievable" do
      issfr = Stripe::IssuerFraudRecord.retrieve("issfr_123")
      assert_requested :get, "#{Stripe.api_base}/v1/issuer_fraud_records/issfr_123"
      assert issfr.is_a?(Stripe::IssuerFraudRecord)
    end
  end
end
