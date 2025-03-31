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
              attr_accessor :id
              sig { params(id: String).void }
              def initialize(id: nil); end
            end
            # The price type that credit grants can apply to. We currently only support the `metered` price type. Cannot be used in combination with `prices`.
            sig { returns(T.nilable(String)) }
            attr_accessor :price_type
            # A list of prices that the credit grant can apply to. We currently only support the `metered` prices. Cannot be used in combination with `price_type`.
            sig {
              returns(T.nilable(T::Array[::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter::ApplicabilityScope::Price]))
             }
            attr_accessor :prices
            sig {
              params(price_type: T.nilable(String), prices: T.nilable(T::Array[::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter::ApplicabilityScope::Price])).void
             }
            def initialize(price_type: nil, prices: nil); end
          end
          # The billing credit applicability scope for which to fetch credit balance summary.
          sig {
            returns(T.nilable(::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter::ApplicabilityScope))
           }
          attr_accessor :applicability_scope
          # The credit grant for which to fetch credit balance summary.
          sig { returns(T.nilable(String)) }
          attr_accessor :credit_grant
          # Specify the type of this filter.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(applicability_scope: T.nilable(::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter::ApplicabilityScope), credit_grant: T.nilable(String), type: String).void
           }
          def initialize(applicability_scope: nil, credit_grant: nil, type: nil); end
        end
        # The customer for which to fetch credit balance summary.
        sig { returns(String) }
        attr_accessor :customer
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The filter criteria for the credit balance summary.
        sig { returns(::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter) }
        attr_accessor :filter
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