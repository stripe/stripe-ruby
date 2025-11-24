# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module ProductCatalog
    class TrialOfferCreateParams < ::Stripe::RequestParams
      class Duration < ::Stripe::RequestParams
        class Relative < ::Stripe::RequestParams
          # The number of recurring price's interval to apply for the trial period.
          sig { returns(Integer) }
          def iterations; end
          sig { params(_iterations: Integer).returns(Integer) }
          def iterations=(_iterations); end
          sig { params(iterations: Integer).void }
          def initialize(iterations: nil); end
        end
        # The relative duration of the trial period computed as the number of recurring price intervals.
        sig { returns(T.nilable(ProductCatalog::TrialOfferCreateParams::Duration::Relative)) }
        def relative; end
        sig {
          params(_relative: T.nilable(ProductCatalog::TrialOfferCreateParams::Duration::Relative)).returns(T.nilable(ProductCatalog::TrialOfferCreateParams::Duration::Relative))
         }
        def relative=(_relative); end
        # Specifies how the trial offer duration is determined.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(relative: T.nilable(ProductCatalog::TrialOfferCreateParams::Duration::Relative), type: String).void
         }
        def initialize(relative: nil, type: nil); end
      end
      class EndBehavior < ::Stripe::RequestParams
        class Transition < ::Stripe::RequestParams
          # The price to transition the recurring item to when the trial offer ends.
          sig { returns(String) }
          def price; end
          sig { params(_price: String).returns(String) }
          def price=(_price); end
          sig { params(price: String).void }
          def initialize(price: nil); end
        end
        # The transition to apply when the trial offer ends.
        sig { returns(ProductCatalog::TrialOfferCreateParams::EndBehavior::Transition) }
        def transition; end
        sig {
          params(_transition: ProductCatalog::TrialOfferCreateParams::EndBehavior::Transition).returns(ProductCatalog::TrialOfferCreateParams::EndBehavior::Transition)
         }
        def transition=(_transition); end
        sig {
          params(transition: ProductCatalog::TrialOfferCreateParams::EndBehavior::Transition).void
         }
        def initialize(transition: nil); end
      end
      # Duration of one service period of the trial.
      sig { returns(ProductCatalog::TrialOfferCreateParams::Duration) }
      def duration; end
      sig {
        params(_duration: ProductCatalog::TrialOfferCreateParams::Duration).returns(ProductCatalog::TrialOfferCreateParams::Duration)
       }
      def duration=(_duration); end
      # Define behavior that occurs at the end of the trial.
      sig { returns(ProductCatalog::TrialOfferCreateParams::EndBehavior) }
      def end_behavior; end
      sig {
        params(_end_behavior: ProductCatalog::TrialOfferCreateParams::EndBehavior).returns(ProductCatalog::TrialOfferCreateParams::EndBehavior)
       }
      def end_behavior=(_end_behavior); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Price configuration during the trial period (amount, billing scheme, etc).
      sig { returns(String) }
      def price; end
      sig { params(_price: String).returns(String) }
      def price=(_price); end
      sig {
        params(duration: ProductCatalog::TrialOfferCreateParams::Duration, end_behavior: ProductCatalog::TrialOfferCreateParams::EndBehavior, expand: T.nilable(T::Array[String]), price: String).void
       }
      def initialize(duration: nil, end_behavior: nil, expand: nil, price: nil); end
    end
  end
end