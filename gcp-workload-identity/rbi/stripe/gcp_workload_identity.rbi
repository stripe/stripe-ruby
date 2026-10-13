# typed: strong

module Stripe
  module GcpWorkloadIdentity
    VERSION = T.let(T.unsafe(nil), String)
    AUDIENCE = T.let(T.unsafe(nil), String)

    class Error < StandardError; end

    class GcpWorkloadIdentity
      include ::Stripe::WorkloadIdentity::Provider

      sig { override.returns(String) }
      def provider; end

      sig { override.returns(String) }
      def identity_assertion; end
    end
  end
end
