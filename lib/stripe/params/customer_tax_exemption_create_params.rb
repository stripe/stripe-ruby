# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CustomerTaxExemptionCreateParams < ::Stripe::RequestParams
    class Ca < ::Stripe::RequestParams
      # Two-letter Canadian province code (ISO 3166-2). Required when tax_type is pst, qst, or rst.
      attr_accessor :state
      # The type of Canadian tax (gst_hst, PST, QST, RST).
      attr_accessor :tax_type

      def initialize(state: nil, tax_type: nil)
        @state = state
        @tax_type = tax_type
      end
    end

    class Es < ::Stripe::RequestParams
      # Two-letter Spanish subdivision code (ISO 3166-2).
      attr_accessor :state

      def initialize(state: nil)
        @state = state
      end
    end

    class ReasonDetails < ::Stripe::RequestParams
      class Other < ::Stripe::RequestParams
        # A free-text description of the exemption reason. Maximum 5000 characters.
        attr_accessor :reason_text

        def initialize(reason_text: nil)
          @reason_text = reason_text
        end
      end
      # Details for the `other` exemption reason.
      attr_accessor :other

      def initialize(other: nil)
        @other = other
      end
    end

    class Us < ::Stripe::RequestParams
      # Two-letter US state code (ISO 3166-2).
      attr_accessor :state
      # The group of tax codes this exemption applies to. Defaults to `all`. `saas` is only available when `state` is `CA`.
      attr_accessor :tax_code_group

      def initialize(state: nil, tax_code_group: nil)
        @state = state
        @tax_code_group = tax_code_group
      end
    end
    # Canada-specific exemption details. Required when country is CA; must be absent otherwise.
    attr_accessor :ca
    # Two-letter ISO country code for the exemption location.
    attr_accessor :country
    # ISO 8601 date (YYYY-MM-DD) when the exemption becomes effective. Must be no more than one year after today's UTC date (inclusive).
    attr_accessor :effective_date
    # Spain-specific exemption details. Optional when country is ES; must be absent otherwise.
    attr_accessor :es
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # ISO 8601 date (YYYY-MM-DD) when the exemption expires.
    attr_accessor :expiration_date
    # The reason the customer is exempt. Required when `us.tax_code_group` is `saas`.
    attr_accessor :reason
    # Additional details about the exemption reason.
    attr_accessor :reason_details
    # US-specific exemption details. Required when country is US; must be absent otherwise.
    attr_accessor :us

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
    )
      @ca = ca
      @country = country
      @effective_date = effective_date
      @es = es
      @expand = expand
      @expiration_date = expiration_date
      @reason = reason
      @reason_details = reason_details
      @us = us
    end
  end
end
