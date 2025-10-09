# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # An Order describes a purchase being made by a customer, including the
  # products & quantities being purchased, the order status, the payment information,
  # and the billing/shipping details.
  #
  # Related guide: [Orders overview](https://stripe.com/docs/orders)
  class Order < APIResource
    class AutomaticTax < ::Stripe::StripeObject
      # Whether Stripe automatically computes tax on this Order.
      sig { returns(T::Boolean) }
      def enabled; end
      # The status of the most recent automated tax calculation for this Order.
      sig { returns(T.nilable(String)) }
      def status; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class BillingDetails < ::Stripe::StripeObject
      class Address < ::Stripe::StripeObject
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        def city; end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        # Address line 1, such as the street, PO Box, or company name.
        sig { returns(T.nilable(String)) }
        def line1; end
        # Address line 2, such as the apartment, suite, unit, or building.
        sig { returns(T.nilable(String)) }
        def line2; end
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        def state; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Billing address for the order.
      sig { returns(T.nilable(Address)) }
      def address; end
      # Email address for the order.
      sig { returns(T.nilable(String)) }
      def email; end
      # Full name for the order.
      sig { returns(T.nilable(String)) }
      def name; end
      # Billing phone number for the order (including extension).
      sig { returns(T.nilable(String)) }
      def phone; end
      def self.inner_class_types
        @inner_class_types = {address: Address}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Payment < ::Stripe::StripeObject
      class Settings < ::Stripe::StripeObject
        class AutomaticPaymentMethods < ::Stripe::StripeObject
          # Whether this Order has been opted into managing payment method types via the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
          sig { returns(T::Boolean) }
          def enabled; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class PaymentMethodOptions < ::Stripe::StripeObject
          class AcssDebit < ::Stripe::StripeObject
            class MandateOptions < ::Stripe::StripeObject
              # A URL for custom mandate text
              sig { returns(T.nilable(String)) }
              def custom_mandate_url; end
              # Description of the interval. Only required if the 'payment_schedule' parameter is 'interval' or 'combined'.
              sig { returns(T.nilable(String)) }
              def interval_description; end
              # Payment schedule for the mandate.
              sig { returns(T.nilable(String)) }
              def payment_schedule; end
              # Transaction type of the mandate.
              sig { returns(T.nilable(String)) }
              def transaction_type; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Attribute for field mandate_options
            sig { returns(T.nilable(MandateOptions)) }
            def mandate_options; end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
            sig { returns(T.nilable(String)) }
            def target_date; end
            # Bank account verification method.
            sig { returns(T.nilable(String)) }
            def verification_method; end
            def self.inner_class_types
              @inner_class_types = {mandate_options: MandateOptions}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class AfterpayClearpay < ::Stripe::StripeObject
            # Controls when the funds will be captured from the customer's account.
            sig { returns(T.nilable(String)) }
            def capture_method; end
            # Order identifier shown to the user in Afterpay's online portal. We recommend using a value that helps you answer any questions a customer might have about the payment. The identifier is limited to 128 characters and may contain only letters, digits, underscores, backslashes and dashes.
            sig { returns(T.nilable(String)) }
            def reference; end
            # Indicates that you intend to make future payments with the payment method.
            #
            # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
            #
            # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
            #
            # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Alipay < ::Stripe::StripeObject
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Bancontact < ::Stripe::StripeObject
            # Preferred language of the Bancontact authorization page that the customer is redirected to.
            sig { returns(String) }
            def preferred_language; end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Card < ::Stripe::StripeObject
            # Controls when the funds will be captured from the customer's account.
            sig { returns(String) }
            def capture_method; end
            # Indicates that you intend to make future payments with the payment method.
            #
            # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
            #
            # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
            #
            # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class CustomerBalance < ::Stripe::StripeObject
            class BankTransfer < ::Stripe::StripeObject
              class EuBankTransfer < ::Stripe::StripeObject
                # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
                sig { returns(String) }
                def country; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Attribute for field eu_bank_transfer
              sig { returns(T.nilable(EuBankTransfer)) }
              def eu_bank_transfer; end
              # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
              #
              # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
              sig { returns(T.nilable(T::Array[String])) }
              def requested_address_types; end
              # The bank transfer type that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
              sig { returns(T.nilable(String)) }
              def type; end
              def self.inner_class_types
                @inner_class_types = {eu_bank_transfer: EuBankTransfer}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Attribute for field bank_transfer
            sig { returns(T.nilable(BankTransfer)) }
            def bank_transfer; end
            # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
            sig { returns(T.nilable(String)) }
            def funding_type; end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            def self.inner_class_types
              @inner_class_types = {bank_transfer: BankTransfer}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Ideal < ::Stripe::StripeObject
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Klarna < ::Stripe::StripeObject
            # Controls when the funds will be captured from the customer's account.
            sig { returns(T.nilable(String)) }
            def capture_method; end
            # Preferred locale of the Klarna checkout page that the customer is redirected to.
            sig { returns(T.nilable(String)) }
            def preferred_locale; end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Link < ::Stripe::StripeObject
            # Controls when the funds will be captured from the customer's account.
            sig { returns(T.nilable(String)) }
            def capture_method; end
            # [Deprecated] This is a legacy parameter that no longer has any function.
            sig { returns(T.nilable(String)) }
            def persistent_token; end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Oxxo < ::Stripe::StripeObject
            # The number of calendar days before an OXXO invoice expires. For example, if you create an OXXO invoice on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
            sig { returns(Integer) }
            def expires_after_days; end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class P24 < ::Stripe::StripeObject
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Paypal < ::Stripe::StripeObject
            class LineItem < ::Stripe::StripeObject
              class Tax < ::Stripe::StripeObject
                # The tax for a single unit of the line item in minor units. Cannot be a negative number.
                sig { returns(Integer) }
                def amount; end
                # The tax behavior for the line item.
                sig { returns(String) }
                def behavior; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Type of the line item.
              sig { returns(T.nilable(String)) }
              def category; end
              # Description of the line item.
              sig { returns(T.nilable(String)) }
              def description; end
              # Descriptive name of the line item.
              sig { returns(String) }
              def name; end
              # Quantity of the line item. Cannot be a negative number.
              sig { returns(Integer) }
              def quantity; end
              # Client facing stock keeping unit, article number or similar.
              sig { returns(T.nilable(String)) }
              def sku; end
              # The Stripe account ID of the connected account that sells the item. This is only needed when using [Separate Charges and Transfers](https://docs.stripe.com/connect/separate-charges-and-transfers).
              sig { returns(T.nilable(String)) }
              def sold_by; end
              # Attribute for field tax
              sig { returns(T.nilable(Tax)) }
              def tax; end
              # Price for a single unit of the line item in minor units. Cannot be a negative number.
              sig { returns(Integer) }
              def unit_amount; end
              def self.inner_class_types
                @inner_class_types = {tax: Tax}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Controls when the funds will be captured from the customer's account.
            sig { returns(T.nilable(String)) }
            def capture_method; end
            # The line items purchased by the customer.
            sig { returns(T.nilable(T::Array[LineItem])) }
            def line_items; end
            # Preferred locale of the PayPal checkout page that the customer is redirected to.
            sig { returns(T.nilable(String)) }
            def preferred_locale; end
            # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
            sig { returns(T.nilable(String)) }
            def reference; end
            # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
            sig { returns(T.nilable(String)) }
            def reference_id; end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
            sig { returns(T.nilable(T::Array[String])) }
            def subsellers; end
            def self.inner_class_types
              @inner_class_types = {line_items: LineItem}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class SepaDebit < ::Stripe::StripeObject
            class MandateOptions < ::Stripe::StripeObject
              # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
              sig { returns(T.nilable(String)) }
              def reference_prefix; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Attribute for field mandate_options
            sig { returns(T.nilable(MandateOptions)) }
            def mandate_options; end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
            sig { returns(T.nilable(String)) }
            def target_date; end
            def self.inner_class_types
              @inner_class_types = {mandate_options: MandateOptions}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Sofort < ::Stripe::StripeObject
            # Preferred language of the SOFORT authorization page that the customer is redirected to.
            sig { returns(T.nilable(String)) }
            def preferred_language; end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class WechatPay < ::Stripe::StripeObject
            # The app ID registered with WeChat Pay. Only required when client is ios or android.
            sig { returns(T.nilable(String)) }
            def app_id; end
            # The client type that the end customer will pay from
            sig { returns(T.nilable(String)) }
            def client; end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Attribute for field acss_debit
          sig { returns(T.nilable(AcssDebit)) }
          def acss_debit; end
          # Attribute for field afterpay_clearpay
          sig { returns(T.nilable(AfterpayClearpay)) }
          def afterpay_clearpay; end
          # Attribute for field alipay
          sig { returns(T.nilable(Alipay)) }
          def alipay; end
          # Attribute for field bancontact
          sig { returns(T.nilable(Bancontact)) }
          def bancontact; end
          # Attribute for field card
          sig { returns(T.nilable(Card)) }
          def card; end
          # Attribute for field customer_balance
          sig { returns(T.nilable(CustomerBalance)) }
          def customer_balance; end
          # Attribute for field ideal
          sig { returns(T.nilable(Ideal)) }
          def ideal; end
          # Attribute for field klarna
          sig { returns(T.nilable(Klarna)) }
          def klarna; end
          # Attribute for field link
          sig { returns(T.nilable(Link)) }
          def link; end
          # Attribute for field oxxo
          sig { returns(T.nilable(Oxxo)) }
          def oxxo; end
          # Attribute for field p24
          sig { returns(T.nilable(P24)) }
          def p24; end
          # Attribute for field paypal
          sig { returns(T.nilable(Paypal)) }
          def paypal; end
          # Attribute for field sepa_debit
          sig { returns(T.nilable(SepaDebit)) }
          def sepa_debit; end
          # Attribute for field sofort
          sig { returns(T.nilable(Sofort)) }
          def sofort; end
          # Attribute for field wechat_pay
          sig { returns(T.nilable(WechatPay)) }
          def wechat_pay; end
          def self.inner_class_types
            @inner_class_types = {
              acss_debit: AcssDebit,
              afterpay_clearpay: AfterpayClearpay,
              alipay: Alipay,
              bancontact: Bancontact,
              card: Card,
              customer_balance: CustomerBalance,
              ideal: Ideal,
              klarna: Klarna,
              link: Link,
              oxxo: Oxxo,
              p24: P24,
              paypal: Paypal,
              sepa_debit: SepaDebit,
              sofort: Sofort,
              wechat_pay: WechatPay,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class TransferData < ::Stripe::StripeObject
          # The amount that will be transferred automatically when the order is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
          sig { returns(T.nilable(Integer)) }
          def amount; end
          # ID of the Connected account receiving the transfer.
          sig { returns(T.any(String, ::Stripe::Account)) }
          def destination; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
        sig { returns(T.nilable(Integer)) }
        def application_fee_amount; end
        # Indicates whether order has been opted into using [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods) to manage payment method types.
        sig { returns(T.nilable(AutomaticPaymentMethods)) }
        def automatic_payment_methods; end
        # PaymentMethod-specific configuration to provide to the order's PaymentIntent.
        sig { returns(T.nilable(PaymentMethodOptions)) }
        def payment_method_options; end
        # The list of [payment method types](https://stripe.com/docs/payments/payment-methods/overview) to provide to the order's PaymentIntent. Do not include this attribute if you prefer to manage your payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
        sig { returns(T.nilable(T::Array[String])) }
        def payment_method_types; end
        # The URL to redirect the customer to after they authenticate their payment.
        sig { returns(T.nilable(String)) }
        def return_url; end
        # For non-card charges, you can use this value as the complete description that appears on your customers' statements. Must contain at least one letter, maximum 22 characters.
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        # Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
        sig { returns(T.nilable(String)) }
        def statement_descriptor_suffix; end
        # Provides configuration for completing a transfer for the order after it is paid.
        sig { returns(T.nilable(TransferData)) }
        def transfer_data; end
        def self.inner_class_types
          @inner_class_types = {
            automatic_payment_methods: AutomaticPaymentMethods,
            payment_method_options: PaymentMethodOptions,
            transfer_data: TransferData,
          }
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # ID of the payment intent associated with this order. Null when the order is `open`.
      sig { returns(T.nilable(T.any(String, ::Stripe::PaymentIntent))) }
      def payment_intent; end
      # Settings describing how the order should configure generated PaymentIntents.
      sig { returns(T.nilable(Settings)) }
      def settings; end
      # The status of the underlying payment associated with this order, if any. Null when the order is `open`.
      sig { returns(T.nilable(String)) }
      def status; end
      def self.inner_class_types
        @inner_class_types = {settings: Settings}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class ShippingCost < ::Stripe::StripeObject
      class Tax < ::Stripe::StripeObject
        # Amount of tax applied for this rate.
        sig { returns(Integer) }
        def amount; end
        # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
        #
        # Related guide: [Tax rates](/billing/taxes/tax-rates)
        sig { returns(::Stripe::TaxRate) }
        def rate; end
        # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
        sig { returns(T.nilable(String)) }
        def taxability_reason; end
        # The amount on which tax is calculated, in cents (or local equivalent).
        sig { returns(T.nilable(Integer)) }
        def taxable_amount; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Total shipping cost before any discounts or taxes are applied.
      sig { returns(Integer) }
      def amount_subtotal; end
      # Total tax amount applied due to shipping costs. If no tax was applied, defaults to 0.
      sig { returns(Integer) }
      def amount_tax; end
      # Total shipping cost after discounts and taxes are applied.
      sig { returns(Integer) }
      def amount_total; end
      # The ID of the ShippingRate for this order.
      sig { returns(T.nilable(T.any(String, ::Stripe::ShippingRate))) }
      def shipping_rate; end
      # The taxes applied to the shipping rate.
      sig { returns(T.nilable(T::Array[Tax])) }
      def taxes; end
      def self.inner_class_types
        @inner_class_types = {taxes: Tax}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class ShippingDetails < ::Stripe::StripeObject
      class Address < ::Stripe::StripeObject
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        def city; end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        # Address line 1, such as the street, PO Box, or company name.
        sig { returns(T.nilable(String)) }
        def line1; end
        # Address line 2, such as the apartment, suite, unit, or building.
        sig { returns(T.nilable(String)) }
        def line2; end
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        def state; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Recipient shipping address. Required if the order includes products that are shippable.
      sig { returns(T.nilable(Address)) }
      def address; end
      # Recipient name.
      sig { returns(T.nilable(String)) }
      def name; end
      # Recipient phone (including extension).
      sig { returns(T.nilable(String)) }
      def phone; end
      def self.inner_class_types
        @inner_class_types = {address: Address}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class TaxDetails < ::Stripe::StripeObject
      class TaxId < ::Stripe::StripeObject
        # The type of the tax ID, one of `ad_nrt`, `ar_cuit`, `eu_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `cn_tin`, `co_nit`, `cr_tin`, `do_rcn`, `ec_ruc`, `eu_oss_vat`, `hr_oib`, `pe_ruc`, `ro_tin`, `rs_pib`, `sv_nit`, `uy_ruc`, `ve_rif`, `vn_tin`, `gb_vat`, `nz_gst`, `au_abn`, `au_arn`, `in_gst`, `no_vat`, `no_voec`, `za_vat`, `ch_vat`, `mx_rfc`, `sg_uen`, `ru_inn`, `ru_kpp`, `ca_bn`, `hk_br`, `es_cif`, `tw_vat`, `th_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `li_uid`, `li_vat`, `my_itn`, `us_ein`, `kr_brn`, `ca_qst`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `my_sst`, `sg_gst`, `ae_trn`, `cl_tin`, `sa_vat`, `id_npwp`, `my_frp`, `il_vat`, `ge_vat`, `ua_vat`, `is_vat`, `bg_uic`, `hu_tin`, `si_tin`, `ke_pin`, `tr_tin`, `eg_tin`, `ph_tin`, `al_tin`, `bh_vat`, `kz_bin`, `ng_tin`, `om_vat`, `de_stn`, `ch_uid`, `tz_vat`, `uz_vat`, `uz_tin`, `md_vat`, `ma_vat`, `by_tin`, `ao_tin`, `bs_tin`, `bb_tin`, `cd_nif`, `mr_nif`, `me_pib`, `zw_tin`, `ba_tin`, `gn_nif`, `mk_vat`, `sr_fin`, `sn_ninea`, `am_tin`, `np_pan`, `tj_tin`, `ug_tin`, `zm_tin`, `kh_tin`, `aw_tin`, `az_tin`, `bd_bin`, `bj_ifu`, `et_tin`, `kg_tin`, `la_tin`, `cm_niu`, `cv_nif`, `bf_ifu`, or `unknown`
        sig { returns(String) }
        def type; end
        # The value of the tax ID.
        sig { returns(T.nilable(String)) }
        def value; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Describes the purchaser's tax exemption status. One of `none`, `exempt`, or `reverse`.
      sig { returns(String) }
      def tax_exempt; end
      # The purchaser's tax IDs to be used in calculation of tax for this Order.
      sig { returns(T::Array[TaxId]) }
      def tax_ids; end
      def self.inner_class_types
        @inner_class_types = {tax_ids: TaxId}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class TotalDetails < ::Stripe::StripeObject
      class Breakdown < ::Stripe::StripeObject
        class Discount < ::Stripe::StripeObject
          # The amount discounted.
          sig { returns(Integer) }
          def amount; end
          # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
          # It contains information about when the discount began, when it will end, and what it is applied to.
          #
          # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
          sig { returns(::Stripe::Discount) }
          def discount; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Tax < ::Stripe::StripeObject
          # Amount of tax applied for this rate.
          sig { returns(Integer) }
          def amount; end
          # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
          #
          # Related guide: [Tax rates](/billing/taxes/tax-rates)
          sig { returns(::Stripe::TaxRate) }
          def rate; end
          # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
          sig { returns(T.nilable(String)) }
          def taxability_reason; end
          # The amount on which tax is calculated, in cents (or local equivalent).
          sig { returns(T.nilable(Integer)) }
          def taxable_amount; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The aggregated discounts.
        sig { returns(T::Array[Discount]) }
        def discounts; end
        # The aggregated tax amounts by rate.
        sig { returns(T::Array[Tax]) }
        def taxes; end
        def self.inner_class_types
          @inner_class_types = {discounts: Discount, taxes: Tax}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # This is the sum of all the discounts.
      sig { returns(Integer) }
      def amount_discount; end
      # This is the sum of all the shipping amounts.
      sig { returns(T.nilable(Integer)) }
      def amount_shipping; end
      # This is the sum of all the tax amounts.
      sig { returns(Integer) }
      def amount_tax; end
      # Attribute for field breakdown
      sig { returns(T.nilable(Breakdown)) }
      def breakdown; end
      def self.inner_class_types
        @inner_class_types = {breakdown: Breakdown}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Order cost before any discounts or taxes are applied. A positive integer representing the subtotal of the order in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency).
    sig { returns(Integer) }
    def amount_subtotal; end
    # Total order cost after discounts and taxes are applied. A positive integer representing the cost of the order in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). To submit an order, the total must be either 0 or at least $0.50 USD or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts).
    sig { returns(Integer) }
    def amount_total; end
    # ID of the Connect application that created the Order, if any.
    sig { returns(T.nilable(T.any(String, ::Stripe::Application))) }
    def application; end
    # Attribute for field automatic_tax
    sig { returns(T.nilable(AutomaticTax)) }
    def automatic_tax; end
    # Customer billing details associated with the order.
    sig { returns(T.nilable(BillingDetails)) }
    def billing_details; end
    # The client secret of this Order. Used for client-side retrieval using a publishable key.
    #
    # The client secret can be used to complete a payment for an Order from your frontend. It should not be stored, logged, embedded in URLs, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
    #
    # Refer to our docs for [creating and processing an order](https://stripe.com/docs/orders-beta/create-and-process) to learn about how client_secret should be handled.
    sig { returns(T.nilable(String)) }
    def client_secret; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def currency; end
    # The customer which this orders belongs to.
    sig { returns(T.nilable(T.any(String, ::Stripe::Customer))) }
    def customer; end
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    def description; end
    # The discounts applied to the order. Use `expand[]=discounts` to expand each discount.
    sig { returns(T.nilable(T::Array[T.any(String, ::Stripe::Discount)])) }
    def discounts; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # A recent IP address of the purchaser used for tax reporting and tax location inference.
    sig { returns(T.nilable(String)) }
    def ip_address; end
    # A list of line items the customer is ordering. Each line item includes information about the product, the quantity, and the resulting cost. There is a maximum of 100 line items.
    sig { returns(T.nilable(::Stripe::ListObject)) }
    def line_items; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Attribute for field payment
    sig { returns(Payment) }
    def payment; end
    # The details of the customer cost of shipping, including the customer chosen ShippingRate.
    sig { returns(T.nilable(ShippingCost)) }
    def shipping_cost; end
    # Customer shipping information associated with the order.
    sig { returns(T.nilable(ShippingDetails)) }
    def shipping_details; end
    # The overall status of the order.
    sig { returns(String) }
    def status; end
    # Attribute for field tax_details
    sig { returns(T.nilable(TaxDetails)) }
    def tax_details; end
    # Attribute for field total_details
    sig { returns(TotalDetails) }
    def total_details; end
    # Cancels the order as well as the payment intent if one is attached.
    sig {
      params(params: T.any(::Stripe::OrderCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Order)
     }
    def cancel(params = {}, opts = {}); end

    # Cancels the order as well as the payment intent if one is attached.
    sig {
      params(id: String, params: T.any(::Stripe::OrderCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Order)
     }
    def self.cancel(id, params = {}, opts = {}); end

    # Creates a new open order object.
    sig {
      params(params: T.any(::Stripe::OrderCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Order)
     }
    def self.create(params = {}, opts = {}); end

    # Returns a list of your orders. The orders are returned sorted by creation date, with the most recently created orders appearing first.
    sig {
      params(params: T.any(::Stripe::OrderListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # When retrieving an order, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    sig {
      params(params: T.any(::Stripe::OrderListLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list_line_items(params = {}, opts = {}); end

    # When retrieving an order, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    sig {
      params(id: String, params: T.any(::Stripe::OrderListLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def self.list_line_items(id, params = {}, opts = {}); end

    # Reopens a submitted order.
    sig {
      params(params: T.any(::Stripe::OrderReopenParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Order)
     }
    def reopen(params = {}, opts = {}); end

    # Reopens a submitted order.
    sig {
      params(id: String, params: T.any(::Stripe::OrderReopenParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Order)
     }
    def self.reopen(id, params = {}, opts = {}); end

    # Submitting an Order transitions the status to processing and creates a PaymentIntent object so the order can be paid. If the Order has an amount_total of 0, no PaymentIntent object will be created. Once the order is submitted, its contents cannot be changed, unless the [reopen](https://docs.stripe.com/api#reopen_order) method is called.
    sig {
      params(params: T.any(::Stripe::OrderSubmitParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Order)
     }
    def submit(params = {}, opts = {}); end

    # Submitting an Order transitions the status to processing and creates a PaymentIntent object so the order can be paid. If the Order has an amount_total of 0, no PaymentIntent object will be created. Once the order is submitted, its contents cannot be changed, unless the [reopen](https://docs.stripe.com/api#reopen_order) method is called.
    sig {
      params(id: String, params: T.any(::Stripe::OrderSubmitParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Order)
     }
    def self.submit(id, params = {}, opts = {}); end

    # Updates the specific order by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    sig {
      params(id: String, params: T.any(::Stripe::OrderUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Order)
     }
    def self.update(id, params = {}, opts = {}); end
  end
end