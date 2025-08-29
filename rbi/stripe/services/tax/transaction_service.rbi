# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class TransactionService < StripeService
      attr_reader :line_items
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class CreateFromCalculationParams < Stripe::RequestParams
        # Tax Calculation ID to be used as input when creating the transaction.
        sig { returns(String) }
        attr_accessor :calculation
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The Unix timestamp representing when the tax liability is assumed or reduced, which determines the liability posting period and handling in tax liability reports. The timestamp must fall within the `tax_date` and the current time, unless the `tax_date` is scheduled in advance. Defaults to the current time.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :posted_at
        # A custom order or sale identifier, such as 'myOrder_123'. Must be unique across all transactions, including reversals.
        sig { returns(String) }
        attr_accessor :reference
        sig {
          params(calculation: String, expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), posted_at: T.nilable(Integer), reference: String).void
         }
        def initialize(
          calculation: nil,
          expand: nil,
          metadata: nil,
          posted_at: nil,
          reference: nil
        ); end
      end
      class CreateReversalParams < Stripe::RequestParams
        class LineItem < Stripe::RequestParams
          # The amount to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
          sig { returns(Integer) }
          attr_accessor :amount
          # The amount of tax to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
          sig { returns(Integer) }
          attr_accessor :amount_tax
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # The `id` of the line item to reverse in the original transaction.
          sig { returns(String) }
          attr_accessor :original_line_item
          # The quantity reversed. Appears in [tax exports](https://stripe.com/docs/tax/reports), but does not affect the amount of tax reversed.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :quantity
          # A custom identifier for this line item in the reversal transaction, such as 'L1-refund'.
          sig { returns(String) }
          attr_accessor :reference
          sig {
            params(amount: Integer, amount_tax: Integer, metadata: T.nilable(T::Hash[String, String]), original_line_item: String, quantity: T.nilable(Integer), reference: String).void
           }
          def initialize(
            amount: nil,
            amount_tax: nil,
            metadata: nil,
            original_line_item: nil,
            quantity: nil,
            reference: nil
          ); end
        end
        class ShippingCost < Stripe::RequestParams
          # The amount to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
          sig { returns(Integer) }
          attr_accessor :amount
          # The amount of tax to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
          sig { returns(Integer) }
          attr_accessor :amount_tax
          sig { params(amount: Integer, amount_tax: Integer).void }
          def initialize(amount: nil, amount_tax: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A flat amount to reverse across the entire transaction, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative. This value represents the total amount to refund from the transaction, including taxes.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :flat_amount
        # The line item amounts to reverse.
        sig {
          returns(T.nilable(T::Array[::Stripe::Tax::TransactionService::CreateReversalParams::LineItem]))
         }
        attr_accessor :line_items
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # If `partial`, the provided line item or shipping cost amounts are reversed. If `full`, the original transaction is fully reversed.
        sig { returns(String) }
        attr_accessor :mode
        # The ID of the Transaction to partially or fully reverse.
        sig { returns(String) }
        attr_accessor :original_transaction
        # A custom identifier for this reversal, such as `myOrder_123-refund_1`, which must be unique across all transactions. The reference helps identify this reversal transaction in exported [tax reports](https://stripe.com/docs/tax/reports).
        sig { returns(String) }
        attr_accessor :reference
        # The shipping cost to reverse.
        sig {
          returns(T.nilable(::Stripe::Tax::TransactionService::CreateReversalParams::ShippingCost))
         }
        attr_accessor :shipping_cost
        sig {
          params(expand: T.nilable(T::Array[String]), flat_amount: T.nilable(Integer), line_items: T.nilable(T::Array[::Stripe::Tax::TransactionService::CreateReversalParams::LineItem]), metadata: T.nilable(T::Hash[String, String]), mode: String, original_transaction: String, reference: String, shipping_cost: T.nilable(::Stripe::Tax::TransactionService::CreateReversalParams::ShippingCost)).void
         }
        def initialize(
          expand: nil,
          flat_amount: nil,
          line_items: nil,
          metadata: nil,
          mode: nil,
          original_transaction: nil,
          reference: nil,
          shipping_cost: nil
        ); end
      end
      # Creates a Tax Transaction from a calculation, if that calculation hasn't expired. Calculations expire after 90 days.
      sig {
        params(params: T.any(::Stripe::Tax::TransactionService::CreateFromCalculationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Tax::Transaction)
       }
      def create_from_calculation(params = {}, opts = {}); end

      # Partially or fully reverses a previously created Transaction.
      sig {
        params(params: T.any(::Stripe::Tax::TransactionService::CreateReversalParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Tax::Transaction)
       }
      def create_reversal(params = {}, opts = {}); end

      # Retrieves a Tax Transaction object.
      sig {
        params(transaction: String, params: T.any(::Stripe::Tax::TransactionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Tax::Transaction)
       }
      def retrieve(transaction, params = {}, opts = {}); end
    end
  end
end