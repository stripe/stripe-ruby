# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Tax
      # Per-account configuration controlling implicit behavior of Stripe Tax
      # across supported integration surfaces.
      class IntegrationConfiguration < SingletonAPIResource
        class CheckoutSessions < ::Stripe::StripeObject
          # Controls the default value of automatic_tax[enabled] on new Checkout Sessions.
          sig { returns(String) }
          def automatic_tax_default_value; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Configuration for Checkout Sessions automatic tax behavior.
        sig { returns(CheckoutSessions) }
        def checkout_sessions; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
      end
    end
  end
end