# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      # A FeeEntry is the atomic, append-only record of an assessed fee.
      class FeeEntry < APIResource
        OBJECT_NAME = "v2.core.fee_entry"
        def self.object_name
          "v2.core.fee_entry"
        end

        class ChargedBy < ::Stripe::StripeObject
          class Application < ::Stripe::StripeObject
            # Human-readable product name, e.g. "Card payments - Stripe fee".
            attr_reader :feature_name

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Network < ::Stripe::StripeObject
            # Human-readable product name, e.g. "Card payments - Stripe fee".
            attr_reader :feature_name

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Stripe < ::Stripe::StripeObject
            # Human-readable product name, e.g. "Card payments - Stripe fee".
            attr_reader :feature_name

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details for a fee charged by a Connect application.
          attr_reader :application
          # Details for a fee charged by the payment network.
          attr_reader :network
          # Details for a fee charged by Stripe.
          attr_reader :stripe
          # The type of entity that charged this fee.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { application: Application, network: Network, stripe: Stripe }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class IncurredBy < ::Stripe::StripeObject
          # The account that incurred the usage (may differ from the billing account).
          attr_reader :account
          # Public API object id, e.g. ch_xxx.
          attr_reader :id
          # Timestamp of when the usage event occurred.
          attr_reader :occurred_at
          # Public API object type: "charge", "payment", "refund", "dispute", "payout", etc.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Tax < ::Stripe::StripeObject
          # The tax amount calculated for this fee.
          attr_reader :amount

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The fee amount.
        attr_reader :amount
        # The entity that assessed this fee.
        attr_reader :charged_by
        # Timestamp of when this fee entry was created.
        attr_reader :created
        # The ID of the FeeBatch that collected this fee, if any.
        attr_reader :fee_batch
        # Unique identifier for the FeeEntry.
        attr_reader :id
        # The usage event that caused this fee to be assessed.
        attr_reader :incurred_by
        # Has the value `true` if the object exists in live mode, or `false` if in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The reason this fee entry was created.
        attr_reader :reason
        # The tax portion of the fee, if applicable.
        attr_reader :tax
        # The category of this fee.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = { charged_by: ChargedBy, incurred_by: IncurredBy, tax: Tax }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
