# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      # A FeeEntry is the atomic, append-only record of an assessed fee.
      class FeeEntry < APIResource
        class ChargedBy < ::Stripe::StripeObject
          class Application < ::Stripe::StripeObject
            # Human-readable product name, e.g. "Card payments - Stripe fee".
            sig { returns(T.nilable(String)) }
            def feature_name; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Network < ::Stripe::StripeObject
            # Human-readable product name, e.g. "Card payments - Stripe fee".
            sig { returns(T.nilable(String)) }
            def feature_name; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Stripe < ::Stripe::StripeObject
            # Human-readable product name, e.g. "Card payments - Stripe fee".
            sig { returns(T.nilable(String)) }
            def feature_name; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details for a fee charged by a Connect application.
          sig { returns(T.nilable(Application)) }
          def application; end
          # Details for a fee charged by the payment network.
          sig { returns(T.nilable(Network)) }
          def network; end
          # Details for a fee charged by Stripe.
          sig { returns(T.nilable(Stripe)) }
          def stripe; end
          # The type of entity that charged this fee.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {application: Application, network: Network, stripe: Stripe}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class IncurredBy < ::Stripe::StripeObject
          # The account that incurred the usage (may differ from the billing account).
          sig { returns(T.nilable(String)) }
          def account; end
          # Public API object id, e.g. ch_xxx.
          sig { returns(String) }
          def id; end
          # Timestamp of when the usage event occurred.
          sig { returns(T.nilable(String)) }
          def occurred_at; end
          # Public API object type: "charge", "payment", "refund", "dispute", "payout", etc.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Tax < ::Stripe::StripeObject
          # The tax amount calculated for this fee.
          sig { returns(::Stripe::V2::Amount) }
          def amount; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The fee amount.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        # The entity that assessed this fee.
        sig { returns(ChargedBy) }
        def charged_by; end
        # Timestamp of when this fee entry was created.
        sig { returns(String) }
        def created; end
        # The ID of the FeeBatch that collected this fee, if any.
        sig { returns(T.nilable(String)) }
        def fee_batch; end
        # Unique identifier for the FeeEntry.
        sig { returns(String) }
        def id; end
        # The usage event that caused this fee to be assessed.
        sig { returns(IncurredBy) }
        def incurred_by; end
        # Has the value `true` if the object exists in live mode, or `false` if in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The reason this fee entry was created.
        sig { returns(String) }
        def reason; end
        # The tax portion of the fee, if applicable.
        sig { returns(T.nilable(Tax)) }
        def tax; end
        # The category of this fee.
        sig { returns(String) }
        def type; end
      end
    end
  end
end