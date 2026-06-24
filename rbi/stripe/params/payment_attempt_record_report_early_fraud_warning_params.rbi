# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentAttemptRecordReportEarlyFraudWarningParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # The type of fraud reported in the early fraud warning.
    sig { returns(String) }
    def fraud_type; end
    sig { params(_fraud_type: String).returns(String) }
    def fraud_type=(_fraud_type); end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
     }
    def metadata=(_metadata); end
    # The time at which the early fraud warning was received.
    sig { returns(Integer) }
    def occurred_at; end
    sig { params(_occurred_at: Integer).returns(Integer) }
    def occurred_at=(_occurred_at); end
    sig {
      params(expand: T.nilable(T::Array[String]), fraud_type: String, metadata: T.nilable(T.any(String, T::Hash[String, String])), occurred_at: Integer).void
     }
    def initialize(expand: nil, fraud_type: nil, metadata: nil, occurred_at: nil); end
  end
end