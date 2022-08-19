# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Identity
    # A VerificationSession guides you through the process of collecting and verifying the identities
    # of your users. It contains details about the type of verification, such as what [verification
    # check](https://stripe.com/docs/identity/verification-checks) to perform. Only create one VerificationSession for
    # each verification in your system.
    #
    # A VerificationSession transitions through [multiple
    # statuses](https://stripe.com/docs/identity/how-sessions-work) throughout its lifetime as it progresses through
    # the verification flow. The VerificationSession contains the user's verified data after
    # verification checks are complete.
    #
    # Related guide: [The Verification Sessions API](https://stripe.com/docs/identity/verification-sessions)
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
        request_stripe_object(
          method: :post,
          path: format("/v1/identity/verification_sessions/%<session>s/cancel", { session: CGI.escape(session) }),
          params: params,
          opts: opts
        )
      end

      def self.redact(session, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/identity/verification_sessions/%<session>s/redact", { session: CGI.escape(session) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
