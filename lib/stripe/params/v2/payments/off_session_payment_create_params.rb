# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      class OffSessionPaymentCreateParams < ::Stripe::RequestParams
        class AmountDetails < ::Stripe::RequestParams
          class LineItem < ::Stripe::RequestParams
            class Tax < ::Stripe::RequestParams
              # Total portion of the amount that is for tax.
              attr_accessor :total_tax_amount

              def initialize(total_tax_amount: nil)
                @total_tax_amount = total_tax_amount
              end
            end
            # The amount an item was discounted for. Positive integer.
            attr_accessor :discount_amount
            # Unique identifier of the product. At most 12 characters long.
            attr_accessor :product_code
            # Name of the product. At most 100 characters long.
            attr_accessor :product_name
            # Number of items of the product. Positive integer.
            attr_accessor :quantity
            # Contains information about the tax on the item.
            attr_accessor :tax
            # Cost of the product. Positive integer.
            attr_accessor :unit_cost
            # A unit of measure for the line item, such as gallons, feet, meters, etc.
            # The maximum length is 12 characters.
            attr_accessor :unit_of_measure

            def initialize(
              discount_amount: nil,
              product_code: nil,
              product_name: nil,
              quantity: nil,
              tax: nil,
              unit_cost: nil,
              unit_of_measure: nil
            )
              @discount_amount = discount_amount
              @product_code = product_code
              @product_name = product_name
              @quantity = quantity
              @tax = tax
              @unit_cost = unit_cost
              @unit_of_measure = unit_of_measure
            end
          end

          class Shipping < ::Stripe::RequestParams
            # Portion of the amount that is for shipping.
            attr_accessor :amount
            # The postal code that represents the shipping source.
            attr_accessor :from_postal_code
            # The postal code that represents the shipping destination.
            attr_accessor :to_postal_code

            def initialize(amount: nil, from_postal_code: nil, to_postal_code: nil)
              @amount = amount
              @from_postal_code = from_postal_code
              @to_postal_code = to_postal_code
            end
          end

          class Tax < ::Stripe::RequestParams
            # Total portion of the amount that is for tax.
            attr_accessor :total_tax_amount

            def initialize(total_tax_amount: nil)
              @total_tax_amount = total_tax_amount
            end
          end
          # The amount the total transaction was discounted for.
          attr_accessor :discount_amount
          # Set to `false` to return arithmetic validation errors in the response without failing the request. Use this when you want the operation to proceed regardless of arithmetic errors in the line item data.
          # Omit or set to `true` to immediately return a 400 error when arithmetic validation fails. Use this for strict validation that prevents processing with line item data that has arithmetic inconsistencies.
          # For card payments, Stripe doesn't send line item data to card networks if there's an arithmetic validation error.
          attr_accessor :enforce_arithmetic_validation
          # A list of line items, each containing information about a product in the OffSessionPayment. There is a maximum of 10 line items.
          attr_accessor :line_items
          # Contains information about the shipping portion of the amount.
          attr_accessor :shipping
          # Contains information about the tax portion of the amount.
          attr_accessor :tax

          def initialize(
            discount_amount: nil,
            enforce_arithmetic_validation: nil,
            line_items: nil,
            shipping: nil,
            tax: nil
          )
            @discount_amount = discount_amount
            @enforce_arithmetic_validation = enforce_arithmetic_validation
            @line_items = line_items
            @shipping = shipping
            @tax = tax
          end
        end

        class Capture < ::Stripe::RequestParams
          # The method to use to capture the payment.
          attr_accessor :capture_method

          def initialize(capture_method: nil)
            @capture_method = capture_method
          end
        end

        class PaymentDetails < ::Stripe::RequestParams
          # A unique value to identify the customer. This field is applicable only for card payments. For card payments, this field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks.
          attr_accessor :customer_reference
          # A unique value assigned by the business to identify the transaction. Required for L2 and L3 rates.
          # For Cards, this field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks.
          attr_accessor :order_reference

          def initialize(customer_reference: nil, order_reference: nil)
            @customer_reference = customer_reference
            @order_reference = order_reference
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
            # The card CVC.
            attr_accessor :cvc
            # The card expiration month.
            attr_accessor :exp_month
            # The card expiration year.
            attr_accessor :exp_year
            # The card number.
            attr_accessor :number

            def initialize(cvc: nil, exp_month: nil, exp_year: nil, number: nil)
              @cvc = cvc
              @exp_month = exp_month
              @exp_year = exp_year
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
            # The merchant category code for this transaction. Used in interchange and authorization to improve auth rates.
            attr_accessor :mcc
            # If you are making a Credential On File transaction with a previously saved card, you should pass the Network Transaction ID
            # from a prior initial authorization on Stripe (from a successful SetupIntent or a PaymentIntent with `setup_future_usage` set),
            # or one that you have obtained from another payment processor. This is a token from the network which uniquely identifies the transaction.
            # Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data.
            # Note that you should pass in a Network Transaction ID if you have one, regardless of whether this is a
            # Customer-Initiated Transaction (CIT) or a Merchant-Initiated Transaction (MIT).
            attr_accessor :network_transaction_id

            def initialize(mcc: nil, network_transaction_id: nil)
              @mcc = mcc
              @network_transaction_id = network_transaction_id
            end
          end
          # Payment method options for the card payment type.
          attr_accessor :card

          def initialize(card: nil)
            @card = card
          end
        end

        class PaymentsOrchestration < ::Stripe::RequestParams
          # True when you want to enable payments orchestration for this off-session payment. False otherwise.
          attr_accessor :enabled

          def initialize(enabled: nil)
            @enabled = enabled
          end
        end

        class RetryDetails < ::Stripe::RequestParams
          # The pre-configured retry policy to use for the payment.
          attr_accessor :retry_policy
          # Indicates the strategy for how you want Stripe to retry the payment.
          attr_accessor :retry_strategy

          def initialize(retry_policy: nil, retry_strategy: nil)
            @retry_policy = retry_policy
            @retry_strategy = retry_strategy
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
        # The “presentment amount” to be collected from the customer.
        attr_accessor :amount
        # Provides industry-specific information about the amount.
        attr_accessor :amount_details
        # The amount of the application fee (if any) that will be requested to be applied to the
        # payment and transferred to the application owner's Stripe account.
        attr_accessor :application_fee_amount
        # The frequency of the underlying payment.
        attr_accessor :cadence
        # Details about the capture configuration for the OffSessionPayment.
        attr_accessor :capture
        # ID of the Customer to which this OffSessionPayment belongs.
        attr_accessor :customer
        # An arbitrary string attached to the object. Often useful for displaying to users.
        attr_accessor :description
        # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can
        # attach to an object. This can be useful for storing additional information about
        # the object in a structured format. Learn more about
        # [storing information in metadata](https://docs.stripe.com/payments/payment-intents#storing-information-in-metadata).
        attr_accessor :metadata
        # The account (if any) for which the funds of the OffSessionPayment are intended.
        attr_accessor :on_behalf_of
        # Provides industry-specific information about the payment.
        attr_accessor :payment_details
        # ID of the payment method used in this OffSessionPayment.
        attr_accessor :payment_method
        # If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appear in the payment_method property on the OffSessionPayment.
        attr_accessor :payment_method_data
        # Payment method options for the off-session payment.
        attr_accessor :payment_method_options
        # Details about the payments orchestration configuration.
        attr_accessor :payments_orchestration
        # Details about the OffSessionPayment retries.
        attr_accessor :retry_details
        # Text that appears on the customer’s statement as the statement descriptor for a
        # non-card charge. This value overrides the account’s default statement descriptor.
        # For information about requirements, including the 22-character limit, see the
        # [Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
        attr_accessor :statement_descriptor
        # Provides information about a card charge. Concatenated to the account’s
        # [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static)
        # to form the complete statement descriptor that appears on the customer’s statement.
        attr_accessor :statement_descriptor_suffix
        # Test clock that can be used to advance the retry attempts in a sandbox.
        attr_accessor :test_clock
        # The data that automatically creates a Transfer after the payment finalizes. Learn more about the use case for [connected accounts](https://docs.stripe.com/payments/connected-accounts).
        attr_accessor :transfer_data

        def initialize(
          amount: nil,
          amount_details: nil,
          application_fee_amount: nil,
          cadence: nil,
          capture: nil,
          customer: nil,
          description: nil,
          metadata: nil,
          on_behalf_of: nil,
          payment_details: nil,
          payment_method: nil,
          payment_method_data: nil,
          payment_method_options: nil,
          payments_orchestration: nil,
          retry_details: nil,
          statement_descriptor: nil,
          statement_descriptor_suffix: nil,
          test_clock: nil,
          transfer_data: nil
        )
          @amount = amount
          @amount_details = amount_details
          @application_fee_amount = application_fee_amount
          @cadence = cadence
          @capture = capture
          @customer = customer
          @description = description
          @metadata = metadata
          @on_behalf_of = on_behalf_of
          @payment_details = payment_details
          @payment_method = payment_method
          @payment_method_data = payment_method_data
          @payment_method_options = payment_method_options
          @payments_orchestration = payments_orchestration
          @retry_details = retry_details
          @statement_descriptor = statement_descriptor
          @statement_descriptor_suffix = statement_descriptor_suffix
          @test_clock = test_clock
          @transfer_data = transfer_data
        end
      end
    end
  end
end
