# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FundingIntentUpdateParams < ::Stripe::RequestParams
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
        # The updated amount to add to the destination.
        attr_accessor :amount
        # Updated details for a check FundingIntent.
        attr_accessor :check
        # The updated confirmation method.
        attr_accessor :confirmation_method
        # The updated description.
        attr_accessor :description
        # Updates to the key-value pairs attached to the FundingIntent.
        attr_accessor :metadata

        def initialize(
          amount: nil,
          check: nil,
          confirmation_method: nil,
          description: nil,
          metadata: nil
        )
          @amount = amount
          @check = check
          @confirmation_method = confirmation_method
          @description = description
          @metadata = metadata
        end
      end
    end
  end
end
