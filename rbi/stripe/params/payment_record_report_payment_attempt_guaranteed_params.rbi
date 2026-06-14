# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentRecordReportPaymentAttemptGuaranteedParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # When the reported payment was guaranteed. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def guaranteed_at; end
    sig { params(_guaranteed_at: Integer).returns(Integer) }
    def guaranteed_at=(_guaranteed_at); end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
     }
    def metadata=(_metadata); end
    sig {
      params(expand: T.nilable(T::Array[String]), guaranteed_at: Integer, metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
     }
    def initialize(expand: nil, guaranteed_at: nil, metadata: nil); end
  end
end