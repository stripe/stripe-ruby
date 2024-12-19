# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    class CreditBalanceSummaryService < StripeService
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
            returns(::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter::ApplicabilityScope)
           }
          attr_accessor :applicability_scope

          # The credit grant for which to fetch credit balance summary.
          sig { returns(String) }
          attr_accessor :credit_grant

          # Specify the type of this filter.
          sig { returns(String) }
          attr_accessor :type

          sig {
            params(applicability_scope: ::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter::ApplicabilityScope, credit_grant: String, type: String).void
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
        sig { returns(::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter) }
        attr_accessor :filter

        sig {
          params(customer: String, expand: T::Array[String], filter: ::Stripe::Billing::CreditBalanceSummaryService::RetrieveParams::Filter).void
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