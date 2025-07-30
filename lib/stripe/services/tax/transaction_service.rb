# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class TransactionService < StripeService
      attr_reader :line_items

      def initialize(requestor)
        super
        @line_items = Stripe::Tax::TransactionLineItemService.new(@requestor)
      end

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class CreateFromCalculationParams < Stripe::RequestParams
        # Tax Calculation ID to be used as input when creating the transaction.
        attr_accessor :calculation
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The Unix timestamp representing when the tax liability is assumed or reduced, which determines the liability posting period and handling in tax liability reports. The timestamp must fall within the `tax_date` and the current time, unless the `tax_date` is scheduled in advance. Defaults to the current time.
        attr_accessor :posted_at
        # A custom order or sale identifier, such as 'myOrder_123'. Must be unique across all transactions, including reversals.
        attr_accessor :reference

        def initialize(calculation: nil, expand: nil, metadata: nil, posted_at: nil, reference: nil)
          @calculation = calculation
          @expand = expand
          @metadata = metadata
          @posted_at = posted_at
          @reference = reference
        end
      end

      class CreateReversalParams < Stripe::RequestParams
        class LineItem < Stripe::RequestParams
          # The amount to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
          attr_accessor :amount
          # The amount of tax to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
          attr_accessor :amount_tax
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata
          # The `id` of the line item to reverse in the original transaction.
          attr_accessor :original_line_item
          # The quantity reversed. Appears in [tax exports](https://stripe.com/docs/tax/reports), but does not affect the amount of tax reversed.
          attr_accessor :quantity
          # A custom identifier for this line item in the reversal transaction, such as 'L1-refund'.
          attr_accessor :reference

          def initialize(
            amount: nil,
            amount_tax: nil,
            metadata: nil,
            original_line_item: nil,
            quantity: nil,
            reference: nil
          )
            @amount = amount
            @amount_tax = amount_tax
            @metadata = metadata
            @original_line_item = original_line_item
            @quantity = quantity
            @reference = reference
          end
        end

        class ShippingCost < Stripe::RequestParams
          # The amount to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
          attr_accessor :amount
          # The amount of tax to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
          attr_accessor :amount_tax

          def initialize(amount: nil, amount_tax: nil)
            @amount = amount
            @amount_tax = amount_tax
          end
        end
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A flat amount to reverse across the entire transaction, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative. This value represents the total amount to refund from the transaction, including taxes.
        attr_accessor :flat_amount
        # The line item amounts to reverse.
        attr_accessor :line_items
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # If `partial`, the provided line item or shipping cost amounts are reversed. If `full`, the original transaction is fully reversed.
        attr_accessor :mode
        # The ID of the Transaction to partially or fully reverse.
        attr_accessor :original_transaction
        # A custom identifier for this reversal, such as `myOrder_123-refund_1`, which must be unique across all transactions. The reference helps identify this reversal transaction in exported [tax reports](https://stripe.com/docs/tax/reports).
        attr_accessor :reference
        # The shipping cost to reverse.
        attr_accessor :shipping_cost

        def initialize(
          expand: nil,
          flat_amount: nil,
          line_items: nil,
          metadata: nil,
          mode: nil,
          original_transaction: nil,
          reference: nil,
          shipping_cost: nil
        )
          @expand = expand
          @flat_amount = flat_amount
          @line_items = line_items
          @metadata = metadata
          @mode = mode
          @original_transaction = original_transaction
          @reference = reference
          @shipping_cost = shipping_cost
        end
      end

      # Creates a Tax Transaction from a calculation, if that calculation hasn't expired. Calculations expire after 90 days.
      def create_from_calculation(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/tax/transactions/create_from_calculation",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Partially or fully reverses a previously created Transaction.
      def create_reversal(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/tax/transactions/create_reversal",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a Tax Transaction object.
      def retrieve(transaction, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/tax/transactions/%<transaction>s", { transaction: CGI.escape(transaction) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
