# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FundingIntentCreateParams < ::Stripe::RequestParams
        class Check < ::Stripe::RequestParams
          # The ID of a File containing the back image of the check.
          attr_accessor :back_image
          # The ID of a File containing the front image of the check.
          attr_accessor :front_image

          def initialize(back_image: nil, front_image: nil)
            @back_image = back_image
            @front_image = front_image
          end
        end

        class SettlementTiming < ::Stripe::RequestParams
          # The number of days to delay the availability of funds after processing completes.
          attr_accessor :delay_days_override

          def initialize(delay_days_override: nil)
            @delay_days_override = delay_days_override
          end
        end

        class To < ::Stripe::RequestParams
          # The currency of the destination FinancialAccount balance.
          attr_accessor :currency
          # The ID of the FinancialAccount that receives the funds.
          attr_accessor :financial_account

          def initialize(currency: nil, financial_account: nil)
            @currency = currency
            @financial_account = financial_account
          end
        end
        # The amount to add to the destination.
        attr_accessor :amount
        # Details for a check FundingIntent.
        attr_accessor :check
        # How to confirm the FundingIntent after validation.
        attr_accessor :confirmation_method
        # An arbitrary string to attach to the FundingIntent.
        attr_accessor :description
        # Set of key-value pairs to attach to the FundingIntent.
        attr_accessor :metadata
        # Controls when the funds become available after processing.
        attr_accessor :settlement_timing
        # The destination for the funds.
        attr_accessor :to
        # The type of FundingIntent to create.
        attr_accessor :type

        def initialize(
          amount: nil,
          check: nil,
          confirmation_method: nil,
          description: nil,
          metadata: nil,
          settlement_timing: nil,
          to: nil,
          type: nil
        )
          @amount = amount
          @check = check
          @confirmation_method = confirmation_method
          @description = description
          @metadata = metadata
          @settlement_timing = settlement_timing
          @to = to
          @type = type
        end
      end
    end
  end
end
