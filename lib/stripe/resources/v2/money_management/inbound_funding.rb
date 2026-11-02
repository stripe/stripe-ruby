# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # An InboundFunding represents an other-to-me pull movement into a FinancialAccount.
      class InboundFunding < APIResource
        OBJECT_NAME = "v2.money_management.inbound_funding"
        def self.object_name
          "v2.money_management.inbound_funding"
        end

        class From < ::Stripe::StripeObject
          class PaymentMethod < ::Stripe::StripeObject
            # The type of this object.
            attr_reader :type
            # The ID of the paper check.
            attr_reader :us_paper_check

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The amount debited from the source.
          attr_reader :debited
          # The payment method that funds the InboundFunding.
          attr_reader :payment_method

          def self.inner_class_types
            @inner_class_types = { payment_method: PaymentMethod }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class History < ::Stripe::StripeObject
          class CheckFailed < ::Stripe::StripeObject
            # The raw banking-partner failure code, when available.
            attr_reader :failure_code
            # The reason the check failed.
            attr_reader :failure_reason

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class CheckProcessing < ::Stripe::StripeObject
            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class CheckQueued < ::Stripe::StripeObject
            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class CheckReturned < ::Stripe::StripeObject
            # The raw banking-partner return code, when available.
            attr_reader :return_code
            # The reason the check was returned.
            attr_reader :return_reason
            # The ID of the reversal Transaction.
            attr_reader :reversal_transaction

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class CheckSucceeded < ::Stripe::StripeObject
            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details of the transition to failed.
          attr_reader :check_failed
          # Details of the transition to processing.
          attr_reader :check_processing
          # Details of the transition to queued.
          attr_reader :check_queued
          # Details of the transition to returned.
          attr_reader :check_returned
          # Details of the transition to succeeded.
          attr_reader :check_succeeded
          # Time at which the object was created.
          attr_reader :created
          # Time at which the history entry took effect.
          attr_reader :effective_at
          # Unique identifier for the object.
          attr_reader :id
          # The type of this object.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {
              check_failed: CheckFailed,
              check_processing: CheckProcessing,
              check_queued: CheckQueued,
              check_returned: CheckReturned,
              check_succeeded: CheckSucceeded,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class To < ::Stripe::StripeObject
          # The amount credited to the destination.
          attr_reader :credited
          # The ID of the destination FinancialAccount.
          attr_reader :financial_account

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount of the InboundFunding.
        attr_reader :amount
        # Time at which the object was created.
        attr_reader :created
        # An arbitrary string attached to the InboundFunding.
        attr_reader :description
        # The source of the funds.
        attr_reader :from
        # The check lifecycle history.
        attr_reader :history
        # Unique identifier for the object.
        attr_reader :id
        # Whether the InboundFunding exists in live mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The current status of the InboundFunding.
        attr_reader :status
        # The destination for the funds.
        attr_reader :to

        def self.inner_class_types
          @inner_class_types = { from: From, history: History, to: To }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
