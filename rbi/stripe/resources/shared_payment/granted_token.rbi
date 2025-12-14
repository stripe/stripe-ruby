# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module SharedPayment
    # SharedPaymentGrantedToken is the view-only resource of a SharedPaymentIssuedToken, which is a limited-use reference to a PaymentMethod.
    # When another Stripe merchant shares a SharedPaymentIssuedToken with you, you can view attributes of the shared token using the SharedPaymentGrantedToken API, and use it with a PaymentIntent.
    class GrantedToken < APIResource
      class UsageDetails < ::Stripe::StripeObject
        class AmountCaptured < ::Stripe::StripeObject
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          # Integer value of the amount in the smallest currency unit.
          sig { returns(Integer) }
          def value; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The total amount captured using this SharedPaymentToken.
        sig { returns(T.nilable(AmountCaptured)) }
        def amount_captured; end
        def self.inner_class_types
          @inner_class_types = {amount_captured: AmountCaptured}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class UsageLimits < ::Stripe::StripeObject
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        # Time at which this SharedPaymentToken expires and can no longer be used to confirm a PaymentIntent.
        sig { returns(Integer) }
        def expires_at; end
        # Max amount that can be captured using this SharedPaymentToken.
        sig { returns(Integer) }
        def max_amount; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Time at which this SharedPaymentGrantedToken expires and can no longer be used to confirm a PaymentIntent.
      sig { returns(T.nilable(Integer)) }
      def deactivated_at; end
      # The reason why the SharedPaymentGrantedToken has been deactivated.
      sig { returns(T.nilable(String)) }
      def deactivated_reason; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Metadata about the SharedPaymentGrantedToken.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def shared_metadata; end
      # Some details about how the SharedPaymentGrantedToken has been used already.
      sig { returns(T.nilable(UsageDetails)) }
      def usage_details; end
      # Limits on how this SharedPaymentGrantedToken can be used.
      sig { returns(T.nilable(UsageLimits)) }
      def usage_limits; end
    end
  end
end