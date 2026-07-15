# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentRecordCreateParams < ::Stripe::RequestParams
    class Amount < ::Stripe::RequestParams
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      sig { params(_currency: String).returns(String) }
      def currency=(_currency); end
      # A positive integer representing the amount in the currency's [minor unit](https://docs.stripe.com/currencies#zero-decimal). For example, `100` can represent 1 USD or 100 JPY.
      sig { returns(Integer) }
      def value; end
      sig { params(_value: Integer).returns(Integer) }
      def value=(_value); end
      sig { params(currency: String, value: Integer).void }
      def initialize(currency: nil, value: nil); end
    end
    class Closed < ::Stripe::RequestParams
      # When the dispute was closed. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def closed_at; end
      sig { params(_closed_at: Integer).returns(Integer) }
      def closed_at=(_closed_at); end
      sig { params(closed_at: Integer).void }
      def initialize(closed_at: nil); end
    end
    class Funded < ::Stripe::RequestParams
      class Amount < ::Stripe::RequestParams
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        # A positive integer representing the amount in the currency's [minor unit](https://docs.stripe.com/currencies#zero-decimal). For example, `100` can represent 1 USD or 100 JPY.
        sig { returns(Integer) }
        def value; end
        sig { params(_value: Integer).returns(Integer) }
        def value=(_value); end
        sig { params(currency: String, value: Integer).void }
        def initialize(currency: nil, value: nil); end
      end
      # The amount that has been lost to the customer due to disputes on this payment.
      sig { returns(::Stripe::PaymentRecordCreateParams::Funded::Amount) }
      def amount; end
      sig {
        params(_amount: ::Stripe::PaymentRecordCreateParams::Funded::Amount).returns(::Stripe::PaymentRecordCreateParams::Funded::Amount)
       }
      def amount=(_amount); end
      # When the dispute funding event occurred. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def funded_at; end
      sig { params(_funded_at: Integer).returns(Integer) }
      def funded_at=(_funded_at); end
      # The type of dispute funding event.
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig {
        params(amount: ::Stripe::PaymentRecordCreateParams::Funded::Amount, funded_at: Integer, type: String).void
       }
      def initialize(amount: nil, funded_at: nil, type: nil); end
    end
    class ProcessorDetails < ::Stripe::RequestParams
      class Custom < ::Stripe::RequestParams
        # A reference to the external dispute. This field must be unique across all disputes.
        sig { returns(String) }
        def dispute_reference; end
        sig { params(_dispute_reference: String).returns(String) }
        def dispute_reference=(_dispute_reference); end
        sig { params(dispute_reference: String).void }
        def initialize(dispute_reference: nil); end
      end
      # Information about the custom processor used to make this payment.
      sig { returns(T.nilable(::Stripe::PaymentRecordCreateParams::ProcessorDetails::Custom)) }
      def custom; end
      sig {
        params(_custom: T.nilable(::Stripe::PaymentRecordCreateParams::ProcessorDetails::Custom)).returns(T.nilable(::Stripe::PaymentRecordCreateParams::ProcessorDetails::Custom))
       }
      def custom=(_custom); end
      # The type of the processor details. An additional hash is included on processor_details with a name matching this value. It contains additional information specific to the processor.
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig {
        params(custom: T.nilable(::Stripe::PaymentRecordCreateParams::ProcessorDetails::Custom), type: String).void
       }
      def initialize(custom: nil, type: nil); end
    end
    # The amount that has been lost to the customer due to disputes on this payment.
    sig { returns(::Stripe::PaymentRecordCreateParams::Amount) }
    def amount; end
    sig {
      params(_amount: ::Stripe::PaymentRecordCreateParams::Amount).returns(::Stripe::PaymentRecordCreateParams::Amount)
     }
    def amount=(_amount); end
    # Information about the dispute closing.
    sig { returns(::Stripe::PaymentRecordCreateParams::Closed) }
    def closed; end
    sig {
      params(_closed: ::Stripe::PaymentRecordCreateParams::Closed).returns(::Stripe::PaymentRecordCreateParams::Closed)
     }
    def closed=(_closed); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # Information about the dispute funding event.
    sig { returns(::Stripe::PaymentRecordCreateParams::Funded) }
    def funded; end
    sig {
      params(_funded: ::Stripe::PaymentRecordCreateParams::Funded).returns(::Stripe::PaymentRecordCreateParams::Funded)
     }
    def funded=(_funded); end
    # When the reported payment was initiated. Measured in seconds since the Unix epoch.
    sig { returns(T.nilable(Integer)) }
    def initiated_at; end
    sig { params(_initiated_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def initiated_at=(_initiated_at); end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
     }
    def metadata=(_metadata); end
    # Processor information for this payment.
    sig { returns(::Stripe::PaymentRecordCreateParams::ProcessorDetails) }
    def processor_details; end
    sig {
      params(_processor_details: ::Stripe::PaymentRecordCreateParams::ProcessorDetails).returns(::Stripe::PaymentRecordCreateParams::ProcessorDetails)
     }
    def processor_details=(_processor_details); end
    # The reason the payment was disputed.
    sig { returns(T.nilable(String)) }
    def reason; end
    sig { params(_reason: T.nilable(String)).returns(T.nilable(String)) }
    def reason=(_reason); end
    sig {
      params(amount: ::Stripe::PaymentRecordCreateParams::Amount, closed: ::Stripe::PaymentRecordCreateParams::Closed, expand: T.nilable(T::Array[String]), funded: ::Stripe::PaymentRecordCreateParams::Funded, initiated_at: T.nilable(Integer), metadata: T.nilable(T.any(String, T::Hash[String, String])), processor_details: ::Stripe::PaymentRecordCreateParams::ProcessorDetails, reason: T.nilable(String)).void
     }
    def initialize(
      amount: nil,
      closed: nil,
      expand: nil,
      funded: nil,
      initiated_at: nil,
      metadata: nil,
      processor_details: nil,
      reason: nil
    ); end
  end
end