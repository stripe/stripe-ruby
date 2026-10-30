# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # An InboundFunding represents an other-to-me pull movement into a FinancialAccount.
      class InboundFunding < APIResource
        class From < ::Stripe::StripeObject
          class PaymentMethod < ::Stripe::StripeObject
            # The type of this object.
            sig { returns(String) }
            def type; end
            # The ID of the paper check.
            sig { returns(T.nilable(String)) }
            def us_paper_check; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The amount debited from the source.
          sig { returns(::Stripe::V2::Amount) }
          def debited; end
          # The payment method that funds the InboundFunding.
          sig { returns(PaymentMethod) }
          def payment_method; end
          def self.inner_class_types
            @inner_class_types = {payment_method: PaymentMethod}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class History < ::Stripe::StripeObject
          class CheckFailed < ::Stripe::StripeObject
            # The raw banking-partner failure code, when available.
            sig { returns(T.nilable(String)) }
            def failure_code; end
            # The reason the check failed.
            sig { returns(T.nilable(String)) }
            def failure_reason; end
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
            sig { returns(T.nilable(String)) }
            def return_code; end
            # The reason the check was returned.
            sig { returns(T.nilable(String)) }
            def return_reason; end
            # The ID of the reversal Transaction.
            sig { returns(T.nilable(String)) }
            def reversal_transaction; end
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
          sig { returns(T.nilable(CheckFailed)) }
          def check_failed; end
          # Details of the transition to processing.
          sig { returns(T.nilable(CheckProcessing)) }
          def check_processing; end
          # Details of the transition to queued.
          sig { returns(T.nilable(CheckQueued)) }
          def check_queued; end
          # Details of the transition to returned.
          sig { returns(T.nilable(CheckReturned)) }
          def check_returned; end
          # Details of the transition to succeeded.
          sig { returns(T.nilable(CheckSucceeded)) }
          def check_succeeded; end
          # Time at which the object was created.
          sig { returns(String) }
          def created; end
          # Time at which the history entry took effect.
          sig { returns(String) }
          def effective_at; end
          # Unique identifier for the object.
          sig { returns(String) }
          def id; end
          # The type of this object.
          sig { returns(String) }
          def type; end
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
          sig { returns(::Stripe::V2::Amount) }
          def credited; end
          # The ID of the destination FinancialAccount.
          sig { returns(String) }
          def financial_account; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount of the InboundFunding.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        # Time at which the object was created.
        sig { returns(String) }
        def created; end
        # An arbitrary string attached to the InboundFunding.
        sig { returns(T.nilable(String)) }
        def description; end
        # The source of the funds.
        sig { returns(From) }
        def from; end
        # The check lifecycle history.
        sig { returns(T::Array[History]) }
        def history; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # Whether the InboundFunding exists in live mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The current status of the InboundFunding.
        sig { returns(String) }
        def status; end
        # The destination for the funds.
        sig { returns(To) }
        def to; end
      end
    end
  end
end