# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Tax
      class IntegrationConfigurationUpdateParams < ::Stripe::RequestParams
        class CheckoutSessions < ::Stripe::RequestParams
          # Controls the default value of automatic_tax[enabled] on new Checkout Sessions.
          attr_accessor :automatic_tax_default_value

          def initialize(automatic_tax_default_value: nil)
            @automatic_tax_default_value = automatic_tax_default_value
          end
        end

        class Invoices < ::Stripe::RequestParams
          # Controls the default value of automatic_tax[enabled] on new standalone Invoices.
          attr_accessor :automatic_tax_default_value

          def initialize(automatic_tax_default_value: nil)
            @automatic_tax_default_value = automatic_tax_default_value
          end
        end
        # Configuration for Checkout Sessions automatic tax behavior.
        attr_accessor :checkout_sessions
        # Configuration for standalone Invoices automatic tax behavior.
        attr_accessor :invoices

        def initialize(checkout_sessions: nil, invoices: nil)
          @checkout_sessions = checkout_sessions
          @invoices = invoices
        end
      end
    end
  end
end
