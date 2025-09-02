# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class Intent < APIResource
        class AmountDetails < Stripe::StripeObject
          # Three-letter ISO currency code, in lowercase. Must be a supported currency.
          sig { returns(String) }
          def currency; end
          # Amount of discount applied.
          sig { returns(String) }
          def discount; end
          # Amount of shipping charges.
          sig { returns(String) }
          def shipping; end
          # Subtotal amount before tax and discounts.
          sig { returns(String) }
          def subtotal; end
          # Amount of tax.
          sig { returns(String) }
          def tax; end
          # Total amount for the Billing Intent.
          sig { returns(String) }
          def total; end
        end
        class StatusTransitions < Stripe::StripeObject
          # Time at which the Billing Intent was canceled.
          sig { returns(T.nilable(String)) }
          def canceled_at; end
          # Time at which the Billing Intent was committed.
          sig { returns(T.nilable(String)) }
          def committed_at; end
          # Time at which the Billing Intent was drafted.
          sig { returns(T.nilable(String)) }
          def drafted_at; end
          # Time at which the Billing Intent was reserved.
          sig { returns(T.nilable(String)) }
          def reserved_at; end
        end
        # Breakdown of the amount for this Billing Intent.
        sig { returns(AmountDetails) }
        def amount_details; end
        # Time at which the object was created.
        sig { returns(String) }
        def created; end
        # Three-letter ISO currency code, in lowercase. Must be a supported currency.
        sig { returns(String) }
        def currency; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Current status of the Billing Intent.
        sig { returns(String) }
        def status; end
        # Timestamps for status transitions of the Billing Intent.
        sig { returns(StatusTransitions) }
        def status_transitions; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # ID of an existing Cadence to use.
        sig { returns(T.nilable(String)) }
        def cadence; end
      end
    end
  end
end