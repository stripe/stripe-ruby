# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentRecordReportPaymentAttemptFailedParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # When the reported payment failed. Measured in seconds since the Unix epoch.
    sig { returns(T.nilable(Integer)) }
    def failed_at; end
    sig { params(_failed_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def failed_at=(_failed_at); end
    # The failure code for this payment attempt. Must be one of `payment_method_customer_decline` or `payment_method_provider_unknown_outcome`.
    sig { returns(T.nilable(String)) }
    def failure_code; end
    sig { params(_failure_code: T.nilable(String)).returns(T.nilable(String)) }
    def failure_code=(_failure_code); end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
     }
    def metadata=(_metadata); end
    sig {
      params(expand: T.nilable(T::Array[String]), failed_at: T.nilable(Integer), failure_code: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
     }
    def initialize(expand: nil, failed_at: nil, failure_code: nil, metadata: nil); end
  end
end