# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    # Indicates the billing credit balance for billing credits granted to a customer.
    class CreditBalanceSummary < SingletonAPIResource
      class Balance < Stripe::StripeObject
        class AvailableBalance < Stripe::StripeObject
          class Monetary < Stripe::StripeObject
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_reader :currency

            # A positive integer representing the amount.
            sig { returns(Integer) }
            attr_reader :value
          end
          # The monetary amount.
          sig { returns(T.nilable(Monetary)) }
          attr_reader :monetary

          # The type of this amount. We currently only support `monetary` billing credits.
          sig { returns(String) }
          attr_reader :type
        end
        class LedgerBalance < Stripe::StripeObject
          class Monetary < Stripe::StripeObject
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_reader :currency

            # A positive integer representing the amount.
            sig { returns(Integer) }
            attr_reader :value
          end
          # The monetary amount.
          sig { returns(T.nilable(Monetary)) }
          attr_reader :monetary

          # The type of this amount. We currently only support `monetary` billing credits.
          sig { returns(String) }
          attr_reader :type
        end
        # Attribute for field available_balance
        sig { returns(AvailableBalance) }
        attr_reader :available_balance

        # Attribute for field ledger_balance
        sig { returns(LedgerBalance) }
        attr_reader :ledger_balance
      end
      # The billing credit balances. One entry per credit grant currency. If a customer only has credit grants in a single currency, then this will have a single balance entry.
      sig { returns(T::Array[Balance]) }
      attr_reader :balances

      # The customer the balance is for.
      sig { returns(T.any(String, Stripe::Customer)) }
      attr_reader :customer

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      class RetrieveParams < Stripe::RequestParams
        class Filter < Stripe::RequestParams
          class ApplicabilityScope < Stripe::RequestParams
            # The price type that credit grants can apply to. We currently only support the `metered` price type.
            sig { returns(String) }
            attr_accessor :price_type

            sig { params(price_type: String).void }
            def initialize(price_type: nil); end
          end
          # The billing credit applicability scope for which to fetch credit balance summary.
          sig {
            returns(::Stripe::Billing::CreditBalanceSummary::RetrieveParams::Filter::ApplicabilityScope)
           }
          attr_accessor :applicability_scope

          # The credit grant for which to fetch credit balance summary.
          sig { returns(String) }
          attr_accessor :credit_grant

          # Specify the type of this filter.
          sig { returns(String) }
          attr_accessor :type

          sig {
            params(applicability_scope: ::Stripe::Billing::CreditBalanceSummary::RetrieveParams::Filter::ApplicabilityScope, credit_grant: String, type: String).void
           }
          def initialize(applicability_scope: nil, credit_grant: nil, type: nil); end
        end
        # The customer for which to fetch credit balance summary.
        sig { returns(String) }
        attr_accessor :customer

        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        # The filter criteria for the credit balance summary.
        sig { returns(::Stripe::Billing::CreditBalanceSummary::RetrieveParams::Filter) }
        attr_accessor :filter

        sig {
          params(customer: String, expand: T::Array[String], filter: ::Stripe::Billing::CreditBalanceSummary::RetrieveParams::Filter).void
         }
        def initialize(customer: nil, expand: nil, filter: nil); end
      end
    end
  end
end