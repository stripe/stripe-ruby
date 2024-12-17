# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # Indicates the billing credit balance for billing credits granted to a customer.
    class CreditBalanceSummary < SingletonAPIResource
      OBJECT_NAME = "billing.credit_balance_summary"
      def self.object_name
        "billing.credit_balance_summary"
      end

      class Balance < Stripe::StripeObject
        class AvailableBalance < Stripe::StripeObject
          class Monetary < Stripe::StripeObject
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_reader :currency
            # A positive integer representing the amount.
            attr_reader :value
          end
          # The monetary amount.
          attr_reader :monetary
          # The type of this amount. We currently only support `monetary` billing credits.
          attr_reader :type
        end

        class LedgerBalance < Stripe::StripeObject
          class Monetary < Stripe::StripeObject
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_reader :currency
            # A positive integer representing the amount.
            attr_reader :value
          end
          # The monetary amount.
          attr_reader :monetary
          # The type of this amount. We currently only support `monetary` billing credits.
          attr_reader :type
        end
        # Attribute for field available_balance
        attr_reader :available_balance
        # Attribute for field ledger_balance
        attr_reader :ledger_balance
      end

      class RetrieveParams < Stripe::RequestParams
        class Filter < Stripe::RequestParams
          class ApplicabilityScope < Stripe::RequestParams
            # The price type that credit grants can apply to. We currently only support the `metered` price type.
            attr_accessor :price_type

            def initialize(price_type: nil)
              @price_type = price_type
            end
          end
          # The billing credit applicability scope for which to fetch credit balance summary.
          attr_accessor :applicability_scope
          # The credit grant for which to fetch credit balance summary.
          attr_accessor :credit_grant
          # Specify the type of this filter.
          attr_accessor :type

          def initialize(applicability_scope: nil, credit_grant: nil, type: nil)
            @applicability_scope = applicability_scope
            @credit_grant = credit_grant
            @type = type
          end
        end
        # The customer for which to fetch credit balance summary.
        attr_accessor :customer
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The filter criteria for the credit balance summary.
        attr_accessor :filter

        def initialize(customer: nil, expand: nil, filter: nil)
          @customer = customer
          @expand = expand
          @filter = filter
        end
      end
      # The billing credit balances. One entry per credit grant currency. If a customer only has credit grants in a single currency, then this will have a single balance entry.
      attr_reader :balances
      # The customer the balance is for.
      attr_reader :customer
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
    end
  end
end
