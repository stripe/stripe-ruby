# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Identity
    class VerificationSession < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "identity.verification_session"

      def cancel(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/identity/verification_sessions/%<session>s/cancel", { session: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def redact(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/identity/verification_sessions/%<session>s/redact", { session: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def self.cancel(session, params = {}, opts = {})
        resp, opts = execute_resource_request(
          :post,
          format("/v1/identity/verification_sessions/%<session>s/cancel", { session: CGI.escape(session) }),
          params,
          opts
        )
        Util.convert_to_stripe_object(resp.data, opts)
      end

      def self.redact(session, params = {}, opts = {})
        resp, opts = execute_resource_request(
          :post,
          format("/v1/identity/verification_sessions/%<session>s/redact", { session: CGI.escape(session) }),
          params,
          opts
        )
        Util.convert_to_stripe_object(resp.data, opts)
      end
    end
  end
end
