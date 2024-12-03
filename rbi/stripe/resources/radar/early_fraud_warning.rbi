# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    # An early fraud warning indicates that the card issuer has notified us that a
    # charge may be fraudulent.
    #
    # Related guide: [Early fraud warnings](https://stripe.com/docs/disputes/measuring#early-fraud-warnings)
    class EarlyFraudWarning < APIResource
      # An EFW is actionable if it has not received a dispute and has not been fully refunded. You may wish to proactively refund a charge that receives an EFW, in order to avoid receiving a dispute later.
      sig { returns(T::Boolean) }
      attr_reader :actionable

      # ID of the charge this early fraud warning is for, optionally expanded.
      sig { returns(T.any(String, Stripe::Charge)) }
      attr_reader :charge

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # The type of fraud labelled by the issuer. One of `card_never_received`, `fraudulent_card_application`, `made_with_counterfeit_card`, `made_with_lost_card`, `made_with_stolen_card`, `misc`, `unauthorized_use_of_card`.
      sig { returns(String) }
      attr_reader :fraud_type

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # ID of the Payment Intent this early fraud warning is for, optionally expanded.
      sig { returns(T.any(String, Stripe::PaymentIntent)) }
      attr_reader :payment_intent
    end
  end
end