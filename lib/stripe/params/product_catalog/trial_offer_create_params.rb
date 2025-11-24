# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module ProductCatalog
    class TrialOfferCreateParams < ::Stripe::RequestParams
      class Duration < ::Stripe::RequestParams
        class Relative < ::Stripe::RequestParams
          # The number of recurring price's interval to apply for the trial period.
          attr_accessor :iterations

          def initialize(iterations: nil)
            @iterations = iterations
          end
        end
        # The relative duration of the trial period computed as the number of recurring price intervals.
        attr_accessor :relative
        # Specifies how the trial offer duration is determined.
        attr_accessor :type

        def initialize(relative: nil, type: nil)
          @relative = relative
          @type = type
        end
      end

      class EndBehavior < ::Stripe::RequestParams
        class Transition < ::Stripe::RequestParams
          # The price to transition the recurring item to when the trial offer ends.
          attr_accessor :price

          def initialize(price: nil)
            @price = price
          end
        end
        # The transition to apply when the trial offer ends.
        attr_accessor :transition

        def initialize(transition: nil)
          @transition = transition
        end
      end
      # Duration of one service period of the trial.
      attr_accessor :duration
      # Define behavior that occurs at the end of the trial.
      attr_accessor :end_behavior
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Price configuration during the trial period (amount, billing scheme, etc).
      attr_accessor :price

      def initialize(duration: nil, end_behavior: nil, expand: nil, price: nil)
        @duration = duration
        @end_behavior = end_behavior
        @expand = expand
        @price = price
      end
    end
  end
end
