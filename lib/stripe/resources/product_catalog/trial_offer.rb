# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module ProductCatalog
    # Resource for the TrialOffer API, used to describe a subscription item's trial period settings.
    # Renders a TrialOffer object that describes the price, duration, end_behavior of a trial offer.
    class TrialOffer < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "product_catalog.trial_offer"
      def self.object_name
        "product_catalog.trial_offer"
      end

      class Duration < ::Stripe::StripeObject
        class Relative < ::Stripe::StripeObject
          # The number of iterations of the price's interval for this trial offer.
          attr_reader :iterations

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field relative
        attr_reader :relative
        # The type of trial offer duration.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = { relative: Relative }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class EndBehavior < ::Stripe::StripeObject
        class Transition < ::Stripe::StripeObject
          # The new price to use at the end of the trial offer period.
          attr_reader :price

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field transition
        attr_reader :transition
        # The type of behavior when the trial offer ends.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = { transition: Transition }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field duration
      attr_reader :duration
      # Attribute for field end_behavior
      attr_reader :end_behavior
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The price during the trial offer.
      attr_reader :price
      # A brief, user-friendly name for the trial offer-for identification purposes.
      attr_reader :name

      # Creates a trial offer.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/product_catalog/trial_offers",
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = { duration: Duration, end_behavior: EndBehavior }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
