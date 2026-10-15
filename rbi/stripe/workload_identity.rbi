# typed: strong

module Stripe
  module WorkloadIdentity
    # The shape of an identity provider accepted by
    # `Stripe::StripeClient.for_workload_identity`.
    module Provider
      extend T::Helpers
      interface!

      # The cloud provider this assertion comes from, e.g. "gcp".
      sig { abstract.returns(String) }
      def provider; end

      # Returns a fresh provider-signed identity assertion (a JWT) to be
      # exchanged with Stripe for a short-lived restricted key.
      sig { abstract.returns(String) }
      def identity_assertion; end
    end
  end
end
