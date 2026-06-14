# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Signals
      class AccountSignalListParams < ::Stripe::RequestParams
        class AccountDetails < ::Stripe::RequestParams
          # The v2 account ID of the account.
          attr_accessor :account
          # The v1 customer ID of the account, for users not yet migrated to v2/accounts.
          attr_accessor :customer

          def initialize(account: nil, customer: nil)
            @account = account
            @customer = customer
          end
        end
        # The account or customer to list signals for. Exactly one of account_details.account or
        # account_details.customer must be provided.
        attr_accessor :account_details
        # Maximum number of results to return per page. Defaults to 20.
        attr_accessor :limit
        # Signal types to filter by.
        attr_accessor :type

        def initialize(account_details: nil, limit: nil, type: nil)
          @account_details = account_details
          @limit = limit
          @type = type
        end
      end
    end
  end
end
