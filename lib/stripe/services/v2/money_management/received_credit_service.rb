# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class ReceivedCreditService < StripeService
        class ListParams < Stripe::RequestParams
          # Filter for objects created at the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          attr_accessor :created
          # Filter for objects created after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          attr_accessor :created_gt
          # Filter for objects created on or after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          attr_accessor :created_gte
          # Filter for objects created before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          attr_accessor :created_lt
          # Filter for objects created on or before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          attr_accessor :created_lte
          # The page limit.
          attr_accessor :limit

          def initialize(
            created: nil,
            created_gt: nil,
            created_gte: nil,
            created_lt: nil,
            created_lte: nil,
            limit: nil
          )
            @created = created
            @created_gt = created_gt
            @created_gte = created_gte
            @created_lt = created_lt
            @created_lte = created_lte
            @limit = limit
          end
        end

        class RetrieveParams < Stripe::RequestParams
        end

        # Retrieves a list of ReceivedCredits.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/received_credits",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a ReceivedCredit by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/received_credits/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
