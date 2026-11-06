# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class CustomerTaxExemptionCreateParams < ::Stripe::RequestParams
    class Ca < ::Stripe::RequestParams
      # Two-letter Canadian province code (ISO 3166-2). Required when tax_type is pst, qst, or rst.
      sig { returns(T.nilable(String)) }
      def state; end
      sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
      def state=(_state); end
      # The type of Canadian tax (gst_hst, PST, QST, RST).
      sig { returns(String) }
      def tax_type; end
      sig { params(_tax_type: String).returns(String) }
      def tax_type=(_tax_type); end
      sig { params(state: T.nilable(String), tax_type: String).void }
      def initialize(state: nil, tax_type: nil); end
    end
    class Es < ::Stripe::RequestParams
      # Two-letter Spanish subdivision code (ISO 3166-2).
      sig { returns(String) }
      def state; end
      sig { params(_state: String).returns(String) }
      def state=(_state); end
      sig { params(state: String).void }
      def initialize(state: nil); end
    end
    class ReasonDetails < ::Stripe::RequestParams
      class Other < ::Stripe::RequestParams
        # A free-text description of the exemption reason. Maximum 5000 characters.
        sig { returns(String) }
        def reason_text; end
        sig { params(_reason_text: String).returns(String) }
        def reason_text=(_reason_text); end
        sig { params(reason_text: String).void }
        def initialize(reason_text: nil); end
      end
      # Details for the `other` exemption reason.
      sig { returns(T.nilable(::Stripe::CustomerTaxExemptionCreateParams::ReasonDetails::Other)) }
      def other; end
      sig {
        params(_other: T.nilable(::Stripe::CustomerTaxExemptionCreateParams::ReasonDetails::Other)).returns(T.nilable(::Stripe::CustomerTaxExemptionCreateParams::ReasonDetails::Other))
       }
      def other=(_other); end
      sig {
        params(other: T.nilable(::Stripe::CustomerTaxExemptionCreateParams::ReasonDetails::Other)).void
       }
      def initialize(other: nil); end
    end
    class Us < ::Stripe::RequestParams
      # Two-letter US state code (ISO 3166-2).
      sig { returns(String) }
      def state; end
      sig { params(_state: String).returns(String) }
      def state=(_state); end
      # The group of tax codes this exemption applies to. Defaults to `all`. `saas` is only available when `state` is `CA`.
      sig { returns(T.nilable(String)) }
      def tax_code_group; end
      sig { params(_tax_code_group: T.nilable(String)).returns(T.nilable(String)) }
      def tax_code_group=(_tax_code_group); end
      sig { params(state: String, tax_code_group: T.nilable(String)).void }
      def initialize(state: nil, tax_code_group: nil); end
    end
    # Canada-specific exemption details. Required when country is CA; must be absent otherwise.
    sig { returns(T.nilable(::Stripe::CustomerTaxExemptionCreateParams::Ca)) }
    def ca; end
    sig {
      params(_ca: T.nilable(::Stripe::CustomerTaxExemptionCreateParams::Ca)).returns(T.nilable(::Stripe::CustomerTaxExemptionCreateParams::Ca))
     }
    def ca=(_ca); end
    # Two-letter ISO country code for the exemption location.
    sig { returns(String) }
    def country; end
    sig { params(_country: String).returns(String) }
    def country=(_country); end
    # ISO 8601 date (YYYY-MM-DD) when the exemption becomes effective. Must be no more than one year after today's UTC date (inclusive).
    sig { returns(String) }
    def effective_date; end
    sig { params(_effective_date: String).returns(String) }
    def effective_date=(_effective_date); end
    # Spain-specific exemption details. Optional when country is ES; must be absent otherwise.
    sig { returns(T.nilable(::Stripe::CustomerTaxExemptionCreateParams::Es)) }
    def es; end
    sig {
      params(_es: T.nilable(::Stripe::CustomerTaxExemptionCreateParams::Es)).returns(T.nilable(::Stripe::CustomerTaxExemptionCreateParams::Es))
     }
    def es=(_es); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # ISO 8601 date (YYYY-MM-DD) when the exemption expires.
    sig { returns(T.nilable(String)) }
    def expiration_date; end
    sig { params(_expiration_date: T.nilable(String)).returns(T.nilable(String)) }
    def expiration_date=(_expiration_date); end
    # The reason the customer is exempt. Required when `us.tax_code_group` is `saas`.
    sig { returns(T.nilable(String)) }
    def reason; end
    sig { params(_reason: T.nilable(String)).returns(T.nilable(String)) }
    def reason=(_reason); end
    # Additional details about the exemption reason.
    sig { returns(T.nilable(::Stripe::CustomerTaxExemptionCreateParams::ReasonDetails)) }
    def reason_details; end
    sig {
      params(_reason_details: T.nilable(::Stripe::CustomerTaxExemptionCreateParams::ReasonDetails)).returns(T.nilable(::Stripe::CustomerTaxExemptionCreateParams::ReasonDetails))
     }
    def reason_details=(_reason_details); end
    # US-specific exemption details. Required when country is US; must be absent otherwise.
    sig { returns(T.nilable(::Stripe::CustomerTaxExemptionCreateParams::Us)) }
    def us; end
    sig {
      params(_us: T.nilable(::Stripe::CustomerTaxExemptionCreateParams::Us)).returns(T.nilable(::Stripe::CustomerTaxExemptionCreateParams::Us))
     }
    def us=(_us); end
    sig {
      params(ca: T.nilable(::Stripe::CustomerTaxExemptionCreateParams::Ca), country: String, effective_date: String, es: T.nilable(::Stripe::CustomerTaxExemptionCreateParams::Es), expand: T.nilable(T::Array[String]), expiration_date: T.nilable(String), reason: T.nilable(String), reason_details: T.nilable(::Stripe::CustomerTaxExemptionCreateParams::ReasonDetails), us: T.nilable(::Stripe::CustomerTaxExemptionCreateParams::Us)).void
     }
    def initialize(
      ca: nil,
      country: nil,
      effective_date: nil,
      es: nil,
      expand: nil,
      expiration_date: nil,
      reason: nil,
      reason_details: nil,
      us: nil
    ); end
  end
end