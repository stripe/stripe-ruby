# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class RateCardSubscriptionListParams < ::Stripe::RequestParams
        class Payer < ::Stripe::RequestParams
          # The ID of the Customer object. If provided, only the Rate Card Subscriptions that are subscribed on the Billing Groups with the specified payer will be returned.
          attr_accessor :customer
          # A string identifying the type of the payer. Currently the only supported value is `customer`.
          attr_accessor :type

          def initialize(customer: nil, type: nil)
            @customer = customer
            @type = type
          end
        end
        # Optionally filter by a BillingGroup. Mutually exclusive with `payers`, `rate_card`, and `rate_card_version`.
        attr_accessor :billing_group
        # The page size limit. Defaults to 20.
        attr_accessor :limit
        # Optionally filter by the payer associated with Billing Groups which the Rate Card Subscriptions are subscribed to.
        # Mutually exclusive with `billing_group`, `rate_card`, and `rate_card_version`.
        attr_accessor :payer
        # Optionally filter by a RateCard. Mutually exclusive with `billing_group`, `payers`, and `rate_card_version`.
        attr_accessor :rate_card
        # Optionally filter by a RateCard version. Mutually exclusive with `billing_group`, `payers`, and `rate_card`.
        attr_accessor :rate_card_version
        # Optionally filter by servicing status.
        attr_accessor :servicing_status

        def initialize(
          billing_group: nil,
          limit: nil,
          payer: nil,
          rate_card: nil,
          rate_card_version: nil,
          servicing_status: nil
        )
          @billing_group = billing_group
          @limit = limit
          @payer = payer
          @rate_card = rate_card
          @rate_card_version = rate_card_version
          @servicing_status = servicing_status
        end
      end
    end
  end
end
