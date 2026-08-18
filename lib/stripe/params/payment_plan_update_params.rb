# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentPlanUpdateParams < ::Stripe::RequestParams
    class Schedule < ::Stripe::RequestParams
      class AmountsDue < ::Stripe::RequestParams
        class Amount < ::Stripe::RequestParams
          class DueDate < ::Stripe::RequestParams
            class Relative < ::Stripe::RequestParams
              # The number of intervals after finalization.
              attr_accessor :count
              # The interval unit.
              attr_accessor :interval

              def initialize(count: nil, interval: nil)
                @count = count
                @interval = interval
              end
            end
            # Unix timestamp. Required when type is 'absolute'.
            attr_accessor :absolute
            # Required when type is 'relative'.
            attr_accessor :relative
            # Either 'absolute' or 'relative'.
            attr_accessor :type

            def initialize(absolute: nil, relative: nil, type: nil)
              @absolute = absolute
              @relative = relative
              @type = type
            end
          end

          class FixedAmount < ::Stripe::RequestParams
            # The installment amount in minor units.
            attr_accessor :amount
            # Three-letter ISO currency code.
            attr_accessor :currency

            def initialize(amount: nil, currency: nil)
              @amount = amount
              @currency = currency
            end
          end
          # Optional description for this installment.
          attr_accessor :description
          # When this installment is due.
          attr_accessor :due_date
          # Required when type is 'fixed_amount'.
          attr_accessor :fixed_amount
          # Optional stable identifier for the installment entry.
          attr_accessor :id
          # The installment percentage of the total. Required when type is 'percentage'.
          attr_accessor :percentage
          # Either 'fixed_amount' or 'percentage'.
          attr_accessor :type

          def initialize(
            description: nil,
            due_date: nil,
            fixed_amount: nil,
            id: nil,
            percentage: nil,
            type: nil
          )
            @description = description
            @due_date = due_date
            @fixed_amount = fixed_amount
            @id = id
            @percentage = percentage
            @type = type
          end
        end
        # The list of installment entries.
        attr_accessor :amounts

        def initialize(amounts: nil)
          @amounts = amounts
        end
      end
      # Required when type is 'amounts_due'.
      attr_accessor :amounts_due
      # The schedule type. Currently only 'amounts_due' is supported.
      attr_accessor :type

      def initialize(amounts_due: nil, type: nil)
        @amounts_due = amounts_due
        @type = type
      end
    end
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # The new schedule for this payment plan.
    attr_accessor :schedule

    def initialize(expand: nil, metadata: nil, schedule: nil)
      @expand = expand
      @metadata = metadata
      @schedule = schedule
    end
  end
end
