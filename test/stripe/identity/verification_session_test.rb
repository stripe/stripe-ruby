# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __dir__)

module Stripe
  module Identity
    class VerificationSessionTest < Test::Unit::TestCase
      should "be listable" do
        verification_sessions = Stripe::Identity::VerificationSession.list
        assert_requested :get, "#{Stripe.api_base}/v1/identity/verification_sessions"
        assert verification_sessions.data.is_a?(Array)
        assert verification_sessions.data[0].is_a?(Stripe::Identity::VerificationSession)
      end

      should "be retrievable" do
        verification_session = Stripe::Identity::VerificationSession.retrieve("vs_123")
        assert_requested :get, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_123"
        assert verification_session.is_a?(Stripe::Identity::VerificationSession)
      end

      should "be saveable" do
        verification_session = Stripe::Identity::VerificationSession.retrieve("vs_123")
        verification_session.metadata["key"] = "value"
        verification_session.save
        assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions/#{verification_session.id}"
        assert verification_session.is_a?(Stripe::Identity::VerificationSession)
      end

      should "be updateable" do
        verification_session = Stripe::Identity::VerificationSession.update("vs_123", metadata: { foo: "bar" })
        assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_123"
        assert verification_session.is_a?(Stripe::Identity::VerificationSession)
      end

      context ".cancel" do
        should "cancel an verification_session" do
          payment_intent = Stripe::Identity::VerificationSession.cancel("vs_123")

          assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_123/cancel"
          assert payment_intent.is_a?(Stripe::Identity::VerificationSession)
        end
      end

      context "#cancel" do
        should "cancel an verification_session" do
          verification_session = Stripe::Identity::VerificationSession.retrieve("vs_123")
          verification_session.cancel
          assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_123/cancel"
          assert verification_session.is_a?(Stripe::Identity::VerificationSession)
        end
      end

      context ".redact" do
        should "redact an verification_session" do
          payment_intent = Stripe::Identity::VerificationSession.redact("vs_123")

          assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_123/redact"
          assert payment_intent.is_a?(Stripe::Identity::VerificationSession)
        end
      end

      context "#redact" do
        should "redact an verification_session" do
          verification_session = Stripe::Identity::VerificationSession.retrieve("vs_123")
          verification_session.redact
          assert_requested :post, "#{Stripe.api_base}/v1/identity/verification_sessions/vs_123/redact"
          assert verification_session.is_a?(Stripe::Identity::VerificationSession)
        end
      end
    end
  end
end
