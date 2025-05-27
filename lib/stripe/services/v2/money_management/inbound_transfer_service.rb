# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class InboundTransferService < StripeService
        class CreateParams < Stripe::RequestParams
          class From < Stripe::RequestParams
            # An optional currency field used to specify which currency is debited from the Payment Method.
            # Since many Payment Methods support only one currency, this field is optional.
            attr_accessor :currency
            # ID of the Payment Method using which IBT will be made.
            attr_accessor :payment_method

            def initialize(currency: nil, payment_method: nil)
              @currency = currency
              @payment_method = payment_method
            end
          end

          class To < Stripe::RequestParams
            # The currency in which funds will land in.
            attr_accessor :currency
            # The FinancialAccount that funds will land in.
            attr_accessor :financial_account

            def initialize(currency: nil, financial_account: nil)
              @currency = currency
              @financial_account = financial_account
            end
          end
          # The amount, in specified currency, by which the FinancialAccount balance will increase due to the InboundTransfer.
          attr_accessor :amount
          # An optional, freeform description field intended to store metadata.
          attr_accessor :description
          # Object containing details about where the funds will originate from.
          attr_accessor :from
          # Object containing details about where the funds will land.
          attr_accessor :to

          def initialize(amount: nil, description: nil, from: nil, to: nil)
            @amount = amount
            @description = description
            @from = from
            @to = to
          end
        end

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

        class RetrieveParams < Stripe::RequestParams; end

        # InboundTransfers APIs are used to create, retrieve or list InboundTransfers.
        #
        # ** raises BlockedByStripeError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/inbound_transfers",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves a list of InboundTransfers.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/inbound_transfers",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve an InboundTransfer by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/inbound_transfers/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
