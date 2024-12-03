# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class TransactionLineItem < APIResource
      class Reversal < Stripe::StripeObject
        # The `id` of the line item to reverse in the original transaction.
        sig { returns(String) }
        attr_reader :original_line_item
      end
      # The line item amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes were calculated on top of this amount.
      sig { returns(Integer) }
      attr_reader :amount

      # The amount of tax calculated for this line item, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      sig { returns(Integer) }
      attr_reader :amount_tax

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The ID of an existing [Product](https://stripe.com/docs/api/products/object).
      sig { returns(T.nilable(String)) }
      attr_reader :product

      # The number of units of the item being purchased. For reversals, this is the quantity reversed.
      sig { returns(Integer) }
      attr_reader :quantity

      # A custom identifier for this line item in the transaction.
      sig { returns(String) }
      attr_reader :reference

      # If `type=reversal`, contains information about what was reversed.
      sig { returns(T.nilable(Reversal)) }
      attr_reader :reversal

      # Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes.
      sig { returns(String) }
      attr_reader :tax_behavior

      # The [tax code](https://stripe.com/docs/tax/tax-categories) ID used for this resource.
      sig { returns(String) }
      attr_reader :tax_code

      # If `reversal`, this line item reverses an earlier transaction.
      sig { returns(String) }
      attr_reader :type
    end
  end
end