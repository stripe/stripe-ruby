# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      class OffSessionPaymentCreateParams < ::Stripe::RequestParams
        class AutomaticTax < ::Stripe::RequestParams
          # Whether to automatically calculate taxes for this OffSessionPayment.
          attr_accessor :enabled

          def initialize(enabled: nil)
            @enabled = enabled
          end
        end

        class Item < ::Stripe::RequestParams
          class OneTimePrice < ::Stripe::RequestParams
            class Item < ::Stripe::RequestParams
              class PriceData < ::Stripe::RequestParams
                class ProductData < ::Stripe::RequestParams
                  class TaxDetails < ::Stripe::RequestParams
                    # A tax location ID. Depending on the [tax code](https://docs.stripe.com/tax/tax-for-tickets/reference/tax-location-performance),
                    # this is required, optional, or not supported.
                    attr_accessor :performance_location
                    # A [tax code](https://docs.stripe.com/tax/tax-categories) ID.
                    attr_accessor :tax_code

                    def initialize(performance_location: nil, tax_code: nil)
                      @performance_location = performance_location
                      @tax_code = tax_code
                    end
                  end
                  # The product's description, meant to be displayable to the customer.
                  # Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
                  attr_accessor :description
                  # A list of URLs of images for this product, meant to be displayable to the customer.
                  attr_accessor :images
                  # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to the product.
                  # This can be useful for storing additional information about the product in a structured format.
                  attr_accessor :metadata
                  # The product's name, meant to be displayable to the customer.
                  attr_accessor :name
                  # Tax details for this product, including the [tax code](https://docs.stripe.com/tax/tax-codes)
                  # and an optional performance location.
                  attr_accessor :tax_details
                  # A label that represents units of this product, such as seats or licenses.
                  attr_accessor :unit_label

                  def initialize(
                    description: nil,
                    images: nil,
                    metadata: nil,
                    name: nil,
                    tax_details: nil,
                    unit_label: nil
                  )
                    @description = description
                    @images = images
                    @metadata = metadata
                    @name = name
                    @tax_details = tax_details
                    @unit_label = unit_label
                  end
                end
                # The ID of the [Product](https://docs.stripe.com/api/products) that this
                # [Price](https://docs.stripe.com/api/prices) will belong to.
                # Provide exactly one of `product` or `product_data`.
                attr_accessor :product
                # Data used to generate a new [Product](https://docs.stripe.com/api/products) object inline.
                # Provide exactly one of `product` or `product_data`.
                attr_accessor :product_data
                # Specifies whether the price is considered inclusive of taxes or exclusive of taxes.
                # One of `inclusive`, `exclusive`, or `unspecified`.
                attr_accessor :tax_behavior
                # The amount to charge per unit and its currency. Specify `value` as a non-negative integer in
                # the currency's minor unit (for example, `100` for USD 1.00).
                attr_accessor :unit_amount

                def initialize(product: nil, product_data: nil, tax_behavior: nil, unit_amount: nil)
                  @product = product
                  @product_data = product_data
                  @tax_behavior = tax_behavior
                  @unit_amount = unit_amount
                end
              end
              # The ID of an existing one-time [Price](https://docs.stripe.com/api/prices).
              # Provide exactly one of `price` or `price_data`.
              attr_accessor :price
              # Data used to generate a new one-time [Price](https://docs.stripe.com/api/prices) object inline.
              # Provide exactly one of `price` or `price_data`.
              attr_accessor :price_data
              # Quantity for this item.
              attr_accessor :quantity

              def initialize(price: nil, price_data: nil, quantity: nil)
                @price = price
                @price_data = price_data
                @quantity = quantity
              end
            end
            # The list of one-time prices and quantities the customer will purchase. Contains 1 to 10 items.
            attr_accessor :items

            def initialize(items: nil)
              @items = items
            end
          end
          # Configuration for the one-time price item.
          attr_accessor :one_time_price
          # The type of item. Currently, only `one_time_price` is supported.
          attr_accessor :type

          def initialize(one_time_price: nil, type: nil)
            @one_time_price = one_time_price
            @type = type
          end
        end

        class PaymentMethodData < ::Stripe::RequestParams
          class BillingDetails < ::Stripe::RequestParams
            class Address < ::Stripe::RequestParams
              # City, district, suburb, town, or village.
              attr_accessor :city
              # Two-letter country code (ISO 3166-1 alpha-2).
              attr_accessor :country
              # Address line 1, such as the street, PO Box, or company name.
              attr_accessor :line1
              # Address line 2, such as the apartment, suite, unit, or building.
              attr_accessor :line2
              # ZIP or postal code.
              attr_accessor :postal_code
              # State, county, province, or region (ISO 3166-2).
              attr_accessor :state

              def initialize(
                city: nil,
                country: nil,
                line1: nil,
                line2: nil,
                postal_code: nil,
                state: nil
              )
                @city = city
                @country = country
                @line1 = line1
                @line2 = line2
                @postal_code = postal_code
                @state = state
              end
            end
            # Billing address.
            attr_accessor :address
            # Email address.
            attr_accessor :email
            # Full name.
            attr_accessor :name
            # Billing phone number (including extension).
            attr_accessor :phone

            def initialize(address: nil, email: nil, name: nil, phone: nil)
              @address = address
              @email = email
              @name = name
              @phone = phone
            end
          end

          class Card < ::Stripe::RequestParams
            class NetworkToken < ::Stripe::RequestParams
              # Two-digit number representing the network token's expiration month.
              attr_accessor :exp_month
              # Four-digit number representing the network token's expiration year.
              attr_accessor :exp_year
              # The full network token number.
              attr_accessor :number
              # The tokenization method used to generate the network token.
              attr_accessor :tokenization_method

              def initialize(exp_month: nil, exp_year: nil, number: nil, tokenization_method: nil)
                @exp_month = exp_month
                @exp_year = exp_year
                @number = number
                @tokenization_method = tokenization_method
              end
            end
            # The card expiration month.
            attr_accessor :exp_month
            # The card expiration year.
            attr_accessor :exp_year
            # The last four digits of the underlying card number.
            attr_accessor :last4
            # The network token credential to use with the card.
            attr_accessor :network_token
            # The card number.
            attr_accessor :number

            def initialize(
              exp_month: nil,
              exp_year: nil,
              last4: nil,
              network_token: nil,
              number: nil
            )
              @exp_month = exp_month
              @exp_year = exp_year
              @last4 = last4
              @network_token = network_token
              @number = number
            end
          end
          # Billing information associated with the payment method.
          attr_accessor :billing_details
          # Contains card details that can be used to create a card PaymentMethod for PCI compliant users.
          attr_accessor :card
          # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
          attr_accessor :type

          def initialize(billing_details: nil, card: nil, type: nil)
            @billing_details = billing_details
            @card = card
            @type = type
          end
        end

        class PaymentMethodOptions < ::Stripe::RequestParams
          class Card < ::Stripe::RequestParams
            # Indicates whether the saved card is used for a recurring or unscheduled payment.
            attr_accessor :stored_credential_usage

            def initialize(stored_credential_usage: nil)
              @stored_credential_usage = stored_credential_usage
            end
          end
          # Payment method options for the card payment type.
          attr_accessor :card

          def initialize(card: nil)
            @card = card
          end
        end

        class RawAmount < ::Stripe::RequestParams
          # The amount to collect and its currency.
          attr_accessor :amount

          def initialize(amount: nil)
            @amount = amount
          end
        end

        class Retries < ::Stripe::RequestParams
          # Whether Stripe should retry failed payment attempts.
          attr_accessor :enabled

          def initialize(enabled: nil)
            @enabled = enabled
          end
        end

        class TransferData < ::Stripe::RequestParams
          # The amount transferred to the destination account. This transfer will occur
          # automatically after the payment succeeds. If no amount is specified, by default
          # the entire payment amount is transferred to the destination account. The amount
          # must be less than or equal to the
          # [amount_requested](https://docs.stripe.com/api/v2/off-session-payments/object?api-version=2025-05-28.preview#v2_off_session_payment_object-amount_requested),
          # and must be a positive integer representing how much to transfer in the smallest
          # currency unit (e.g., 100 cents to charge $1.00).
          attr_accessor :amount
          # The account (if any) that the payment is attributed to for tax reporting, and
          # where funds from the payment are transferred to after payment success.
          attr_accessor :destination

          def initialize(amount: nil, destination: nil)
            @amount = amount
            @destination = destination
          end
        end
        # The amount of the application fee (if any) that will be requested to be applied to the
        # payment and transferred to the application owner's Stripe account.
        attr_accessor :application_fee_amount
        # Settings for automatic tax calculation.
        attr_accessor :automatic_tax
        # Three-letter ISO currency code, in lowercase.
        attr_accessor :currency
        # ID of the Customer to which this OffSessionPayment belongs.
        # Provide exactly one of customer or customer_account.
        attr_accessor :customer
        # ID of the Account representing the customer to which this OffSessionPayment belongs.
        # Provide exactly one of customer or customer_account.
        # Payment methods attached to other Accounts cannot be used with this OffSessionPayment.
        attr_accessor :customer_account
        # An arbitrary string attached to the object. Often useful for displaying to users.
        attr_accessor :description
        # A list of items the customer will purchase.
        attr_accessor :items
        # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can
        # attach to an object. This can be useful for storing additional information about
        # the object in a structured format. Learn more about
        # [storing information in metadata](https://docs.stripe.com/payments/payment-intents#storing-information-in-metadata).
        attr_accessor :metadata
        # The account (if any) for which the funds of the OffSessionPayment are intended.
        attr_accessor :on_behalf_of
        # ID of the payment method used in this OffSessionPayment.
        attr_accessor :payment_method
        # If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appear in the payment_method property on the OffSessionPayment.
        attr_accessor :payment_method_data
        # Payment method options for the off-session payment.
        attr_accessor :payment_method_options
        # The amount to collect without itemization.
        attr_accessor :raw_amount
        # Retry configuration for this OffSessionPayment.
        attr_accessor :retries
        # Text that appears on the customer's statement as the statement descriptor for a
        # non-card charge. This value overrides the account's default statement descriptor.
        # For information about requirements, including the 22-character limit, see the
        # [Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
        attr_accessor :statement_descriptor
        # Provides information about a card charge. Concatenated to the account's
        # [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static)
        # to form the complete statement descriptor that appears on the customer's statement.
        attr_accessor :statement_descriptor_suffix
        # Provides a way to schedule deferred payments for cards and debits, in YYYY-MM-DD format.
        attr_accessor :target_date
        # Test clock that can be used to advance the retry attempts in a sandbox.
        attr_accessor :test_clock
        # The data that automatically creates a Transfer after the payment finalizes. Learn more about the use case for [connected accounts](https://docs.stripe.com/payments/connected-accounts).
        attr_accessor :transfer_data

        def initialize(
          application_fee_amount: nil,
          automatic_tax: nil,
          currency: nil,
          customer: nil,
          customer_account: nil,
          description: nil,
          items: nil,
          metadata: nil,
          on_behalf_of: nil,
          payment_method: nil,
          payment_method_data: nil,
          payment_method_options: nil,
          raw_amount: nil,
          retries: nil,
          statement_descriptor: nil,
          statement_descriptor_suffix: nil,
          target_date: nil,
          test_clock: nil,
          transfer_data: nil
        )
          @application_fee_amount = application_fee_amount
          @automatic_tax = automatic_tax
          @currency = currency
          @customer = customer
          @customer_account = customer_account
          @description = description
          @items = items
          @metadata = metadata
          @on_behalf_of = on_behalf_of
          @payment_method = payment_method
          @payment_method_data = payment_method_data
          @payment_method_options = payment_method_options
          @raw_amount = raw_amount
          @retries = retries
          @statement_descriptor = statement_descriptor
          @statement_descriptor_suffix = statement_descriptor_suffix
          @target_date = target_date
          @test_clock = test_clock
          @transfer_data = transfer_data
        end
      end
    end
  end
end
