# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class TransactionLineItem < APIResource
      class Reversal < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :original_line_item
      end
      sig { returns(Integer) }
      # The line item amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes were calculated on top of this amount.
      attr_reader :amount
      sig { returns(Integer) }
      # The amount of tax calculated for this line item, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      attr_reader :amount_tax
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T.nilable(T::Hash[String, String])) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(String)) }
      # The ID of an existing [Product](https://stripe.com/docs/api/products/object).
      attr_reader :product
      sig { returns(Integer) }
      # The number of units of the item being purchased. For reversals, this is the quantity reversed.
      attr_reader :quantity
      sig { returns(String) }
      # A custom identifier for this line item in the transaction.
      attr_reader :reference
      sig { returns(T.nilable(Reversal)) }
      # If `type=reversal`, contains information about what was reversed.
      attr_reader :reversal
      sig { returns(String) }
      # Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes.
      attr_reader :tax_behavior
      sig { returns(String) }
      # The [tax code](https://stripe.com/docs/tax/tax-categories) ID used for this resource.
      attr_reader :tax_code
      sig { returns(String) }
      # If `reversal`, this line item reverses an earlier transaction.
      attr_reader :type
    end
  end
end