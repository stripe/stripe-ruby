# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __dir__)

module EwStripe
  module Issuing
    class AuthorizationTest < Test::Unit::TestCase
      should "be listable" do
        authorizations = EwStripe::Issuing::Authorization.list
        assert_requested :get, "#{EwStripe.api_base}/v1/issuing/authorizations"
        assert authorizations.data.is_a?(Array)
        assert authorizations.data[0].is_a?(EwStripe::Issuing::Authorization)
      end

      should "be retrievable" do
        authorization = EwStripe::Issuing::Authorization.retrieve("iauth_123")
        assert_requested :get, "#{EwStripe.api_base}/v1/issuing/authorizations/iauth_123"
        assert authorization.is_a?(EwStripe::Issuing::Authorization)
      end

      should "be saveable" do
        authorization = EwStripe::Issuing::Authorization.retrieve("iauth_123")
        authorization.metadata["key"] = "value"
        authorization.save
        assert_requested :post, "#{EwStripe.api_base}/v1/issuing/authorizations/#{authorization.id}"
        assert authorization.is_a?(EwStripe::Issuing::Authorization)
      end

      should "be updateable" do
        authorization = EwStripe::Issuing::Authorization.update("iauth_123", metadata: { foo: "bar" })
        assert_requested :post, "#{EwStripe.api_base}/v1/issuing/authorizations/iauth_123"
        assert authorization.is_a?(EwStripe::Issuing::Authorization)
      end

      context ".approve" do
        should "approve an authorization" do
          payment_intent = EwStripe::Issuing::Authorization.approve("iauth_123")

          assert_requested :post, "#{EwStripe.api_base}/v1/issuing/authorizations/iauth_123/approve"
          assert payment_intent.is_a?(EwStripe::Issuing::Authorization)
        end
      end

      context "#approve" do
        should "approve an authorization" do
          authorization = EwStripe::Issuing::Authorization.retrieve("iauth_123")
          authorization.approve
          assert_requested :post, "#{EwStripe.api_base}/v1/issuing/authorizations/iauth_123/approve"
          assert authorization.is_a?(EwStripe::Issuing::Authorization)
        end
      end

      context ".decline" do
        should "decline an authorization" do
          payment_intent = EwStripe::Issuing::Authorization.decline("iauth_123")

          assert_requested :post, "#{EwStripe.api_base}/v1/issuing/authorizations/iauth_123/decline"
          assert payment_intent.is_a?(EwStripe::Issuing::Authorization)
        end
      end

      context "#decline" do
        should "decline an authorization" do
          authorization = EwStripe::Issuing::Authorization.retrieve("iauth_123")
          authorization.decline
          assert_requested :post, "#{EwStripe.api_base}/v1/issuing/authorizations/iauth_123/decline"
          assert authorization.is_a?(EwStripe::Issuing::Authorization)
        end
      end
    end
  end
end
