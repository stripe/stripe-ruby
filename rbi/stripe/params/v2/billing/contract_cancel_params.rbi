# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ContractCancelParams < ::Stripe::RequestParams
        class CancelPricingLine < ::Stripe::RequestParams
          # The id of the pricing line.
          sig { returns(T.nilable(String)) }
          def id; end
          sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
          def id=(_id); end
          # The lookup key of the pricing line.
          sig { returns(T.nilable(String)) }
          def lookup_key; end
          sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
          def lookup_key=(_lookup_key); end
          # Proration behavior scoped to this pricing line. If not provided, falls back to the
          # top-level `proration_behavior` on the cancel request. Defaults to `prorated`.
          sig { returns(T.nilable(String)) }
          def proration_behavior; end
          sig { params(_proration_behavior: T.nilable(String)).returns(T.nilable(String)) }
          def proration_behavior=(_proration_behavior); end
          sig {
            params(id: T.nilable(String), lookup_key: T.nilable(String), proration_behavior: T.nilable(String)).void
           }
          def initialize(id: nil, lookup_key: nil, proration_behavior: nil); end
        end
        class Term < ::Stripe::RequestParams
          class Term < ::Stripe::RequestParams
            # Select this term by its stable ID.
            sig { returns(T.nilable(String)) }
            def id; end
            sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
            def id=(_id); end
            # Select this term by its unique lookup key.
            sig { returns(T.nilable(String)) }
            def lookup_key; end
            sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
            def lookup_key=(_lookup_key); end
            # Whether the selector uses a term ID or lookup key.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(id: T.nilable(String), lookup_key: T.nilable(String), type: String).void }
            def initialize(id: nil, lookup_key: nil, type: nil); end
          end
          # Falls back to the contract cancellation's top-level proration behavior.
          sig { returns(T.nilable(String)) }
          def proration_behavior; end
          sig { params(_proration_behavior: T.nilable(String)).returns(T.nilable(String)) }
          def proration_behavior=(_proration_behavior); end
          # Select a term by ID or its unique lookup key.
          sig { returns(::Stripe::V2::Billing::ContractCancelParams::Term::Term) }
          def term; end
          sig {
            params(_term: ::Stripe::V2::Billing::ContractCancelParams::Term::Term).returns(::Stripe::V2::Billing::ContractCancelParams::Term::Term)
           }
          def term=(_term); end
          sig {
            params(proration_behavior: T.nilable(String), term: ::Stripe::V2::Billing::ContractCancelParams::Term::Term).void
           }
          def initialize(proration_behavior: nil, term: nil); end
        end
        # Per-pricing-line proration behavior overrides. Falls back to `proration_behavior` if
        # not specified for a given line.
        sig {
          returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCancelParams::CancelPricingLine]))
         }
        def cancel_pricing_lines; end
        sig {
          params(_cancel_pricing_lines: T.nilable(T::Array[::Stripe::V2::Billing::ContractCancelParams::CancelPricingLine])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCancelParams::CancelPricingLine]))
         }
        def cancel_pricing_lines=(_cancel_pricing_lines); end
        # Additional fields to include in the response.
        sig { returns(T.nilable(T::Array[String])) }
        def include; end
        sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def include=(_include); end
        # Top-level proration behavior for the cancellation. Defaults to `prorated` if not set.
        sig { returns(T.nilable(String)) }
        def proration_behavior; end
        sig { params(_proration_behavior: T.nilable(String)).returns(T.nilable(String)) }
        def proration_behavior=(_proration_behavior); end
        # Per-term proration overrides. Cannot be combined with cancel_pricing_lines.
        sig { returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCancelParams::Term])) }
        def terms; end
        sig {
          params(_terms: T.nilable(T::Array[::Stripe::V2::Billing::ContractCancelParams::Term])).returns(T.nilable(T::Array[::Stripe::V2::Billing::ContractCancelParams::Term]))
         }
        def terms=(_terms); end
        sig {
          params(cancel_pricing_lines: T.nilable(T::Array[::Stripe::V2::Billing::ContractCancelParams::CancelPricingLine]), include: T.nilable(T::Array[String]), proration_behavior: T.nilable(String), terms: T.nilable(T::Array[::Stripe::V2::Billing::ContractCancelParams::Term])).void
         }
        def initialize(
          cancel_pricing_lines: nil,
          include: nil,
          proration_behavior: nil,
          terms: nil
        ); end
      end
    end
  end
end