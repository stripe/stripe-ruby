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
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class CreateFromCalculationParams < Stripe::RequestParams
        # Tax Calculation ID to be used as input when creating the transaction.
        sig { returns(String) }
        def calculation; end
        sig { params(_calculation: String).returns(String) }
        def calculation=(_calculation); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The Unix timestamp representing when the tax liability is assumed or reduced, which determines the liability posting period and handling in tax liability reports. The timestamp must fall within the `tax_date` and the current time, unless the `tax_date` is scheduled in advance. Defaults to the current time.
        sig { returns(T.nilable(Integer)) }
        def posted_at; end
        sig { params(_posted_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def posted_at=(_posted_at); end
        # A custom order or sale identifier, such as 'myOrder_123'. Must be unique across all transactions, including reversals.
        sig { returns(String) }
        def reference; end
        sig { params(_reference: String).returns(String) }
        def reference=(_reference); end
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
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # The amount of tax to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
          sig { returns(Integer) }
          def amount_tax; end
          sig { params(_amount_tax: Integer).returns(Integer) }
          def amount_tax=(_amount_tax); end
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # The `id` of the line item to reverse in the original transaction.
          sig { returns(String) }
          def original_line_item; end
          sig { params(_original_line_item: String).returns(String) }
          def original_line_item=(_original_line_item); end
          # The quantity reversed. Appears in [tax exports](https://stripe.com/docs/tax/reports), but does not affect the amount of tax reversed.
          sig { returns(T.nilable(Integer)) }
          def quantity; end
          sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def quantity=(_quantity); end
          # A custom identifier for this line item in the reversal transaction, such as 'L1-refund'.
          sig { returns(String) }
          def reference; end
          sig { params(_reference: String).returns(String) }
          def reference=(_reference); end
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
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # The amount of tax to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
          sig { returns(Integer) }
          def amount_tax; end
          sig { params(_amount_tax: Integer).returns(Integer) }
          def amount_tax=(_amount_tax); end
          sig { params(amount: Integer, amount_tax: Integer).void }
          def initialize(amount: nil, amount_tax: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A flat amount to reverse across the entire transaction, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative. This value represents the total amount to refund from the transaction, including taxes.
        sig { returns(T.nilable(Integer)) }
        def flat_amount; end
        sig { params(_flat_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def flat_amount=(_flat_amount); end
        # The line item amounts to reverse.
        sig {
          returns(T.nilable(T::Array[::Stripe::Tax::TransactionService::CreateReversalParams::LineItem]))
         }
        def line_items; end
        sig {
          params(_line_items: T.nilable(T::Array[::Stripe::Tax::TransactionService::CreateReversalParams::LineItem])).returns(T.nilable(T::Array[::Stripe::Tax::TransactionService::CreateReversalParams::LineItem]))
         }
        def line_items=(_line_items); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # If `partial`, the provided line item or shipping cost amounts are reversed. If `full`, the original transaction is fully reversed.
        sig { returns(String) }
        def mode; end
        sig { params(_mode: String).returns(String) }
        def mode=(_mode); end
        # The ID of the Transaction to partially or fully reverse.
        sig { returns(String) }
        def original_transaction; end
        sig { params(_original_transaction: String).returns(String) }
        def original_transaction=(_original_transaction); end
        # A custom identifier for this reversal, such as `myOrder_123-refund_1`, which must be unique across all transactions. The reference helps identify this reversal transaction in exported [tax reports](https://stripe.com/docs/tax/reports).
        sig { returns(String) }
        def reference; end
        sig { params(_reference: String).returns(String) }
        def reference=(_reference); end
        # The shipping cost to reverse.
        sig {
          returns(T.nilable(::Stripe::Tax::TransactionService::CreateReversalParams::ShippingCost))
         }
        def shipping_cost; end
        sig {
          params(_shipping_cost: T.nilable(::Stripe::Tax::TransactionService::CreateReversalParams::ShippingCost)).returns(T.nilable(::Stripe::Tax::TransactionService::CreateReversalParams::ShippingCost))
         }
        def shipping_cost=(_shipping_cost); end
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