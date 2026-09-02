# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Tax
      # Per-account configuration controlling implicit behavior of Stripe Tax
      # across supported integration surfaces.
      class IntegrationConfiguration < SingletonAPIResource
        OBJECT_NAME = "v2.tax.integration_configuration"
        def self.object_name
          "v2.tax.integration_configuration"
        end

        class CheckoutSessions < ::Stripe::StripeObject
          # Controls the default value of automatic_tax[enabled] on new Checkout Sessions.
          attr_reader :automatic_tax_default_value

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Configuration for Checkout Sessions automatic tax behavior.
        attr_reader :checkout_sessions
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object

        def self.inner_class_types
          @inner_class_types = { checkout_sessions: CheckoutSessions }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
