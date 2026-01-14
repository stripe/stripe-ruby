# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module ProductCatalog
    # Resource for the TrialOffer API, used to describe a subscription item's trial period settings.
    # Renders a TrialOffer object that describes the price, duration, end_behavior of a trial offer.
    class TrialOffer < APIResource
      class Duration < ::Stripe::StripeObject
        class Relative < ::Stripe::StripeObject
          # The number of iterations of the price's interval for this trial offer.
          sig { returns(Integer) }
          def iterations; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field relative
        sig { returns(T.nilable(Relative)) }
        def relative; end
        # The type of trial offer duration.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {relative: Relative}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class EndBehavior < ::Stripe::StripeObject
        class Transition < ::Stripe::StripeObject
          # The new price to use at the end of the trial offer period.
          sig { returns(String) }
          def price; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field transition
        sig { returns(Transition) }
        def transition; end
        # The type of behavior when the trial offer ends.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {transition: Transition}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field duration
      sig { returns(Duration) }
      def duration; end
      # Attribute for field end_behavior
      sig { returns(EndBehavior) }
      def end_behavior; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The price during the trial offer.
      sig { returns(T.any(String, ::Stripe::Price)) }
      def price; end
      # A brief, user-friendly name for the trial offer-for identification purposes.
      sig { returns(T.nilable(String)) }
      def name; end
      # Creates a trial offer.
      sig {
        params(params: T.any(::Stripe::ProductCatalog::TrialOfferCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ProductCatalog::TrialOffer)
       }
      def self.create(params = {}, opts = {}); end
    end
  end
end