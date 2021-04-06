# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __dir__)

module Stripe
  module Issuing
    class AuthorizationTest < Test::Unit::TestCase
      should "be listable" do
        authorizations = StripeClient.new.issuing.authorization.list
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/authorizations"
        assert authorizations.data.is_a?(Array)
        assert authorizations.data[0].is_a?(Stripe::Issuing::Authorization)
      end

      should "be retrievable" do
        authorization = StripeClient.new.issuing.authorization.retrieve("iauth_123")
        assert_requested :get, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_123"
        assert authorization.is_a?(Stripe::Issuing::Authorization)
      end

      should "be saveable" do
        authorization = StripeClient.new.issuing.authorization.retrieve("iauth_123")
        authorization.metadata["key"] = "value"
        authorization.save
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/#{authorization.id}"
        assert authorization.is_a?(Stripe::Issuing::Authorization)
      end

      should "be updateable" do
        authorization = StripeClient.new.issuing.authorization.update("iauth_123", metadata: { foo: "bar" })
        assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_123"
        assert authorization.is_a?(Stripe::Issuing::Authorization)
      end

      context ".approve" do
        should "approve an authorization" do
          payment_intent = StripeClient.new.issuing.authorization.approve("iauth_123")

          assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_123/approve"
          assert payment_intent.is_a?(Stripe::Issuing::Authorization)
        end
      end

      context "#approve" do
        should "approve an authorization" do
          authorization = StripeClient.new.issuing.authorization.retrieve("iauth_123")
          authorization.approve
          assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_123/approve"
          assert authorization.is_a?(Stripe::Issuing::Authorization)
        end
      end

      context ".decline" do
        should "decline an authorization" do
          payment_intent = StripeClient.new.issuing.authorization.decline("iauth_123")

          assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_123/decline"
          assert payment_intent.is_a?(Stripe::Issuing::Authorization)
        end
      end

      context "#decline" do
        should "decline an authorization" do
          authorization = StripeClient.new.issuing.authorization.retrieve("iauth_123")
          authorization.decline
          assert_requested :post, "#{Stripe.api_base}/v1/issuing/authorizations/iauth_123/decline"
          assert authorization.is_a?(Stripe::Issuing::Authorization)
        end
      end
    end
  end
end
