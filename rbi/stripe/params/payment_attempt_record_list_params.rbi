# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentAttemptRecordListParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    sig { returns(T.nilable(Integer)) }
    def limit; end
    sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def limit=(_limit); end
    # The ID of the Payment Record.
    sig { returns(String) }
    def payment_record; end
    sig { params(_payment_record: String).returns(String) }
    def payment_record=(_payment_record); end
    sig {
      params(expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), payment_record: String).void
     }
    def initialize(expand: nil, limit: nil, payment_record: nil); end
  end
end