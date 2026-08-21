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

    class Us < ::Stripe::RequestParams
      # Two-letter US state code (ISO 3166-2).
      attr_accessor :state

      def initialize(state: nil)
        @state = state
      end
    end
    # Canada-specific exemption details. Required when country is CA; must be absent otherwise.
    attr_accessor :ca
    # Two-letter ISO country code for the exemption location.
    attr_accessor :country
    # ISO 8601 date (YYYY-MM-DD) when the exemption becomes effective. Must be no more than one year after today's UTC date (inclusive).
    attr_accessor :effective_date
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # ISO 8601 date (YYYY-MM-DD) when the exemption expires.
    attr_accessor :expiration_date
    # US-specific exemption details. Required when country is US; must be absent otherwise.
    attr_accessor :us

    def initialize(
      ca: nil,
      country: nil,
      effective_date: nil,
      expand: nil,
      expiration_date: nil,
      us: nil
    )
      @ca = ca
      @country = country
      @effective_date = effective_date
      @expand = expand
      @expiration_date = expiration_date
      @us = us
    end
  end
end
