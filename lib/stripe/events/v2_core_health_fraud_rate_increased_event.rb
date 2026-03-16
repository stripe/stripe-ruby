# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when the fraud rate has increased.
    class V2CoreHealthFraudRateIncreasedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.core.health.fraud_rate.increased"
      end

      class V2CoreHealthFraudRateIncreasedEventData < ::Stripe::StripeObject
        class Impact < ::Stripe::StripeObject
          class RealizedFraudAmount < ::Stripe::StripeObject
            # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
            attr_reader :value
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_reader :currency

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Fraud attack type.
          attr_reader :attack_type
          # The number of impacted requests which are detected.
          attr_reader :impacted_requests
          # Estimated aggregated amount for the impacted requests.
          attr_reader :realized_fraud_amount

          def self.inner_class_types
            @inner_class_types = { realized_fraud_amount: RealizedFraudAmount }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # A short description of the alert.
        attr_reader :summary
        # The time when the user experience has returned to expected levels.
        attr_reader :resolved_at
        # The alert ID.
        attr_reader :alert_id
        # The user impact.
        attr_reader :impact
        # The time when impact on the user experience was first detected.
        attr_reader :started_at
        # The grouping key for the alert.
        attr_reader :grouping_key

        def self.inner_class_types
          @inner_class_types = { impact: Impact }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2CoreHealthFraudRateIncreasedEventData }
      end
      attr_reader :data
    end

    # Occurs when the fraud rate has increased.
    class V2CoreHealthFraudRateIncreasedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.core.health.fraud_rate.increased"
      end
    end
  end
end
