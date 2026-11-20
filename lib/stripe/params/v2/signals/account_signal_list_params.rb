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

        class Created < ::Stripe::RequestParams
          # Only return signals created after this RFC 3339 timestamp.
          attr_accessor :gt
          # Only return signals created at or after this RFC 3339 timestamp.
          attr_accessor :gte
          # Only return signals created before this RFC 3339 timestamp.
          attr_accessor :lt
          # Only return signals created at or before this RFC 3339 timestamp.
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # The account or customer to list signals for. Exactly one of account_details.account or
        # account_details.customer must be provided.
        attr_accessor :account_details
        # Filter signals by their creation timestamp before latest-per-type selection and pagination.
        attr_accessor :created
        # Whether to return only the latest matching signal for each requested type. Defaults to true.
        # Set to false to include matching historical signals.
        attr_accessor :latest_per_type
        # Maximum number of results to return per page. Defaults to 10.
        attr_accessor :limit
        # Signal types to filter by.
        attr_accessor :type

        def initialize(
          account_details: nil,
          created: nil,
          latest_per_type: nil,
          limit: nil,
          type: nil
        )
          @account_details = account_details
          @created = created
          @latest_per_type = latest_per_type
          @limit = limit
          @type = type
        end
      end
    end
  end
end
