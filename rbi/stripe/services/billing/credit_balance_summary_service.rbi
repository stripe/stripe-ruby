# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    class CreditBalanceSummaryService < StripeService
      class RetrieveParams < Stripe::RequestParams
        class Filter < Stripe::RequestParams
          class ApplicabilityScope < Stripe::RequestParams
            class Price < Stripe::RequestParams
              # The price ID this credit grant should apply to.
              sig { returns(String) }
              def id; end
              sig { params(_id: String).returns(String) }
              def id=(_id); end
              sig { params(id: String).void }
              def initialize(id: nil); end
            end
            # The price type that credit grants can apply to. We currently only support the `metered` price type. Cannot be used in combination with `prices`.
            sig { returns(T.nilable(String)) }
            def price_type; end
            sig { params(_price_type: T.nilable(String)).returns(T.nilable(String)) }
            def price_type=(_price_type); end
            # A list of prices that the credit grant can apply to. We currently only support the `metered` prices. Cannot be used in combination with `price_type`.
            sig {
              returns(T.nilable(T::Array[::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter::ApplicabilityScope::Price]))
             }
            def prices; end
            sig {
              params(_prices: T.nilable(T::Array[::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter::ApplicabilityScope::Price])).returns(T.nilable(T::Array[::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter::ApplicabilityScope::Price]))
             }
            def prices=(_prices); end
            sig {
              params(price_type: T.nilable(String), prices: T.nilable(T::Array[::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter::ApplicabilityScope::Price])).void
             }
            def initialize(price_type: nil, prices: nil); end
          end
          # The billing credit applicability scope for which to fetch credit balance summary.
          sig {
            returns(T.nilable(::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter::ApplicabilityScope))
           }
          def applicability_scope; end
          sig {
            params(_applicability_scope: T.nilable(::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter::ApplicabilityScope)).returns(T.nilable(::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter::ApplicabilityScope))
           }
          def applicability_scope=(_applicability_scope); end
          # The credit grant for which to fetch credit balance summary.
          sig { returns(T.nilable(String)) }
          def credit_grant; end
          sig { params(_credit_grant: T.nilable(String)).returns(T.nilable(String)) }
          def credit_grant=(_credit_grant); end
          # Specify the type of this filter.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(applicability_scope: T.nilable(::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter::ApplicabilityScope), credit_grant: T.nilable(String), type: String).void
           }
          def initialize(applicability_scope: nil, credit_grant: nil, type: nil); end
        end
        # The customer for which to fetch credit balance summary.
        sig { returns(String) }
        def customer; end
        sig { params(_customer: String).returns(String) }
        def customer=(_customer); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The filter criteria for the credit balance summary.
        sig { returns(::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter) }
        def filter; end
        sig {
          params(_filter: ::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter).returns(::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter)
         }
        def filter=(_filter); end
        sig {
          params(customer: String, expand: T.nilable(T::Array[String]), filter: ::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter).void
         }
        def initialize(customer: nil, expand: nil, filter: nil); end
      end
      # Retrieves the credit balance summary for a customer.
      sig {
        params(params: T.any(::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::CreditBalanceSummary)
       }
      def retrieve(params = {}, opts = {}); end
    end
  end
end