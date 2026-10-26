# typed: strong

module Stripe
  module WorkloadIdentity
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

    class AwsWorkloadIdentity
      include ::Stripe::WorkloadIdentity::Provider

      DEFAULT_SIGNING_ALGORITHM = T.let(T.unsafe(nil), String)

      sig { params(audience: String, signing_algorithm: String, sts_client_options: T.untyped).void }
      def initialize(audience: AUDIENCE, signing_algorithm: DEFAULT_SIGNING_ALGORITHM, **sts_client_options); end

      sig { override.returns(String) }
      def provider; end

      sig { override.returns(String) }
      def identity_assertion; end
    end
  end
end
