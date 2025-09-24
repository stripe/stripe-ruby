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
    class AutomaticTax < Stripe::StripeObject
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
    class BillingDetails < Stripe::StripeObject
      class Address < Stripe::StripeObject
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
    class Payment < Stripe::StripeObject
      class Settings < Stripe::StripeObject
        class AutomaticPaymentMethods < Stripe::StripeObject
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
        class PaymentMethodOptions < Stripe::StripeObject
          class AcssDebit < Stripe::StripeObject
            class MandateOptions < Stripe::StripeObject
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
          class AfterpayClearpay < Stripe::StripeObject
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
          class Alipay < Stripe::StripeObject
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
          class Bancontact < Stripe::StripeObject
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
          class Card < Stripe::StripeObject
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
          class CustomerBalance < Stripe::StripeObject
            class BankTransfer < Stripe::StripeObject
              class EuBankTransfer < Stripe::StripeObject
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
          class Ideal < Stripe::StripeObject
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
          class Klarna < Stripe::StripeObject
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
          class Link < Stripe::StripeObject
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
          class Oxxo < Stripe::StripeObject
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
          class P24 < Stripe::StripeObject
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
          class Paypal < Stripe::StripeObject
            class LineItem < Stripe::StripeObject
              class Tax < Stripe::StripeObject
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
          class SepaDebit < Stripe::StripeObject
            class MandateOptions < Stripe::StripeObject
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
          class Sofort < Stripe::StripeObject
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
          class WechatPay < Stripe::StripeObject
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
        class TransferData < Stripe::StripeObject
          # The amount that will be transferred automatically when the order is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
          sig { returns(T.nilable(Integer)) }
          def amount; end
          # ID of the Connected account receiving the transfer.
          sig { returns(T.any(String, Stripe::Account)) }
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
      sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
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
    class ShippingCost < Stripe::StripeObject
      class Tax < Stripe::StripeObject
        # Amount of tax applied for this rate.
        sig { returns(Integer) }
        def amount; end
        # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
        #
        # Related guide: [Tax rates](/billing/taxes/tax-rates)
        sig { returns(Stripe::TaxRate) }
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
      sig { returns(T.nilable(T.any(String, Stripe::ShippingRate))) }
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
    class ShippingDetails < Stripe::StripeObject
      class Address < Stripe::StripeObject
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
    class TaxDetails < Stripe::StripeObject
      class TaxId < Stripe::StripeObject
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
    class TotalDetails < Stripe::StripeObject
      class Breakdown < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          # The amount discounted.
          sig { returns(Integer) }
          def amount; end
          # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
          # It contains information about when the discount began, when it will end, and what it is applied to.
          #
          # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
          sig { returns(Stripe::Discount) }
          def discount; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Tax < Stripe::StripeObject
          # Amount of tax applied for this rate.
          sig { returns(Integer) }
          def amount; end
          # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
          #
          # Related guide: [Tax rates](/billing/taxes/tax-rates)
          sig { returns(Stripe::TaxRate) }
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
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
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
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    def customer; end
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    def description; end
    # The discounts applied to the order. Use `expand[]=discounts` to expand each discount.
    sig { returns(T.nilable(T::Array[T.any(String, Stripe::Discount)])) }
    def discounts; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # A recent IP address of the purchaser used for tax reporting and tax location inference.
    sig { returns(T.nilable(String)) }
    def ip_address; end
    # A list of line items the customer is ordering. Each line item includes information about the product, the quantity, and the resulting cost. There is a maximum of 100 line items.
    sig { returns(T.nilable(Stripe::ListObject)) }
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
    class ListParams < Stripe::RequestParams
      # Only return orders for the given customer.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      def ending_before; end
      sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
      def ending_before=(_ending_before); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        # Enable automatic tax calculation which will automatically compute tax rates on this order.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        sig { params(enabled: T::Boolean).void }
        def initialize(enabled: nil); end
      end
      class BillingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Address line 1, such as the street, PO Box, or company name.
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2, such as the apartment, suite, unit, or building.
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix, such as "NY" or "TX".
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
           }
          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          ); end
        end
        # The billing address provided by the customer.
        sig { returns(T.nilable(::Stripe::Order::CreateParams::BillingDetails::Address)) }
        def address; end
        sig {
          params(_address: T.nilable(::Stripe::Order::CreateParams::BillingDetails::Address)).returns(T.nilable(::Stripe::Order::CreateParams::BillingDetails::Address))
         }
        def address=(_address); end
        # The billing email provided by the customer.
        sig { returns(T.nilable(String)) }
        def email; end
        sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_email); end
        # The billing name provided by the customer.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # The billing phone number provided by the customer.
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        sig {
          params(address: T.nilable(::Stripe::Order::CreateParams::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
         }
        def initialize(address: nil, email: nil, name: nil, phone: nil); end
      end
      class Discount < Stripe::RequestParams
        # ID of the coupon to create a new discount for.
        sig { returns(T.nilable(String)) }
        def coupon; end
        sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
        def coupon=(_coupon); end
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(T.nilable(String)) }
        def discount; end
        sig { params(_discount: T.nilable(String)).returns(T.nilable(String)) }
        def discount=(_discount); end
        # ID of the promotion code to create a new discount for.
        sig { returns(T.nilable(String)) }
        def promotion_code; end
        sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
        def promotion_code=(_promotion_code); end
        sig {
          params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
         }
        def initialize(coupon: nil, discount: nil, promotion_code: nil); end
      end
      class LineItem < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          # ID of the coupon to create a new discount for.
          sig { returns(T.nilable(String)) }
          def coupon; end
          sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
          def coupon=(_coupon); end
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(T.nilable(String)) }
          def discount; end
          sig { params(_discount: T.nilable(String)).returns(T.nilable(String)) }
          def discount=(_discount); end
          sig { params(coupon: T.nilable(String), discount: T.nilable(String)).void }
          def initialize(coupon: nil, discount: nil); end
        end
        class PriceData < Stripe::RequestParams
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # ID of the [Product](https://docs.stripe.com/api/products) this [Price](https://docs.stripe.com/api/prices) belongs to.
          #
          # Use this to implement a variable-pricing model in your integration. This is required if `product_data` is not specified.
          sig { returns(T.nilable(String)) }
          def product; end
          sig { params(_product: T.nilable(String)).returns(T.nilable(String)) }
          def product=(_product); end
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          sig { returns(T.nilable(String)) }
          def tax_behavior; end
          sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
          def tax_behavior=(_tax_behavior); end
          # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
          sig { returns(T.nilable(Integer)) }
          def unit_amount; end
          sig { params(_unit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def unit_amount=(_unit_amount); end
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(T.nilable(String)) }
          def unit_amount_decimal; end
          sig { params(_unit_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
          def unit_amount_decimal=(_unit_amount_decimal); end
          sig {
            params(currency: T.nilable(String), product: T.nilable(String), tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
           }
          def initialize(
            currency: nil,
            product: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          ); end
        end
        class ProductData < Stripe::RequestParams
          class PackageDimensions < Stripe::RequestParams
            # Height, in inches. Maximum precision is 2 decimal places.
            sig { returns(Float) }
            def height; end
            sig { params(_height: Float).returns(Float) }
            def height=(_height); end
            # Length, in inches. Maximum precision is 2 decimal places.
            sig { returns(Float) }
            def length; end
            sig { params(_length: Float).returns(Float) }
            def length=(_length); end
            # Weight, in ounces. Maximum precision is 2 decimal places.
            sig { returns(Float) }
            def weight; end
            sig { params(_weight: Float).returns(Float) }
            def weight=(_weight); end
            # Width, in inches. Maximum precision is 2 decimal places.
            sig { returns(Float) }
            def width; end
            sig { params(_width: Float).returns(Float) }
            def width=(_width); end
            sig { params(height: Float, length: Float, weight: Float, width: Float).void }
            def initialize(height: nil, length: nil, weight: nil, width: nil); end
          end
          # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
          sig { returns(T.nilable(String)) }
          def description; end
          sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_description); end
          # A unique identifier for this product.
          #
          # `product_data` automatically creates a Product with this ID. If a Product with the same ID already exists, then `product_data` re-uses it to avoid duplicates. If any of the fields in the existing Product are different from the values in `product_data`, `product_data` updates the existing Product with the new information. So set `product_data[id]` to the same string every time you sell the same product, but don't re-use the same string for different products.
          sig { returns(String) }
          def id; end
          sig { params(_id: String).returns(String) }
          def id=(_id); end
          # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
          sig { returns(T.nilable(T.any(String, T::Array[String]))) }
          def images; end
          sig {
            params(_images: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
           }
          def images=(_images); end
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
           }
          def metadata=(_metadata); end
          # The product's name, meant to be displayable to the customer.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          # The dimensions of this product for shipping purposes.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Order::CreateParams::LineItem::ProductData::PackageDimensions)))
           }
          def package_dimensions; end
          sig {
            params(_package_dimensions: T.nilable(T.any(String, ::Stripe::Order::CreateParams::LineItem::ProductData::PackageDimensions))).returns(T.nilable(T.any(String, ::Stripe::Order::CreateParams::LineItem::ProductData::PackageDimensions)))
           }
          def package_dimensions=(_package_dimensions); end
          # Whether this product is shipped (i.e., physical goods).
          sig { returns(T.nilable(T::Boolean)) }
          def shippable; end
          sig { params(_shippable: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def shippable=(_shippable); end
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
          sig { returns(T.nilable(String)) }
          def tax_code; end
          sig { params(_tax_code: T.nilable(String)).returns(T.nilable(String)) }
          def tax_code=(_tax_code); end
          # A URL of a publicly-accessible webpage for this product.
          sig { returns(T.nilable(String)) }
          def url; end
          sig { params(_url: T.nilable(String)).returns(T.nilable(String)) }
          def url=(_url); end
          sig {
            params(description: T.nilable(String), id: String, images: T.nilable(T.any(String, T::Array[String])), metadata: T.nilable(T.any(String, T::Hash[String, String])), name: String, package_dimensions: T.nilable(T.any(String, ::Stripe::Order::CreateParams::LineItem::ProductData::PackageDimensions)), shippable: T.nilable(T::Boolean), tax_code: T.nilable(String), url: T.nilable(String)).void
           }
          def initialize(
            description: nil,
            id: nil,
            images: nil,
            metadata: nil,
            name: nil,
            package_dimensions: nil,
            shippable: nil,
            tax_code: nil,
            url: nil
          ); end
        end
        # The description for the line item. Will default to the name of the associated product.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # The discounts applied to this line item.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::Order::CreateParams::LineItem::Discount])))
         }
        def discounts; end
        sig {
          params(_discounts: T.nilable(T.any(String, T::Array[::Stripe::Order::CreateParams::LineItem::Discount]))).returns(T.nilable(T.any(String, T::Array[::Stripe::Order::CreateParams::LineItem::Discount])))
         }
        def discounts=(_discounts); end
        # The ID of a [Price](https://docs.stripe.com/api/prices) to add to the Order.
        #
        # The `price` parameter is an alternative to using the `product` parameter. If each of your products are sold at a single price, you can set `Product.default_price` and then pass the `product` parameter when creating a line item. If your products are sold at several possible prices, use the `price` parameter to explicitly specify which one to use.
        sig { returns(T.nilable(String)) }
        def price; end
        sig { params(_price: T.nilable(String)).returns(T.nilable(String)) }
        def price=(_price); end
        # Data used to generate a new Price object inline.
        #
        # The `price_data` parameter is an alternative to using the `product` or `price` parameters. If you create a Product upfront and configure a `Product.default_price`, pass the `product` parameter when creating a line item. If you prefer not to define Products upfront, or if you charge variable prices, pass the `price_data` parameter to describe the price for this line item.
        #
        # Each time you pass `price_data` we create a Price for the Product. This Price is hidden in both the Dashboard and API lists and cannot be reused.
        sig { returns(T.nilable(::Stripe::Order::CreateParams::LineItem::PriceData)) }
        def price_data; end
        sig {
          params(_price_data: T.nilable(::Stripe::Order::CreateParams::LineItem::PriceData)).returns(T.nilable(::Stripe::Order::CreateParams::LineItem::PriceData))
         }
        def price_data=(_price_data); end
        # The ID of a [Product](https://docs.stripe.com/api/products) to add to the Order.
        #
        # The Product must have a `default_price` specified. Otherwise, specify the price by passing the `price` or `price_data` parameter.
        sig { returns(T.nilable(String)) }
        def product; end
        sig { params(_product: T.nilable(String)).returns(T.nilable(String)) }
        def product=(_product); end
        # Defines a [Product](https://docs.stripe.com/api/products) inline and adds it to the Order.
        #
        # `product_data` is an alternative to the `product` parameter. If you created a Product upfront, use the `product` parameter to refer to the existing Product. But if you prefer not to create Products upfront, pass the `product_data` parameter to define a Product inline as part of configuring the Order.
        #
        # `product_data` automatically creates a Product, just as if you had manually created the Product. If a Product with the same ID already exists, then `product_data` re-uses it to avoid duplicates.
        sig { returns(T.nilable(::Stripe::Order::CreateParams::LineItem::ProductData)) }
        def product_data; end
        sig {
          params(_product_data: T.nilable(::Stripe::Order::CreateParams::LineItem::ProductData)).returns(T.nilable(::Stripe::Order::CreateParams::LineItem::ProductData))
         }
        def product_data=(_product_data); end
        # The quantity of the line item.
        sig { returns(T.nilable(Integer)) }
        def quantity; end
        sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def quantity=(_quantity); end
        # The tax rates applied to this line item.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        def tax_rates; end
        sig {
          params(_tax_rates: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
         }
        def tax_rates=(_tax_rates); end
        sig {
          params(description: T.nilable(String), discounts: T.nilable(T.any(String, T::Array[::Stripe::Order::CreateParams::LineItem::Discount])), price: T.nilable(String), price_data: T.nilable(::Stripe::Order::CreateParams::LineItem::PriceData), product: T.nilable(String), product_data: T.nilable(::Stripe::Order::CreateParams::LineItem::ProductData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
         }
        def initialize(
          description: nil,
          discounts: nil,
          price: nil,
          price_data: nil,
          product: nil,
          product_data: nil,
          quantity: nil,
          tax_rates: nil
        ); end
      end
      class Payment < Stripe::RequestParams
        class Settings < Stripe::RequestParams
          class PaymentMethodOptions < Stripe::RequestParams
            class AcssDebit < Stripe::RequestParams
              class MandateOptions < Stripe::RequestParams
                # A URL for custom mandate text to render during confirmation step.
                # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
                # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
                sig { returns(T.nilable(String)) }
                def custom_mandate_url; end
                sig { params(_custom_mandate_url: T.nilable(String)).returns(T.nilable(String)) }
                def custom_mandate_url=(_custom_mandate_url); end
                # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
                sig { returns(T.nilable(String)) }
                def interval_description; end
                sig { params(_interval_description: T.nilable(String)).returns(T.nilable(String)) }
                def interval_description=(_interval_description); end
                # Payment schedule for the mandate.
                sig { returns(T.nilable(String)) }
                def payment_schedule; end
                sig { params(_payment_schedule: T.nilable(String)).returns(T.nilable(String)) }
                def payment_schedule=(_payment_schedule); end
                # Transaction type of the mandate.
                sig { returns(T.nilable(String)) }
                def transaction_type; end
                sig { params(_transaction_type: T.nilable(String)).returns(T.nilable(String)) }
                def transaction_type=(_transaction_type); end
                sig {
                  params(custom_mandate_url: T.nilable(String), interval_description: T.nilable(String), payment_schedule: T.nilable(String), transaction_type: T.nilable(String)).void
                 }
                def initialize(
                  custom_mandate_url: nil,
                  interval_description: nil,
                  payment_schedule: nil,
                  transaction_type: nil
                ); end
              end
              # Additional fields for Mandate creation
              sig {
                returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit::MandateOptions))
               }
              def mandate_options; end
              sig {
                params(_mandate_options: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit::MandateOptions)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit::MandateOptions))
               }
              def mandate_options=(_mandate_options); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.any(String, String))) }
              def setup_future_usage; end
              sig {
                params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def setup_future_usage=(_setup_future_usage); end
              # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
              sig { returns(T.nilable(String)) }
              def target_date; end
              sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
              def target_date=(_target_date); end
              # Bank account verification method.
              sig { returns(T.nilable(String)) }
              def verification_method; end
              sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
              def verification_method=(_verification_method); end
              sig {
                params(mandate_options: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String), verification_method: T.nilable(String)).void
               }
              def initialize(
                mandate_options: nil,
                setup_future_usage: nil,
                target_date: nil,
                verification_method: nil
              ); end
            end
            class AfterpayClearpay < Stripe::RequestParams
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              sig { returns(T.nilable(String)) }
              def capture_method; end
              sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
              def capture_method=(_capture_method); end
              # An internal identifier or reference this payment corresponds to. The identifier is limited to 128 characters and may contain only letters, digits, underscores, backslashes and dashes.
              sig { returns(T.nilable(String)) }
              def reference; end
              sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
              def reference=(_reference); end
              # Indicates that you intend to make future payments with the payment method.
              #
              # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
              #
              # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
              #
              # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              def setup_future_usage; end
              sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
              def setup_future_usage=(_setup_future_usage); end
              sig {
                params(capture_method: T.nilable(String), reference: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(capture_method: nil, reference: nil, setup_future_usage: nil); end
            end
            class Alipay < Stripe::RequestParams
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.any(String, String))) }
              def setup_future_usage; end
              sig {
                params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def setup_future_usage=(_setup_future_usage); end
              sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
              def initialize(setup_future_usage: nil); end
            end
            class Bancontact < Stripe::RequestParams
              # Preferred language of the Bancontact authorization page that the customer is redirected to.
              sig { returns(T.nilable(String)) }
              def preferred_language; end
              sig { params(_preferred_language: T.nilable(String)).returns(T.nilable(String)) }
              def preferred_language=(_preferred_language); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.any(String, String))) }
              def setup_future_usage; end
              sig {
                params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def setup_future_usage=(_setup_future_usage); end
              sig {
                params(preferred_language: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
               }
              def initialize(preferred_language: nil, setup_future_usage: nil); end
            end
            class Card < Stripe::RequestParams
              # Controls when the funds will be captured from the customer's account.
              sig { returns(T.nilable(String)) }
              def capture_method; end
              sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
              def capture_method=(_capture_method); end
              # Indicates that you intend to make future payments with the payment method.
              #
              # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
              #
              # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
              #
              # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              def setup_future_usage; end
              sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
              def setup_future_usage=(_setup_future_usage); end
              sig {
                params(capture_method: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(capture_method: nil, setup_future_usage: nil); end
            end
            class CustomerBalance < Stripe::RequestParams
              class BankTransfer < Stripe::RequestParams
                class EuBankTransfer < Stripe::RequestParams
                  # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
                  sig { returns(String) }
                  def country; end
                  sig { params(_country: String).returns(String) }
                  def country=(_country); end
                  sig { params(country: String).void }
                  def initialize(country: nil); end
                end
                # Configuration for the eu_bank_transfer funding type.
                sig {
                  returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
                 }
                def eu_bank_transfer; end
                sig {
                  params(_eu_bank_transfer: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
                 }
                def eu_bank_transfer=(_eu_bank_transfer); end
                # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
                #
                # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
                sig { returns(T.nilable(T::Array[String])) }
                def requested_address_types; end
                sig {
                  params(_requested_address_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
                 }
                def requested_address_types=(_requested_address_types); end
                # The list of bank transfer types that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig {
                  params(eu_bank_transfer: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), requested_address_types: T.nilable(T::Array[String]), type: String).void
                 }
                def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil); end
              end
              # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
              sig {
                returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer))
               }
              def bank_transfer; end
              sig {
                params(_bank_transfer: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer))
               }
              def bank_transfer=(_bank_transfer); end
              # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
              sig { returns(T.nilable(String)) }
              def funding_type; end
              sig { params(_funding_type: T.nilable(String)).returns(T.nilable(String)) }
              def funding_type=(_funding_type); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              def setup_future_usage; end
              sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
              def setup_future_usage=(_setup_future_usage); end
              sig {
                params(bank_transfer: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(bank_transfer: nil, funding_type: nil, setup_future_usage: nil); end
            end
            class Ideal < Stripe::RequestParams
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.any(String, String))) }
              def setup_future_usage; end
              sig {
                params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def setup_future_usage=(_setup_future_usage); end
              sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
              def initialize(setup_future_usage: nil); end
            end
            class Klarna < Stripe::RequestParams
              class OnDemand < Stripe::RequestParams
                # Your average amount value. You can use a value across your customer base, or segment based on customer type, country, etc.
                sig { returns(T.nilable(Integer)) }
                def average_amount; end
                sig { params(_average_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def average_amount=(_average_amount); end
                # The maximum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
                sig { returns(T.nilable(Integer)) }
                def maximum_amount; end
                sig { params(_maximum_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def maximum_amount=(_maximum_amount); end
                # The lowest or minimum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
                sig { returns(T.nilable(Integer)) }
                def minimum_amount; end
                sig { params(_minimum_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def minimum_amount=(_minimum_amount); end
                # Interval at which the customer is making purchases
                sig { returns(T.nilable(String)) }
                def purchase_interval; end
                sig { params(_purchase_interval: T.nilable(String)).returns(T.nilable(String)) }
                def purchase_interval=(_purchase_interval); end
                # The number of `purchase_interval` between charges
                sig { returns(T.nilable(Integer)) }
                def purchase_interval_count; end
                sig {
                  params(_purchase_interval_count: T.nilable(Integer)).returns(T.nilable(Integer))
                 }
                def purchase_interval_count=(_purchase_interval_count); end
                sig {
                  params(average_amount: T.nilable(Integer), maximum_amount: T.nilable(Integer), minimum_amount: T.nilable(Integer), purchase_interval: T.nilable(String), purchase_interval_count: T.nilable(Integer)).void
                 }
                def initialize(
                  average_amount: nil,
                  maximum_amount: nil,
                  minimum_amount: nil,
                  purchase_interval: nil,
                  purchase_interval_count: nil
                ); end
              end
              class Subscription < Stripe::RequestParams
                class NextBilling < Stripe::RequestParams
                  # The amount of the next charge for the subscription.
                  sig { returns(Integer) }
                  def amount; end
                  sig { params(_amount: Integer).returns(Integer) }
                  def amount=(_amount); end
                  # The date of the next charge for the subscription in YYYY-MM-DD format.
                  sig { returns(String) }
                  def date; end
                  sig { params(_date: String).returns(String) }
                  def date=(_date); end
                  sig { params(amount: Integer, date: String).void }
                  def initialize(amount: nil, date: nil); end
                end
                # Unit of time between subscription charges.
                sig { returns(String) }
                def interval; end
                sig { params(_interval: String).returns(String) }
                def interval=(_interval); end
                # The number of intervals (specified in the `interval` attribute) between subscription charges. For example, `interval=month` and `interval_count=3` charges every 3 months.
                sig { returns(T.nilable(Integer)) }
                def interval_count; end
                sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def interval_count=(_interval_count); end
                # Name for subscription.
                sig { returns(T.nilable(String)) }
                def name; end
                sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
                def name=(_name); end
                # Describes the upcoming charge for this subscription.
                sig {
                  returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription::NextBilling))
                 }
                def next_billing; end
                sig {
                  params(_next_billing: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription::NextBilling)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription::NextBilling))
                 }
                def next_billing=(_next_billing); end
                # A non-customer-facing reference to correlate subscription charges in the Klarna app. Use a value that persists across subscription charges.
                sig { returns(String) }
                def reference; end
                sig { params(_reference: String).returns(String) }
                def reference=(_reference); end
                sig {
                  params(interval: String, interval_count: T.nilable(Integer), name: T.nilable(String), next_billing: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription::NextBilling), reference: String).void
                 }
                def initialize(
                  interval: nil,
                  interval_count: nil,
                  name: nil,
                  next_billing: nil,
                  reference: nil
                ); end
              end
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              sig { returns(T.nilable(String)) }
              def capture_method; end
              sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
              def capture_method=(_capture_method); end
              # On-demand details if setting up or charging an on-demand payment.
              sig {
                returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna::OnDemand))
               }
              def on_demand; end
              sig {
                params(_on_demand: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna::OnDemand)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna::OnDemand))
               }
              def on_demand=(_on_demand); end
              # Preferred language of the Klarna authorization page that the customer is redirected to
              sig { returns(T.nilable(String)) }
              def preferred_locale; end
              sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
              def preferred_locale=(_preferred_locale); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              def setup_future_usage; end
              sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
              def setup_future_usage=(_setup_future_usage); end
              # Subscription details if setting up or charging a subscription.
              sig {
                returns(T.nilable(T.any(String, T::Array[::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription])))
               }
              def subscriptions; end
              sig {
                params(_subscriptions: T.nilable(T.any(String, T::Array[::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription]))).returns(T.nilable(T.any(String, T::Array[::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription])))
               }
              def subscriptions=(_subscriptions); end
              sig {
                params(capture_method: T.nilable(String), on_demand: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna::OnDemand), preferred_locale: T.nilable(String), setup_future_usage: T.nilable(String), subscriptions: T.nilable(T.any(String, T::Array[::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription]))).void
               }
              def initialize(
                capture_method: nil,
                on_demand: nil,
                preferred_locale: nil,
                setup_future_usage: nil,
                subscriptions: nil
              ); end
            end
            class Link < Stripe::RequestParams
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              sig { returns(T.nilable(String)) }
              def capture_method; end
              sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
              def capture_method=(_capture_method); end
              # [Deprecated] This is a legacy parameter that no longer has any function.
              sig { returns(T.nilable(String)) }
              def persistent_token; end
              sig { params(_persistent_token: T.nilable(String)).returns(T.nilable(String)) }
              def persistent_token=(_persistent_token); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.any(String, String))) }
              def setup_future_usage; end
              sig {
                params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def setup_future_usage=(_setup_future_usage); end
              sig {
                params(capture_method: T.nilable(String), persistent_token: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
               }
              def initialize(
                capture_method: nil,
                persistent_token: nil,
                setup_future_usage: nil
              ); end
            end
            class Oxxo < Stripe::RequestParams
              # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
              sig { returns(T.nilable(Integer)) }
              def expires_after_days; end
              sig { params(_expires_after_days: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def expires_after_days=(_expires_after_days); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              def setup_future_usage; end
              sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
              def setup_future_usage=(_setup_future_usage); end
              sig {
                params(expires_after_days: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
               }
              def initialize(expires_after_days: nil, setup_future_usage: nil); end
            end
            class P24 < Stripe::RequestParams
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              def setup_future_usage; end
              sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
              def setup_future_usage=(_setup_future_usage); end
              # Confirm that the payer has accepted the P24 terms and conditions.
              sig { returns(T.nilable(T::Boolean)) }
              def tos_shown_and_accepted; end
              sig {
                params(_tos_shown_and_accepted: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
               }
              def tos_shown_and_accepted=(_tos_shown_and_accepted); end
              sig {
                params(setup_future_usage: T.nilable(String), tos_shown_and_accepted: T.nilable(T::Boolean)).void
               }
              def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil); end
            end
            class Paypal < Stripe::RequestParams
              class LineItem < Stripe::RequestParams
                class Tax < Stripe::RequestParams
                  # The tax for a single unit of the line item in minor units. Cannot be a negative number.
                  sig { returns(Integer) }
                  def amount; end
                  sig { params(_amount: Integer).returns(Integer) }
                  def amount=(_amount); end
                  # The tax behavior for the line item.
                  sig { returns(String) }
                  def behavior; end
                  sig { params(_behavior: String).returns(String) }
                  def behavior=(_behavior); end
                  sig { params(amount: Integer, behavior: String).void }
                  def initialize(amount: nil, behavior: nil); end
                end
                # Type of the line item.
                sig { returns(T.nilable(String)) }
                def category; end
                sig { params(_category: T.nilable(String)).returns(T.nilable(String)) }
                def category=(_category); end
                # Description of the line item.
                sig { returns(T.nilable(String)) }
                def description; end
                sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
                def description=(_description); end
                # Descriptive name of the line item.
                sig { returns(String) }
                def name; end
                sig { params(_name: String).returns(String) }
                def name=(_name); end
                # Quantity of the line item. Must be a positive number.
                sig { returns(Integer) }
                def quantity; end
                sig { params(_quantity: Integer).returns(Integer) }
                def quantity=(_quantity); end
                # Client facing stock keeping unit, article number or similar.
                sig { returns(T.nilable(String)) }
                def sku; end
                sig { params(_sku: T.nilable(String)).returns(T.nilable(String)) }
                def sku=(_sku); end
                # The Stripe account ID of the connected account that sells the item.
                sig { returns(T.nilable(String)) }
                def sold_by; end
                sig { params(_sold_by: T.nilable(String)).returns(T.nilable(String)) }
                def sold_by=(_sold_by); end
                # The tax information for the line item.
                sig {
                  returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem::Tax))
                 }
                def tax; end
                sig {
                  params(_tax: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem::Tax)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem::Tax))
                 }
                def tax=(_tax); end
                # Price for a single unit of the line item in minor units. Cannot be a negative number.
                sig { returns(Integer) }
                def unit_amount; end
                sig { params(_unit_amount: Integer).returns(Integer) }
                def unit_amount=(_unit_amount); end
                sig {
                  params(category: T.nilable(String), description: T.nilable(String), name: String, quantity: Integer, sku: T.nilable(String), sold_by: T.nilable(String), tax: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem::Tax), unit_amount: Integer).void
                 }
                def initialize(
                  category: nil,
                  description: nil,
                  name: nil,
                  quantity: nil,
                  sku: nil,
                  sold_by: nil,
                  tax: nil,
                  unit_amount: nil
                ); end
              end
              # Controls when the funds will be captured from the customer's account.
              sig { returns(T.nilable(String)) }
              def capture_method; end
              sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
              def capture_method=(_capture_method); end
              # The line items purchased by the customer.
              sig {
                returns(T.nilable(T::Array[::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem]))
               }
              def line_items; end
              sig {
                params(_line_items: T.nilable(T::Array[::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem])).returns(T.nilable(T::Array[::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem]))
               }
              def line_items=(_line_items); end
              # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
              sig { returns(T.nilable(String)) }
              def preferred_locale; end
              sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
              def preferred_locale=(_preferred_locale); end
              # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
              sig { returns(T.nilable(String)) }
              def reference; end
              sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
              def reference=(_reference); end
              # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
              sig { returns(T.nilable(String)) }
              def reference_id; end
              sig { params(_reference_id: T.nilable(String)).returns(T.nilable(String)) }
              def reference_id=(_reference_id); end
              # The risk correlation ID for an on-session payment using a saved PayPal payment method.
              sig { returns(T.nilable(String)) }
              def risk_correlation_id; end
              sig { params(_risk_correlation_id: T.nilable(String)).returns(T.nilable(String)) }
              def risk_correlation_id=(_risk_correlation_id); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.any(String, String))) }
              def setup_future_usage; end
              sig {
                params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def setup_future_usage=(_setup_future_usage); end
              # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
              sig { returns(T.nilable(T::Array[String])) }
              def subsellers; end
              sig {
                params(_subsellers: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
               }
              def subsellers=(_subsellers); end
              sig {
                params(capture_method: T.nilable(String), line_items: T.nilable(T::Array[::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem]), preferred_locale: T.nilable(String), reference: T.nilable(String), reference_id: T.nilable(String), risk_correlation_id: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String)), subsellers: T.nilable(T::Array[String])).void
               }
              def initialize(
                capture_method: nil,
                line_items: nil,
                preferred_locale: nil,
                reference: nil,
                reference_id: nil,
                risk_correlation_id: nil,
                setup_future_usage: nil,
                subsellers: nil
              ); end
            end
            class SepaDebit < Stripe::RequestParams
              class MandateOptions < Stripe::RequestParams
                # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
                sig { returns(T.nilable(String)) }
                def reference_prefix; end
                sig { params(_reference_prefix: T.nilable(String)).returns(T.nilable(String)) }
                def reference_prefix=(_reference_prefix); end
                sig { params(reference_prefix: T.nilable(String)).void }
                def initialize(reference_prefix: nil); end
              end
              # Additional fields for Mandate creation
              sig {
                returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit::MandateOptions))
               }
              def mandate_options; end
              sig {
                params(_mandate_options: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit::MandateOptions)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit::MandateOptions))
               }
              def mandate_options=(_mandate_options); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.any(String, String))) }
              def setup_future_usage; end
              sig {
                params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def setup_future_usage=(_setup_future_usage); end
              # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
              sig { returns(T.nilable(String)) }
              def target_date; end
              sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
              def target_date=(_target_date); end
              sig {
                params(mandate_options: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
               }
              def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
            end
            class Sofort < Stripe::RequestParams
              # Language shown to the payer on redirect.
              sig { returns(T.nilable(T.any(String, String))) }
              def preferred_language; end
              sig {
                params(_preferred_language: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def preferred_language=(_preferred_language); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.any(String, String))) }
              def setup_future_usage; end
              sig {
                params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def setup_future_usage=(_setup_future_usage); end
              sig {
                params(preferred_language: T.nilable(T.any(String, String)), setup_future_usage: T.nilable(T.any(String, String))).void
               }
              def initialize(preferred_language: nil, setup_future_usage: nil); end
            end
            class WechatPay < Stripe::RequestParams
              # The app ID registered with WeChat Pay. Only required when client is ios or android.
              sig { returns(T.nilable(String)) }
              def app_id; end
              sig { params(_app_id: T.nilable(String)).returns(T.nilable(String)) }
              def app_id=(_app_id); end
              # The client type that the end customer will pay from
              sig { returns(T.nilable(String)) }
              def client; end
              sig { params(_client: T.nilable(String)).returns(T.nilable(String)) }
              def client=(_client); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              def setup_future_usage; end
              sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
              def setup_future_usage=(_setup_future_usage); end
              sig {
                params(app_id: T.nilable(String), client: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(app_id: nil, client: nil, setup_future_usage: nil); end
            end
            # If paying by `acss_debit`, this sub-hash contains details about the ACSS Debit payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit))
             }
            def acss_debit; end
            sig {
              params(_acss_debit: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit))
             }
            def acss_debit=(_acss_debit); end
            # If paying by `afterpay_clearpay`, this sub-hash contains details about the AfterpayClearpay payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::AfterpayClearpay))
             }
            def afterpay_clearpay; end
            sig {
              params(_afterpay_clearpay: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::AfterpayClearpay)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::AfterpayClearpay))
             }
            def afterpay_clearpay=(_afterpay_clearpay); end
            # If paying by `alipay`, this sub-hash contains details about the Alipay payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Alipay))
             }
            def alipay; end
            sig {
              params(_alipay: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Alipay)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Alipay))
             }
            def alipay=(_alipay); end
            # If paying by `bancontact`, this sub-hash contains details about the Bancontact payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Bancontact))
             }
            def bancontact; end
            sig {
              params(_bancontact: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Bancontact)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Bancontact))
             }
            def bancontact=(_bancontact); end
            # If paying by `card`, this sub-hash contains details about the Card payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Card))
             }
            def card; end
            sig {
              params(_card: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Card)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Card))
             }
            def card=(_card); end
            # If paying by `customer_balance`, this sub-hash contains details about the Customer Balance payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance))
             }
            def customer_balance; end
            sig {
              params(_customer_balance: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance))
             }
            def customer_balance=(_customer_balance); end
            # If paying by `ideal`, this sub-hash contains details about the iDEAL payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Ideal))
             }
            def ideal; end
            sig {
              params(_ideal: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Ideal)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Ideal))
             }
            def ideal=(_ideal); end
            # If paying by `klarna`, this sub-hash contains details about the Klarna payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna))
             }
            def klarna; end
            sig {
              params(_klarna: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna))
             }
            def klarna=(_klarna); end
            # If paying by `link`, this sub-hash contains details about the Link payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Link))
             }
            def link; end
            sig {
              params(_link: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Link)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Link))
             }
            def link=(_link); end
            # If paying by `oxxo`, this sub-hash contains details about the OXXO payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Oxxo))
             }
            def oxxo; end
            sig {
              params(_oxxo: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Oxxo)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Oxxo))
             }
            def oxxo=(_oxxo); end
            # If paying by `p24`, this sub-hash contains details about the P24 payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::P24))
             }
            def p24; end
            sig {
              params(_p24: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::P24)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::P24))
             }
            def p24=(_p24); end
            # If paying by `paypal`, this sub-hash contains details about the PayPal payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal))
             }
            def paypal; end
            sig {
              params(_paypal: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal))
             }
            def paypal=(_paypal); end
            # If paying by `sepa_debit`, this sub-hash contains details about the SEPA Debit payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit))
             }
            def sepa_debit; end
            sig {
              params(_sepa_debit: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit))
             }
            def sepa_debit=(_sepa_debit); end
            # If paying by `sofort`, this sub-hash contains details about the Sofort payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Sofort))
             }
            def sofort; end
            sig {
              params(_sofort: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Sofort)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Sofort))
             }
            def sofort=(_sofort); end
            # If paying by `wechat_pay`, this sub-hash contains details about the WeChat Pay payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::WechatPay))
             }
            def wechat_pay; end
            sig {
              params(_wechat_pay: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::WechatPay)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::WechatPay))
             }
            def wechat_pay=(_wechat_pay); end
            sig {
              params(acss_debit: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit), afterpay_clearpay: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::AfterpayClearpay), alipay: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Alipay), bancontact: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Bancontact), card: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Card), customer_balance: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance), ideal: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Ideal), klarna: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna), link: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Link), oxxo: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Oxxo), p24: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::P24), paypal: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal), sepa_debit: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit), sofort: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::Sofort), wechat_pay: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions::WechatPay)).void
             }
            def initialize(
              acss_debit: nil,
              afterpay_clearpay: nil,
              alipay: nil,
              bancontact: nil,
              card: nil,
              customer_balance: nil,
              ideal: nil,
              klarna: nil,
              link: nil,
              oxxo: nil,
              p24: nil,
              paypal: nil,
              sepa_debit: nil,
              sofort: nil,
              wechat_pay: nil
            ); end
          end
          class TransferData < Stripe::RequestParams
            # The amount that will be transferred automatically when the order is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
            sig { returns(T.nilable(Integer)) }
            def amount; end
            sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_amount); end
            # ID of the Connected account receiving the transfer.
            sig { returns(String) }
            def destination; end
            sig { params(_destination: String).returns(String) }
            def destination=(_destination); end
            sig { params(amount: T.nilable(Integer), destination: String).void }
            def initialize(amount: nil, destination: nil); end
          end
          # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
          sig { returns(T.nilable(Integer)) }
          def application_fee_amount; end
          sig { params(_application_fee_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def application_fee_amount=(_application_fee_amount); end
          # PaymentMethod-specific configuration to provide to the order's PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions))
           }
          def payment_method_options; end
          sig {
            params(_payment_method_options: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions))
           }
          def payment_method_options=(_payment_method_options); end
          # The list of [payment method types](https://stripe.com/docs/payments/payment-methods/overview) to provide to the order's PaymentIntent. Do not include this attribute if you prefer to manage your payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
          sig { returns(T.nilable(T::Array[String])) }
          def payment_method_types; end
          sig {
            params(_payment_method_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def payment_method_types=(_payment_method_types); end
          # The URL to redirect the customer to after they authenticate their payment.
          sig { returns(T.nilable(String)) }
          def return_url; end
          sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
          def return_url=(_return_url); end
          # For non-card charges, you can use this value as the complete description that appears on your customers' statements. Must contain at least one letter, maximum 22 characters.
          sig { returns(T.nilable(String)) }
          def statement_descriptor; end
          sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor=(_statement_descriptor); end
          # Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
          sig { returns(T.nilable(String)) }
          def statement_descriptor_suffix; end
          sig { params(_statement_descriptor_suffix: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor_suffix=(_statement_descriptor_suffix); end
          # Provides configuration for completing a transfer for the order after it is paid.
          sig { returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::TransferData)) }
          def transfer_data; end
          sig {
            params(_transfer_data: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::TransferData)).returns(T.nilable(::Stripe::Order::CreateParams::Payment::Settings::TransferData))
           }
          def transfer_data=(_transfer_data); end
          sig {
            params(application_fee_amount: T.nilable(Integer), payment_method_options: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::PaymentMethodOptions), payment_method_types: T.nilable(T::Array[String]), return_url: T.nilable(String), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(::Stripe::Order::CreateParams::Payment::Settings::TransferData)).void
           }
          def initialize(
            application_fee_amount: nil,
            payment_method_options: nil,
            payment_method_types: nil,
            return_url: nil,
            statement_descriptor: nil,
            statement_descriptor_suffix: nil,
            transfer_data: nil
          ); end
        end
        # Settings describing how the order should configure generated PaymentIntents.
        sig { returns(::Stripe::Order::CreateParams::Payment::Settings) }
        def settings; end
        sig {
          params(_settings: ::Stripe::Order::CreateParams::Payment::Settings).returns(::Stripe::Order::CreateParams::Payment::Settings)
         }
        def settings=(_settings); end
        sig { params(settings: ::Stripe::Order::CreateParams::Payment::Settings).void }
        def initialize(settings: nil); end
      end
      class ShippingCost < Stripe::RequestParams
        class ShippingRateData < Stripe::RequestParams
          class DeliveryEstimate < Stripe::RequestParams
            class Maximum < Stripe::RequestParams
              # A unit of time.
              sig { returns(String) }
              def unit; end
              sig { params(_unit: String).returns(String) }
              def unit=(_unit); end
              # Must be greater than 0.
              sig { returns(Integer) }
              def value; end
              sig { params(_value: Integer).returns(Integer) }
              def value=(_value); end
              sig { params(unit: String, value: Integer).void }
              def initialize(unit: nil, value: nil); end
            end
            class Minimum < Stripe::RequestParams
              # A unit of time.
              sig { returns(String) }
              def unit; end
              sig { params(_unit: String).returns(String) }
              def unit=(_unit); end
              # Must be greater than 0.
              sig { returns(Integer) }
              def value; end
              sig { params(_value: Integer).returns(Integer) }
              def value=(_value); end
              sig { params(unit: String, value: Integer).void }
              def initialize(unit: nil, value: nil); end
            end
            # The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
            sig {
              returns(T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum))
             }
            def maximum; end
            sig {
              params(_maximum: T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum)).returns(T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum))
             }
            def maximum=(_maximum); end
            # The lower bound of the estimated range. If empty, represents no lower bound.
            sig {
              returns(T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum))
             }
            def minimum; end
            sig {
              params(_minimum: T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum)).returns(T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum))
             }
            def minimum=(_minimum); end
            sig {
              params(maximum: T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum), minimum: T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum)).void
             }
            def initialize(maximum: nil, minimum: nil); end
          end
          class FixedAmount < Stripe::RequestParams
            class CurrencyOptions < Stripe::RequestParams
              # A non-negative integer in cents representing how much to charge.
              sig { returns(Integer) }
              def amount; end
              sig { params(_amount: Integer).returns(Integer) }
              def amount=(_amount); end
              # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
              sig { returns(T.nilable(String)) }
              def tax_behavior; end
              sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
              def tax_behavior=(_tax_behavior); end
              sig { params(amount: Integer, tax_behavior: T.nilable(String)).void }
              def initialize(amount: nil, tax_behavior: nil); end
            end
            # A non-negative integer in cents representing how much to charge.
            sig { returns(Integer) }
            def amount; end
            sig { params(_amount: Integer).returns(Integer) }
            def amount=(_amount); end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            def currency; end
            sig { params(_currency: String).returns(String) }
            def currency=(_currency); end
            # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
            sig {
              returns(T.nilable(T::Hash[String, ::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions]))
             }
            def currency_options; end
            sig {
              params(_currency_options: T.nilable(T::Hash[String, ::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions])).returns(T.nilable(T::Hash[String, ::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions]))
             }
            def currency_options=(_currency_options); end
            sig {
              params(amount: Integer, currency: String, currency_options: T.nilable(T::Hash[String, ::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions])).void
             }
            def initialize(amount: nil, currency: nil, currency_options: nil); end
          end
          # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
          sig {
            returns(T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate))
           }
          def delivery_estimate; end
          sig {
            params(_delivery_estimate: T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate)).returns(T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate))
           }
          def delivery_estimate=(_delivery_estimate); end
          # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
          sig { returns(String) }
          def display_name; end
          sig { params(_display_name: String).returns(String) }
          def display_name=(_display_name); end
          # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
          sig {
            returns(T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::FixedAmount))
           }
          def fixed_amount; end
          sig {
            params(_fixed_amount: T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::FixedAmount)).returns(T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::FixedAmount))
           }
          def fixed_amount=(_fixed_amount); end
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
          sig { returns(T.nilable(String)) }
          def tax_behavior; end
          sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
          def tax_behavior=(_tax_behavior); end
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
          sig { returns(T.nilable(String)) }
          def tax_code; end
          sig { params(_tax_code: T.nilable(String)).returns(T.nilable(String)) }
          def tax_code=(_tax_code); end
          # The type of calculation to use on the shipping rate.
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
          sig {
            params(delivery_estimate: T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate), display_name: String, fixed_amount: T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData::FixedAmount), metadata: T.nilable(T::Hash[String, String]), tax_behavior: T.nilable(String), tax_code: T.nilable(String), type: T.nilable(String)).void
           }
          def initialize(
            delivery_estimate: nil,
            display_name: nil,
            fixed_amount: nil,
            metadata: nil,
            tax_behavior: nil,
            tax_code: nil,
            type: nil
          ); end
        end
        # The ID of the shipping rate to use for this order.
        sig { returns(T.nilable(String)) }
        def shipping_rate; end
        sig { params(_shipping_rate: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_rate=(_shipping_rate); end
        # Parameters to create a new ad-hoc shipping rate for this order.
        sig { returns(T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData)) }
        def shipping_rate_data; end
        sig {
          params(_shipping_rate_data: T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData)).returns(T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData))
         }
        def shipping_rate_data=(_shipping_rate_data); end
        sig {
          params(shipping_rate: T.nilable(String), shipping_rate_data: T.nilable(::Stripe::Order::CreateParams::ShippingCost::ShippingRateData)).void
         }
        def initialize(shipping_rate: nil, shipping_rate_data: nil); end
      end
      class ShippingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Address line 1, such as the street, PO Box, or company name.
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2, such as the apartment, suite, unit, or building.
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix, such as "NY" or "TX".
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
           }
          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          ); end
        end
        # The shipping address for the order.
        sig { returns(::Stripe::Order::CreateParams::ShippingDetails::Address) }
        def address; end
        sig {
          params(_address: ::Stripe::Order::CreateParams::ShippingDetails::Address).returns(::Stripe::Order::CreateParams::ShippingDetails::Address)
         }
        def address=(_address); end
        # The name of the recipient of the order.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # The phone number (including extension) for the recipient of the order.
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        sig {
          params(address: ::Stripe::Order::CreateParams::ShippingDetails::Address, name: String, phone: T.nilable(String)).void
         }
        def initialize(address: nil, name: nil, phone: nil); end
      end
      class TaxDetails < Stripe::RequestParams
        class TaxId < Stripe::RequestParams
          # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `aw_tin`, `az_tin`, `ba_tin`, `bb_tin`, `bd_bin`, `bf_ifu`, `bg_uic`, `bh_vat`, `bj_ifu`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cm_niu`, `cn_tin`, `co_nit`, `cr_tin`, `cv_nif`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `et_tin`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kg_tin`, `kh_tin`, `kr_brn`, `kz_bin`, `la_tin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # Value of the tax ID.
          sig { returns(String) }
          def value; end
          sig { params(_value: String).returns(String) }
          def value=(_value); end
          sig { params(type: String, value: String).void }
          def initialize(type: nil, value: nil); end
        end
        # The purchaser's tax exemption status. One of `none`, `exempt`, or `reverse`.
        sig { returns(T.nilable(T.any(String, String))) }
        def tax_exempt; end
        sig {
          params(_tax_exempt: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
         }
        def tax_exempt=(_tax_exempt); end
        # The purchaser's tax IDs to be used for this order.
        sig { returns(T.nilable(T::Array[::Stripe::Order::CreateParams::TaxDetails::TaxId])) }
        def tax_ids; end
        sig {
          params(_tax_ids: T.nilable(T::Array[::Stripe::Order::CreateParams::TaxDetails::TaxId])).returns(T.nilable(T::Array[::Stripe::Order::CreateParams::TaxDetails::TaxId]))
         }
        def tax_ids=(_tax_ids); end
        sig {
          params(tax_exempt: T.nilable(T.any(String, String)), tax_ids: T.nilable(T::Array[::Stripe::Order::CreateParams::TaxDetails::TaxId])).void
         }
        def initialize(tax_exempt: nil, tax_ids: nil); end
      end
      # Settings for automatic tax calculation for this order.
      sig { returns(T.nilable(::Stripe::Order::CreateParams::AutomaticTax)) }
      def automatic_tax; end
      sig {
        params(_automatic_tax: T.nilable(::Stripe::Order::CreateParams::AutomaticTax)).returns(T.nilable(::Stripe::Order::CreateParams::AutomaticTax))
       }
      def automatic_tax=(_automatic_tax); end
      # Billing details for the customer. If a customer is provided, this will be automatically populated with values from that customer if override values are not provided.
      sig { returns(T.nilable(T.any(String, ::Stripe::Order::CreateParams::BillingDetails))) }
      def billing_details; end
      sig {
        params(_billing_details: T.nilable(T.any(String, ::Stripe::Order::CreateParams::BillingDetails))).returns(T.nilable(T.any(String, ::Stripe::Order::CreateParams::BillingDetails)))
       }
      def billing_details=(_billing_details); end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      sig { params(_currency: String).returns(String) }
      def currency=(_currency); end
      # The customer associated with this order.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # The coupons, promotion codes, and/or discounts to apply to the order.
      sig { returns(T.nilable(T.any(String, T::Array[::Stripe::Order::CreateParams::Discount]))) }
      def discounts; end
      sig {
        params(_discounts: T.nilable(T.any(String, T::Array[::Stripe::Order::CreateParams::Discount]))).returns(T.nilable(T.any(String, T::Array[::Stripe::Order::CreateParams::Discount])))
       }
      def discounts=(_discounts); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The IP address of the purchaser for this order.
      sig { returns(T.nilable(String)) }
      def ip_address; end
      sig { params(_ip_address: T.nilable(String)).returns(T.nilable(String)) }
      def ip_address=(_ip_address); end
      # A list of line items the customer is ordering. Each line item includes information about the product, the quantity, and the resulting cost.
      sig { returns(T::Array[::Stripe::Order::CreateParams::LineItem]) }
      def line_items; end
      sig {
        params(_line_items: T::Array[::Stripe::Order::CreateParams::LineItem]).returns(T::Array[::Stripe::Order::CreateParams::LineItem])
       }
      def line_items=(_line_items); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # Payment information associated with the order, including payment settings.
      sig { returns(T.nilable(::Stripe::Order::CreateParams::Payment)) }
      def payment; end
      sig {
        params(_payment: T.nilable(::Stripe::Order::CreateParams::Payment)).returns(T.nilable(::Stripe::Order::CreateParams::Payment))
       }
      def payment=(_payment); end
      # Settings for the customer cost of shipping for this order.
      sig { returns(T.nilable(T.any(String, ::Stripe::Order::CreateParams::ShippingCost))) }
      def shipping_cost; end
      sig {
        params(_shipping_cost: T.nilable(T.any(String, ::Stripe::Order::CreateParams::ShippingCost))).returns(T.nilable(T.any(String, ::Stripe::Order::CreateParams::ShippingCost)))
       }
      def shipping_cost=(_shipping_cost); end
      # Shipping details for the order.
      sig { returns(T.nilable(T.any(String, ::Stripe::Order::CreateParams::ShippingDetails))) }
      def shipping_details; end
      sig {
        params(_shipping_details: T.nilable(T.any(String, ::Stripe::Order::CreateParams::ShippingDetails))).returns(T.nilable(T.any(String, ::Stripe::Order::CreateParams::ShippingDetails)))
       }
      def shipping_details=(_shipping_details); end
      # Additional tax details about the purchaser to be used for this order.
      sig { returns(T.nilable(::Stripe::Order::CreateParams::TaxDetails)) }
      def tax_details; end
      sig {
        params(_tax_details: T.nilable(::Stripe::Order::CreateParams::TaxDetails)).returns(T.nilable(::Stripe::Order::CreateParams::TaxDetails))
       }
      def tax_details=(_tax_details); end
      sig {
        params(automatic_tax: T.nilable(::Stripe::Order::CreateParams::AutomaticTax), billing_details: T.nilable(T.any(String, ::Stripe::Order::CreateParams::BillingDetails)), currency: String, customer: T.nilable(String), description: T.nilable(String), discounts: T.nilable(T.any(String, T::Array[::Stripe::Order::CreateParams::Discount])), expand: T.nilable(T::Array[String]), ip_address: T.nilable(String), line_items: T::Array[::Stripe::Order::CreateParams::LineItem], metadata: T.nilable(T::Hash[String, String]), payment: T.nilable(::Stripe::Order::CreateParams::Payment), shipping_cost: T.nilable(T.any(String, ::Stripe::Order::CreateParams::ShippingCost)), shipping_details: T.nilable(T.any(String, ::Stripe::Order::CreateParams::ShippingDetails)), tax_details: T.nilable(::Stripe::Order::CreateParams::TaxDetails)).void
       }
      def initialize(
        automatic_tax: nil,
        billing_details: nil,
        currency: nil,
        customer: nil,
        description: nil,
        discounts: nil,
        expand: nil,
        ip_address: nil,
        line_items: nil,
        metadata: nil,
        payment: nil,
        shipping_cost: nil,
        shipping_details: nil,
        tax_details: nil
      ); end
    end
    class UpdateParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        # Enable automatic tax calculation which will automatically compute tax rates on this order.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        sig { params(enabled: T::Boolean).void }
        def initialize(enabled: nil); end
      end
      class BillingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Address line 1, such as the street, PO Box, or company name.
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2, such as the apartment, suite, unit, or building.
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix, such as "NY" or "TX".
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
           }
          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          ); end
        end
        # The billing address provided by the customer.
        sig { returns(T.nilable(::Stripe::Order::UpdateParams::BillingDetails::Address)) }
        def address; end
        sig {
          params(_address: T.nilable(::Stripe::Order::UpdateParams::BillingDetails::Address)).returns(T.nilable(::Stripe::Order::UpdateParams::BillingDetails::Address))
         }
        def address=(_address); end
        # The billing email provided by the customer.
        sig { returns(T.nilable(String)) }
        def email; end
        sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_email); end
        # The billing name provided by the customer.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # The billing phone number provided by the customer.
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        sig {
          params(address: T.nilable(::Stripe::Order::UpdateParams::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
         }
        def initialize(address: nil, email: nil, name: nil, phone: nil); end
      end
      class Discount < Stripe::RequestParams
        # ID of the coupon to create a new discount for.
        sig { returns(T.nilable(String)) }
        def coupon; end
        sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
        def coupon=(_coupon); end
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(T.nilable(String)) }
        def discount; end
        sig { params(_discount: T.nilable(String)).returns(T.nilable(String)) }
        def discount=(_discount); end
        # ID of the promotion code to create a new discount for.
        sig { returns(T.nilable(String)) }
        def promotion_code; end
        sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
        def promotion_code=(_promotion_code); end
        sig {
          params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
         }
        def initialize(coupon: nil, discount: nil, promotion_code: nil); end
      end
      class LineItem < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          # ID of the coupon to create a new discount for.
          sig { returns(T.nilable(String)) }
          def coupon; end
          sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
          def coupon=(_coupon); end
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(T.nilable(String)) }
          def discount; end
          sig { params(_discount: T.nilable(String)).returns(T.nilable(String)) }
          def discount=(_discount); end
          sig { params(coupon: T.nilable(String), discount: T.nilable(String)).void }
          def initialize(coupon: nil, discount: nil); end
        end
        class PriceData < Stripe::RequestParams
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # ID of the [Product](https://docs.stripe.com/api/products) this [Price](https://docs.stripe.com/api/prices) belongs to.
          #
          # Use this to implement a variable-pricing model in your integration. This is required if `product_data` is not specified.
          sig { returns(T.nilable(String)) }
          def product; end
          sig { params(_product: T.nilable(String)).returns(T.nilable(String)) }
          def product=(_product); end
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          sig { returns(T.nilable(String)) }
          def tax_behavior; end
          sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
          def tax_behavior=(_tax_behavior); end
          # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
          sig { returns(T.nilable(Integer)) }
          def unit_amount; end
          sig { params(_unit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def unit_amount=(_unit_amount); end
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(T.nilable(String)) }
          def unit_amount_decimal; end
          sig { params(_unit_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
          def unit_amount_decimal=(_unit_amount_decimal); end
          sig {
            params(currency: T.nilable(String), product: T.nilable(String), tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
           }
          def initialize(
            currency: nil,
            product: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          ); end
        end
        class ProductData < Stripe::RequestParams
          class PackageDimensions < Stripe::RequestParams
            # Height, in inches. Maximum precision is 2 decimal places.
            sig { returns(Float) }
            def height; end
            sig { params(_height: Float).returns(Float) }
            def height=(_height); end
            # Length, in inches. Maximum precision is 2 decimal places.
            sig { returns(Float) }
            def length; end
            sig { params(_length: Float).returns(Float) }
            def length=(_length); end
            # Weight, in ounces. Maximum precision is 2 decimal places.
            sig { returns(Float) }
            def weight; end
            sig { params(_weight: Float).returns(Float) }
            def weight=(_weight); end
            # Width, in inches. Maximum precision is 2 decimal places.
            sig { returns(Float) }
            def width; end
            sig { params(_width: Float).returns(Float) }
            def width=(_width); end
            sig { params(height: Float, length: Float, weight: Float, width: Float).void }
            def initialize(height: nil, length: nil, weight: nil, width: nil); end
          end
          # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
          sig { returns(T.nilable(String)) }
          def description; end
          sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_description); end
          # A unique identifier for this product.
          #
          # `product_data` automatically creates a Product with this ID. If a Product with the same ID already exists, then `product_data` re-uses it to avoid duplicates. If any of the fields in the existing Product are different from the values in `product_data`, `product_data` updates the existing Product with the new information. So set `product_data[id]` to the same string every time you sell the same product, but don't re-use the same string for different products.
          sig { returns(String) }
          def id; end
          sig { params(_id: String).returns(String) }
          def id=(_id); end
          # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
          sig { returns(T.nilable(T.any(String, T::Array[String]))) }
          def images; end
          sig {
            params(_images: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
           }
          def images=(_images); end
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
           }
          def metadata=(_metadata); end
          # The product's name, meant to be displayable to the customer.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          # The dimensions of this product for shipping purposes.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::LineItem::ProductData::PackageDimensions)))
           }
          def package_dimensions; end
          sig {
            params(_package_dimensions: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::LineItem::ProductData::PackageDimensions))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::LineItem::ProductData::PackageDimensions)))
           }
          def package_dimensions=(_package_dimensions); end
          # Whether this product is shipped (i.e., physical goods).
          sig { returns(T.nilable(T::Boolean)) }
          def shippable; end
          sig { params(_shippable: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def shippable=(_shippable); end
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
          sig { returns(T.nilable(String)) }
          def tax_code; end
          sig { params(_tax_code: T.nilable(String)).returns(T.nilable(String)) }
          def tax_code=(_tax_code); end
          # A URL of a publicly-accessible webpage for this product.
          sig { returns(T.nilable(String)) }
          def url; end
          sig { params(_url: T.nilable(String)).returns(T.nilable(String)) }
          def url=(_url); end
          sig {
            params(description: T.nilable(String), id: String, images: T.nilable(T.any(String, T::Array[String])), metadata: T.nilable(T.any(String, T::Hash[String, String])), name: String, package_dimensions: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::LineItem::ProductData::PackageDimensions)), shippable: T.nilable(T::Boolean), tax_code: T.nilable(String), url: T.nilable(String)).void
           }
          def initialize(
            description: nil,
            id: nil,
            images: nil,
            metadata: nil,
            name: nil,
            package_dimensions: nil,
            shippable: nil,
            tax_code: nil,
            url: nil
          ); end
        end
        # The description for the line item. Will default to the name of the associated product.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # The discounts applied to this line item.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::Order::UpdateParams::LineItem::Discount])))
         }
        def discounts; end
        sig {
          params(_discounts: T.nilable(T.any(String, T::Array[::Stripe::Order::UpdateParams::LineItem::Discount]))).returns(T.nilable(T.any(String, T::Array[::Stripe::Order::UpdateParams::LineItem::Discount])))
         }
        def discounts=(_discounts); end
        # The ID of an existing line item on the order.
        sig { returns(T.nilable(String)) }
        def id; end
        sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
        def id=(_id); end
        # The ID of a [Price](https://docs.stripe.com/api/prices) to add to the Order.
        #
        # The `price` parameter is an alternative to using the `product` parameter. If each of your products are sold at a single price, you can set `Product.default_price` and then pass the `product` parameter when creating a line item. If your products are sold at several possible prices, use the `price` parameter to explicitly specify which one to use.
        sig { returns(T.nilable(String)) }
        def price; end
        sig { params(_price: T.nilable(String)).returns(T.nilable(String)) }
        def price=(_price); end
        # Data used to generate a new Price object inline.
        #
        # The `price_data` parameter is an alternative to using the `product` or `price` parameters. If you create a Product upfront and configure a `Product.default_price`, pass the `product` parameter when creating a line item. If you prefer not to define Products upfront, or if you charge variable prices, pass the `price_data` parameter to describe the price for this line item.
        #
        # Each time you pass `price_data` we create a Price for the Product. This Price is hidden in both the Dashboard and API lists and cannot be reused.
        sig { returns(T.nilable(::Stripe::Order::UpdateParams::LineItem::PriceData)) }
        def price_data; end
        sig {
          params(_price_data: T.nilable(::Stripe::Order::UpdateParams::LineItem::PriceData)).returns(T.nilable(::Stripe::Order::UpdateParams::LineItem::PriceData))
         }
        def price_data=(_price_data); end
        # The ID of a [Product](https://docs.stripe.com/api/products) to add to the Order.
        #
        # The Product must have a `default_price` specified. Otherwise, specify the price by passing the `price` or `price_data` parameter.
        sig { returns(T.nilable(String)) }
        def product; end
        sig { params(_product: T.nilable(String)).returns(T.nilable(String)) }
        def product=(_product); end
        # Defines a [Product](https://docs.stripe.com/api/products) inline and adds it to the Order.
        #
        # `product_data` is an alternative to the `product` parameter. If you created a Product upfront, use the `product` parameter to refer to the existing Product. But if you prefer not to create Products upfront, pass the `product_data` parameter to define a Product inline as part of configuring the Order.
        #
        # `product_data` automatically creates a Product, just as if you had manually created the Product. If a Product with the same ID already exists, then `product_data` re-uses it to avoid duplicates.
        sig { returns(T.nilable(::Stripe::Order::UpdateParams::LineItem::ProductData)) }
        def product_data; end
        sig {
          params(_product_data: T.nilable(::Stripe::Order::UpdateParams::LineItem::ProductData)).returns(T.nilable(::Stripe::Order::UpdateParams::LineItem::ProductData))
         }
        def product_data=(_product_data); end
        # The quantity of the line item.
        sig { returns(T.nilable(Integer)) }
        def quantity; end
        sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def quantity=(_quantity); end
        # The tax rates applied to this line item.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        def tax_rates; end
        sig {
          params(_tax_rates: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
         }
        def tax_rates=(_tax_rates); end
        sig {
          params(description: T.nilable(String), discounts: T.nilable(T.any(String, T::Array[::Stripe::Order::UpdateParams::LineItem::Discount])), id: T.nilable(String), price: T.nilable(String), price_data: T.nilable(::Stripe::Order::UpdateParams::LineItem::PriceData), product: T.nilable(String), product_data: T.nilable(::Stripe::Order::UpdateParams::LineItem::ProductData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
         }
        def initialize(
          description: nil,
          discounts: nil,
          id: nil,
          price: nil,
          price_data: nil,
          product: nil,
          product_data: nil,
          quantity: nil,
          tax_rates: nil
        ); end
      end
      class Payment < Stripe::RequestParams
        class Settings < Stripe::RequestParams
          class PaymentMethodOptions < Stripe::RequestParams
            class AcssDebit < Stripe::RequestParams
              class MandateOptions < Stripe::RequestParams
                # A URL for custom mandate text to render during confirmation step.
                # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
                # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
                sig { returns(T.nilable(String)) }
                def custom_mandate_url; end
                sig { params(_custom_mandate_url: T.nilable(String)).returns(T.nilable(String)) }
                def custom_mandate_url=(_custom_mandate_url); end
                # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
                sig { returns(T.nilable(String)) }
                def interval_description; end
                sig { params(_interval_description: T.nilable(String)).returns(T.nilable(String)) }
                def interval_description=(_interval_description); end
                # Payment schedule for the mandate.
                sig { returns(T.nilable(String)) }
                def payment_schedule; end
                sig { params(_payment_schedule: T.nilable(String)).returns(T.nilable(String)) }
                def payment_schedule=(_payment_schedule); end
                # Transaction type of the mandate.
                sig { returns(T.nilable(String)) }
                def transaction_type; end
                sig { params(_transaction_type: T.nilable(String)).returns(T.nilable(String)) }
                def transaction_type=(_transaction_type); end
                sig {
                  params(custom_mandate_url: T.nilable(String), interval_description: T.nilable(String), payment_schedule: T.nilable(String), transaction_type: T.nilable(String)).void
                 }
                def initialize(
                  custom_mandate_url: nil,
                  interval_description: nil,
                  payment_schedule: nil,
                  transaction_type: nil
                ); end
              end
              # Additional fields for Mandate creation
              sig {
                returns(T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::AcssDebit::MandateOptions))
               }
              def mandate_options; end
              sig {
                params(_mandate_options: T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::AcssDebit::MandateOptions)).returns(T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::AcssDebit::MandateOptions))
               }
              def mandate_options=(_mandate_options); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.any(String, String))) }
              def setup_future_usage; end
              sig {
                params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def setup_future_usage=(_setup_future_usage); end
              # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
              sig { returns(T.nilable(String)) }
              def target_date; end
              sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
              def target_date=(_target_date); end
              # Bank account verification method.
              sig { returns(T.nilable(String)) }
              def verification_method; end
              sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
              def verification_method=(_verification_method); end
              sig {
                params(mandate_options: T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::AcssDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String), verification_method: T.nilable(String)).void
               }
              def initialize(
                mandate_options: nil,
                setup_future_usage: nil,
                target_date: nil,
                verification_method: nil
              ); end
            end
            class AfterpayClearpay < Stripe::RequestParams
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              sig { returns(T.nilable(String)) }
              def capture_method; end
              sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
              def capture_method=(_capture_method); end
              # An internal identifier or reference this payment corresponds to. The identifier is limited to 128 characters and may contain only letters, digits, underscores, backslashes and dashes.
              sig { returns(T.nilable(String)) }
              def reference; end
              sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
              def reference=(_reference); end
              # Indicates that you intend to make future payments with the payment method.
              #
              # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
              #
              # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
              #
              # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              def setup_future_usage; end
              sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
              def setup_future_usage=(_setup_future_usage); end
              sig {
                params(capture_method: T.nilable(String), reference: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(capture_method: nil, reference: nil, setup_future_usage: nil); end
            end
            class Alipay < Stripe::RequestParams
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.any(String, String))) }
              def setup_future_usage; end
              sig {
                params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def setup_future_usage=(_setup_future_usage); end
              sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
              def initialize(setup_future_usage: nil); end
            end
            class Bancontact < Stripe::RequestParams
              # Preferred language of the Bancontact authorization page that the customer is redirected to.
              sig { returns(T.nilable(String)) }
              def preferred_language; end
              sig { params(_preferred_language: T.nilable(String)).returns(T.nilable(String)) }
              def preferred_language=(_preferred_language); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.any(String, String))) }
              def setup_future_usage; end
              sig {
                params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def setup_future_usage=(_setup_future_usage); end
              sig {
                params(preferred_language: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
               }
              def initialize(preferred_language: nil, setup_future_usage: nil); end
            end
            class Card < Stripe::RequestParams
              # Controls when the funds will be captured from the customer's account.
              sig { returns(T.nilable(String)) }
              def capture_method; end
              sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
              def capture_method=(_capture_method); end
              # Indicates that you intend to make future payments with the payment method.
              #
              # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
              #
              # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
              #
              # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              def setup_future_usage; end
              sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
              def setup_future_usage=(_setup_future_usage); end
              sig {
                params(capture_method: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(capture_method: nil, setup_future_usage: nil); end
            end
            class CustomerBalance < Stripe::RequestParams
              class BankTransfer < Stripe::RequestParams
                class EuBankTransfer < Stripe::RequestParams
                  # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
                  sig { returns(String) }
                  def country; end
                  sig { params(_country: String).returns(String) }
                  def country=(_country); end
                  sig { params(country: String).void }
                  def initialize(country: nil); end
                end
                # Configuration for the eu_bank_transfer funding type.
                sig {
                  returns(T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
                 }
                def eu_bank_transfer; end
                sig {
                  params(_eu_bank_transfer: T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer)).returns(T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
                 }
                def eu_bank_transfer=(_eu_bank_transfer); end
                # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
                #
                # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
                sig { returns(T.nilable(T::Array[String])) }
                def requested_address_types; end
                sig {
                  params(_requested_address_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
                 }
                def requested_address_types=(_requested_address_types); end
                # The list of bank transfer types that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig {
                  params(eu_bank_transfer: T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), requested_address_types: T.nilable(T::Array[String]), type: String).void
                 }
                def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil); end
              end
              # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
              sig {
                returns(T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer))
               }
              def bank_transfer; end
              sig {
                params(_bank_transfer: T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer)).returns(T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer))
               }
              def bank_transfer=(_bank_transfer); end
              # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
              sig { returns(T.nilable(String)) }
              def funding_type; end
              sig { params(_funding_type: T.nilable(String)).returns(T.nilable(String)) }
              def funding_type=(_funding_type); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              def setup_future_usage; end
              sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
              def setup_future_usage=(_setup_future_usage); end
              sig {
                params(bank_transfer: T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(bank_transfer: nil, funding_type: nil, setup_future_usage: nil); end
            end
            class Ideal < Stripe::RequestParams
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.any(String, String))) }
              def setup_future_usage; end
              sig {
                params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def setup_future_usage=(_setup_future_usage); end
              sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
              def initialize(setup_future_usage: nil); end
            end
            class Klarna < Stripe::RequestParams
              class OnDemand < Stripe::RequestParams
                # Your average amount value. You can use a value across your customer base, or segment based on customer type, country, etc.
                sig { returns(T.nilable(Integer)) }
                def average_amount; end
                sig { params(_average_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def average_amount=(_average_amount); end
                # The maximum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
                sig { returns(T.nilable(Integer)) }
                def maximum_amount; end
                sig { params(_maximum_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def maximum_amount=(_maximum_amount); end
                # The lowest or minimum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
                sig { returns(T.nilable(Integer)) }
                def minimum_amount; end
                sig { params(_minimum_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def minimum_amount=(_minimum_amount); end
                # Interval at which the customer is making purchases
                sig { returns(T.nilable(String)) }
                def purchase_interval; end
                sig { params(_purchase_interval: T.nilable(String)).returns(T.nilable(String)) }
                def purchase_interval=(_purchase_interval); end
                # The number of `purchase_interval` between charges
                sig { returns(T.nilable(Integer)) }
                def purchase_interval_count; end
                sig {
                  params(_purchase_interval_count: T.nilable(Integer)).returns(T.nilable(Integer))
                 }
                def purchase_interval_count=(_purchase_interval_count); end
                sig {
                  params(average_amount: T.nilable(Integer), maximum_amount: T.nilable(Integer), minimum_amount: T.nilable(Integer), purchase_interval: T.nilable(String), purchase_interval_count: T.nilable(Integer)).void
                 }
                def initialize(
                  average_amount: nil,
                  maximum_amount: nil,
                  minimum_amount: nil,
                  purchase_interval: nil,
                  purchase_interval_count: nil
                ); end
              end
              class Subscription < Stripe::RequestParams
                class NextBilling < Stripe::RequestParams
                  # The amount of the next charge for the subscription.
                  sig { returns(Integer) }
                  def amount; end
                  sig { params(_amount: Integer).returns(Integer) }
                  def amount=(_amount); end
                  # The date of the next charge for the subscription in YYYY-MM-DD format.
                  sig { returns(String) }
                  def date; end
                  sig { params(_date: String).returns(String) }
                  def date=(_date); end
                  sig { params(amount: Integer, date: String).void }
                  def initialize(amount: nil, date: nil); end
                end
                # Unit of time between subscription charges.
                sig { returns(String) }
                def interval; end
                sig { params(_interval: String).returns(String) }
                def interval=(_interval); end
                # The number of intervals (specified in the `interval` attribute) between subscription charges. For example, `interval=month` and `interval_count=3` charges every 3 months.
                sig { returns(T.nilable(Integer)) }
                def interval_count; end
                sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def interval_count=(_interval_count); end
                # Name for subscription.
                sig { returns(T.nilable(String)) }
                def name; end
                sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
                def name=(_name); end
                # Describes the upcoming charge for this subscription.
                sig {
                  returns(T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription::NextBilling))
                 }
                def next_billing; end
                sig {
                  params(_next_billing: T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription::NextBilling)).returns(T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription::NextBilling))
                 }
                def next_billing=(_next_billing); end
                # A non-customer-facing reference to correlate subscription charges in the Klarna app. Use a value that persists across subscription charges.
                sig { returns(String) }
                def reference; end
                sig { params(_reference: String).returns(String) }
                def reference=(_reference); end
                sig {
                  params(interval: String, interval_count: T.nilable(Integer), name: T.nilable(String), next_billing: T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription::NextBilling), reference: String).void
                 }
                def initialize(
                  interval: nil,
                  interval_count: nil,
                  name: nil,
                  next_billing: nil,
                  reference: nil
                ); end
              end
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              sig { returns(T.nilable(String)) }
              def capture_method; end
              sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
              def capture_method=(_capture_method); end
              # On-demand details if setting up or charging an on-demand payment.
              sig {
                returns(T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna::OnDemand))
               }
              def on_demand; end
              sig {
                params(_on_demand: T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna::OnDemand)).returns(T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna::OnDemand))
               }
              def on_demand=(_on_demand); end
              # Preferred language of the Klarna authorization page that the customer is redirected to
              sig { returns(T.nilable(String)) }
              def preferred_locale; end
              sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
              def preferred_locale=(_preferred_locale); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              def setup_future_usage; end
              sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
              def setup_future_usage=(_setup_future_usage); end
              # Subscription details if setting up or charging a subscription.
              sig {
                returns(T.nilable(T.any(String, T::Array[::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription])))
               }
              def subscriptions; end
              sig {
                params(_subscriptions: T.nilable(T.any(String, T::Array[::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription]))).returns(T.nilable(T.any(String, T::Array[::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription])))
               }
              def subscriptions=(_subscriptions); end
              sig {
                params(capture_method: T.nilable(String), on_demand: T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna::OnDemand), preferred_locale: T.nilable(String), setup_future_usage: T.nilable(String), subscriptions: T.nilable(T.any(String, T::Array[::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription]))).void
               }
              def initialize(
                capture_method: nil,
                on_demand: nil,
                preferred_locale: nil,
                setup_future_usage: nil,
                subscriptions: nil
              ); end
            end
            class Link < Stripe::RequestParams
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              sig { returns(T.nilable(String)) }
              def capture_method; end
              sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
              def capture_method=(_capture_method); end
              # [Deprecated] This is a legacy parameter that no longer has any function.
              sig { returns(T.nilable(String)) }
              def persistent_token; end
              sig { params(_persistent_token: T.nilable(String)).returns(T.nilable(String)) }
              def persistent_token=(_persistent_token); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.any(String, String))) }
              def setup_future_usage; end
              sig {
                params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def setup_future_usage=(_setup_future_usage); end
              sig {
                params(capture_method: T.nilable(String), persistent_token: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
               }
              def initialize(
                capture_method: nil,
                persistent_token: nil,
                setup_future_usage: nil
              ); end
            end
            class Oxxo < Stripe::RequestParams
              # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
              sig { returns(T.nilable(Integer)) }
              def expires_after_days; end
              sig { params(_expires_after_days: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def expires_after_days=(_expires_after_days); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              def setup_future_usage; end
              sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
              def setup_future_usage=(_setup_future_usage); end
              sig {
                params(expires_after_days: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
               }
              def initialize(expires_after_days: nil, setup_future_usage: nil); end
            end
            class P24 < Stripe::RequestParams
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              def setup_future_usage; end
              sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
              def setup_future_usage=(_setup_future_usage); end
              # Confirm that the payer has accepted the P24 terms and conditions.
              sig { returns(T.nilable(T::Boolean)) }
              def tos_shown_and_accepted; end
              sig {
                params(_tos_shown_and_accepted: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
               }
              def tos_shown_and_accepted=(_tos_shown_and_accepted); end
              sig {
                params(setup_future_usage: T.nilable(String), tos_shown_and_accepted: T.nilable(T::Boolean)).void
               }
              def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil); end
            end
            class Paypal < Stripe::RequestParams
              class LineItem < Stripe::RequestParams
                class Tax < Stripe::RequestParams
                  # The tax for a single unit of the line item in minor units. Cannot be a negative number.
                  sig { returns(Integer) }
                  def amount; end
                  sig { params(_amount: Integer).returns(Integer) }
                  def amount=(_amount); end
                  # The tax behavior for the line item.
                  sig { returns(String) }
                  def behavior; end
                  sig { params(_behavior: String).returns(String) }
                  def behavior=(_behavior); end
                  sig { params(amount: Integer, behavior: String).void }
                  def initialize(amount: nil, behavior: nil); end
                end
                # Type of the line item.
                sig { returns(T.nilable(String)) }
                def category; end
                sig { params(_category: T.nilable(String)).returns(T.nilable(String)) }
                def category=(_category); end
                # Description of the line item.
                sig { returns(T.nilable(String)) }
                def description; end
                sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
                def description=(_description); end
                # Descriptive name of the line item.
                sig { returns(String) }
                def name; end
                sig { params(_name: String).returns(String) }
                def name=(_name); end
                # Quantity of the line item. Must be a positive number.
                sig { returns(Integer) }
                def quantity; end
                sig { params(_quantity: Integer).returns(Integer) }
                def quantity=(_quantity); end
                # Client facing stock keeping unit, article number or similar.
                sig { returns(T.nilable(String)) }
                def sku; end
                sig { params(_sku: T.nilable(String)).returns(T.nilable(String)) }
                def sku=(_sku); end
                # The Stripe account ID of the connected account that sells the item.
                sig { returns(T.nilable(String)) }
                def sold_by; end
                sig { params(_sold_by: T.nilable(String)).returns(T.nilable(String)) }
                def sold_by=(_sold_by); end
                # The tax information for the line item.
                sig {
                  returns(T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem::Tax))
                 }
                def tax; end
                sig {
                  params(_tax: T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem::Tax)).returns(T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem::Tax))
                 }
                def tax=(_tax); end
                # Price for a single unit of the line item in minor units. Cannot be a negative number.
                sig { returns(Integer) }
                def unit_amount; end
                sig { params(_unit_amount: Integer).returns(Integer) }
                def unit_amount=(_unit_amount); end
                sig {
                  params(category: T.nilable(String), description: T.nilable(String), name: String, quantity: Integer, sku: T.nilable(String), sold_by: T.nilable(String), tax: T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem::Tax), unit_amount: Integer).void
                 }
                def initialize(
                  category: nil,
                  description: nil,
                  name: nil,
                  quantity: nil,
                  sku: nil,
                  sold_by: nil,
                  tax: nil,
                  unit_amount: nil
                ); end
              end
              # Controls when the funds will be captured from the customer's account.
              sig { returns(T.nilable(String)) }
              def capture_method; end
              sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
              def capture_method=(_capture_method); end
              # The line items purchased by the customer.
              sig {
                returns(T.nilable(T::Array[::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem]))
               }
              def line_items; end
              sig {
                params(_line_items: T.nilable(T::Array[::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem])).returns(T.nilable(T::Array[::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem]))
               }
              def line_items=(_line_items); end
              # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
              sig { returns(T.nilable(String)) }
              def preferred_locale; end
              sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
              def preferred_locale=(_preferred_locale); end
              # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
              sig { returns(T.nilable(String)) }
              def reference; end
              sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
              def reference=(_reference); end
              # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
              sig { returns(T.nilable(String)) }
              def reference_id; end
              sig { params(_reference_id: T.nilable(String)).returns(T.nilable(String)) }
              def reference_id=(_reference_id); end
              # The risk correlation ID for an on-session payment using a saved PayPal payment method.
              sig { returns(T.nilable(String)) }
              def risk_correlation_id; end
              sig { params(_risk_correlation_id: T.nilable(String)).returns(T.nilable(String)) }
              def risk_correlation_id=(_risk_correlation_id); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.any(String, String))) }
              def setup_future_usage; end
              sig {
                params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def setup_future_usage=(_setup_future_usage); end
              # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
              sig { returns(T.nilable(T::Array[String])) }
              def subsellers; end
              sig {
                params(_subsellers: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
               }
              def subsellers=(_subsellers); end
              sig {
                params(capture_method: T.nilable(String), line_items: T.nilable(T::Array[::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem]), preferred_locale: T.nilable(String), reference: T.nilable(String), reference_id: T.nilable(String), risk_correlation_id: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String)), subsellers: T.nilable(T::Array[String])).void
               }
              def initialize(
                capture_method: nil,
                line_items: nil,
                preferred_locale: nil,
                reference: nil,
                reference_id: nil,
                risk_correlation_id: nil,
                setup_future_usage: nil,
                subsellers: nil
              ); end
            end
            class SepaDebit < Stripe::RequestParams
              class MandateOptions < Stripe::RequestParams
                # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
                sig { returns(T.nilable(String)) }
                def reference_prefix; end
                sig { params(_reference_prefix: T.nilable(String)).returns(T.nilable(String)) }
                def reference_prefix=(_reference_prefix); end
                sig { params(reference_prefix: T.nilable(String)).void }
                def initialize(reference_prefix: nil); end
              end
              # Additional fields for Mandate creation
              sig {
                returns(T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::SepaDebit::MandateOptions))
               }
              def mandate_options; end
              sig {
                params(_mandate_options: T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::SepaDebit::MandateOptions)).returns(T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::SepaDebit::MandateOptions))
               }
              def mandate_options=(_mandate_options); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.any(String, String))) }
              def setup_future_usage; end
              sig {
                params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def setup_future_usage=(_setup_future_usage); end
              # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
              sig { returns(T.nilable(String)) }
              def target_date; end
              sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
              def target_date=(_target_date); end
              sig {
                params(mandate_options: T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::SepaDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
               }
              def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
            end
            class Sofort < Stripe::RequestParams
              # Language shown to the payer on redirect.
              sig { returns(T.nilable(T.any(String, String))) }
              def preferred_language; end
              sig {
                params(_preferred_language: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def preferred_language=(_preferred_language); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.any(String, String))) }
              def setup_future_usage; end
              sig {
                params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
               }
              def setup_future_usage=(_setup_future_usage); end
              sig {
                params(preferred_language: T.nilable(T.any(String, String)), setup_future_usage: T.nilable(T.any(String, String))).void
               }
              def initialize(preferred_language: nil, setup_future_usage: nil); end
            end
            class WechatPay < Stripe::RequestParams
              # The app ID registered with WeChat Pay. Only required when client is ios or android.
              sig { returns(T.nilable(String)) }
              def app_id; end
              sig { params(_app_id: T.nilable(String)).returns(T.nilable(String)) }
              def app_id=(_app_id); end
              # The client type that the end customer will pay from
              sig { returns(T.nilable(String)) }
              def client; end
              sig { params(_client: T.nilable(String)).returns(T.nilable(String)) }
              def client=(_client); end
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              def setup_future_usage; end
              sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
              def setup_future_usage=(_setup_future_usage); end
              sig {
                params(app_id: T.nilable(String), client: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(app_id: nil, client: nil, setup_future_usage: nil); end
            end
            # If paying by `acss_debit`, this sub-hash contains details about the ACSS Debit payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::AcssDebit)))
             }
            def acss_debit; end
            sig {
              params(_acss_debit: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::AcssDebit))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::AcssDebit)))
             }
            def acss_debit=(_acss_debit); end
            # If paying by `afterpay_clearpay`, this sub-hash contains details about the AfterpayClearpay payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::AfterpayClearpay)))
             }
            def afterpay_clearpay; end
            sig {
              params(_afterpay_clearpay: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::AfterpayClearpay))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::AfterpayClearpay)))
             }
            def afterpay_clearpay=(_afterpay_clearpay); end
            # If paying by `alipay`, this sub-hash contains details about the Alipay payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Alipay)))
             }
            def alipay; end
            sig {
              params(_alipay: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Alipay))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Alipay)))
             }
            def alipay=(_alipay); end
            # If paying by `bancontact`, this sub-hash contains details about the Bancontact payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Bancontact)))
             }
            def bancontact; end
            sig {
              params(_bancontact: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Bancontact))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Bancontact)))
             }
            def bancontact=(_bancontact); end
            # If paying by `card`, this sub-hash contains details about the Card payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Card)))
             }
            def card; end
            sig {
              params(_card: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Card))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Card)))
             }
            def card=(_card); end
            # If paying by `customer_balance`, this sub-hash contains details about the Customer Balance payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance)))
             }
            def customer_balance; end
            sig {
              params(_customer_balance: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance)))
             }
            def customer_balance=(_customer_balance); end
            # If paying by `ideal`, this sub-hash contains details about the iDEAL payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Ideal)))
             }
            def ideal; end
            sig {
              params(_ideal: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Ideal))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Ideal)))
             }
            def ideal=(_ideal); end
            # If paying by `klarna`, this sub-hash contains details about the Klarna payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna)))
             }
            def klarna; end
            sig {
              params(_klarna: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna)))
             }
            def klarna=(_klarna); end
            # If paying by `link`, this sub-hash contains details about the Link payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Link)))
             }
            def link; end
            sig {
              params(_link: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Link))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Link)))
             }
            def link=(_link); end
            # If paying by `oxxo`, this sub-hash contains details about the OXXO payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Oxxo)))
             }
            def oxxo; end
            sig {
              params(_oxxo: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Oxxo))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Oxxo)))
             }
            def oxxo=(_oxxo); end
            # If paying by `p24`, this sub-hash contains details about the P24 payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::P24)))
             }
            def p24; end
            sig {
              params(_p24: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::P24))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::P24)))
             }
            def p24=(_p24); end
            # If paying by `paypal`, this sub-hash contains details about the PayPal payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal)))
             }
            def paypal; end
            sig {
              params(_paypal: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal)))
             }
            def paypal=(_paypal); end
            # If paying by `sepa_debit`, this sub-hash contains details about the SEPA Debit payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::SepaDebit)))
             }
            def sepa_debit; end
            sig {
              params(_sepa_debit: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::SepaDebit))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::SepaDebit)))
             }
            def sepa_debit=(_sepa_debit); end
            # If paying by `sofort`, this sub-hash contains details about the Sofort payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Sofort)))
             }
            def sofort; end
            sig {
              params(_sofort: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Sofort))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Sofort)))
             }
            def sofort=(_sofort); end
            # If paying by `wechat_pay`, this sub-hash contains details about the WeChat Pay payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::WechatPay)))
             }
            def wechat_pay; end
            sig {
              params(_wechat_pay: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::WechatPay))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::WechatPay)))
             }
            def wechat_pay=(_wechat_pay); end
            sig {
              params(acss_debit: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::AcssDebit)), afterpay_clearpay: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::AfterpayClearpay)), alipay: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Alipay)), bancontact: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Bancontact)), card: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Card)), customer_balance: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance)), ideal: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Ideal)), klarna: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna)), link: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Link)), oxxo: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Oxxo)), p24: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::P24)), paypal: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal)), sepa_debit: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::SepaDebit)), sofort: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::Sofort)), wechat_pay: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions::WechatPay))).void
             }
            def initialize(
              acss_debit: nil,
              afterpay_clearpay: nil,
              alipay: nil,
              bancontact: nil,
              card: nil,
              customer_balance: nil,
              ideal: nil,
              klarna: nil,
              link: nil,
              oxxo: nil,
              p24: nil,
              paypal: nil,
              sepa_debit: nil,
              sofort: nil,
              wechat_pay: nil
            ); end
          end
          class TransferData < Stripe::RequestParams
            # The amount that will be transferred automatically when the order is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
            sig { returns(T.nilable(Integer)) }
            def amount; end
            sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_amount); end
            # ID of the Connected account receiving the transfer.
            sig { returns(String) }
            def destination; end
            sig { params(_destination: String).returns(String) }
            def destination=(_destination); end
            sig { params(amount: T.nilable(Integer), destination: String).void }
            def initialize(amount: nil, destination: nil); end
          end
          # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
          sig { returns(T.nilable(T.any(String, Integer))) }
          def application_fee_amount; end
          sig {
            params(_application_fee_amount: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
           }
          def application_fee_amount=(_application_fee_amount); end
          # PaymentMethod-specific configuration to provide to the order's PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions))
           }
          def payment_method_options; end
          sig {
            params(_payment_method_options: T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions)).returns(T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions))
           }
          def payment_method_options=(_payment_method_options); end
          # The list of [payment method types](https://stripe.com/docs/payments/payment-methods/overview) to provide to the order's PaymentIntent. Do not include this attribute if you prefer to manage your payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
          sig { returns(T.nilable(T::Array[String])) }
          def payment_method_types; end
          sig {
            params(_payment_method_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def payment_method_types=(_payment_method_types); end
          # The URL to redirect the customer to after they authenticate their payment.
          sig { returns(T.nilable(String)) }
          def return_url; end
          sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
          def return_url=(_return_url); end
          # For non-card charges, you can use this value as the complete description that appears on your customers' statements. Must contain at least one letter, maximum 22 characters.
          sig { returns(T.nilable(String)) }
          def statement_descriptor; end
          sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor=(_statement_descriptor); end
          # Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
          sig { returns(T.nilable(String)) }
          def statement_descriptor_suffix; end
          sig { params(_statement_descriptor_suffix: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor_suffix=(_statement_descriptor_suffix); end
          # Provides configuration for completing a transfer for the order after it is paid.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::TransferData)))
           }
          def transfer_data; end
          sig {
            params(_transfer_data: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::TransferData))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::TransferData)))
           }
          def transfer_data=(_transfer_data); end
          sig {
            params(application_fee_amount: T.nilable(T.any(String, Integer)), payment_method_options: T.nilable(::Stripe::Order::UpdateParams::Payment::Settings::PaymentMethodOptions), payment_method_types: T.nilable(T::Array[String]), return_url: T.nilable(String), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::Payment::Settings::TransferData))).void
           }
          def initialize(
            application_fee_amount: nil,
            payment_method_options: nil,
            payment_method_types: nil,
            return_url: nil,
            statement_descriptor: nil,
            statement_descriptor_suffix: nil,
            transfer_data: nil
          ); end
        end
        # Settings describing how the order should configure generated PaymentIntents.
        sig { returns(::Stripe::Order::UpdateParams::Payment::Settings) }
        def settings; end
        sig {
          params(_settings: ::Stripe::Order::UpdateParams::Payment::Settings).returns(::Stripe::Order::UpdateParams::Payment::Settings)
         }
        def settings=(_settings); end
        sig { params(settings: ::Stripe::Order::UpdateParams::Payment::Settings).void }
        def initialize(settings: nil); end
      end
      class ShippingCost < Stripe::RequestParams
        class ShippingRateData < Stripe::RequestParams
          class DeliveryEstimate < Stripe::RequestParams
            class Maximum < Stripe::RequestParams
              # A unit of time.
              sig { returns(String) }
              def unit; end
              sig { params(_unit: String).returns(String) }
              def unit=(_unit); end
              # Must be greater than 0.
              sig { returns(Integer) }
              def value; end
              sig { params(_value: Integer).returns(Integer) }
              def value=(_value); end
              sig { params(unit: String, value: Integer).void }
              def initialize(unit: nil, value: nil); end
            end
            class Minimum < Stripe::RequestParams
              # A unit of time.
              sig { returns(String) }
              def unit; end
              sig { params(_unit: String).returns(String) }
              def unit=(_unit); end
              # Must be greater than 0.
              sig { returns(Integer) }
              def value; end
              sig { params(_value: Integer).returns(Integer) }
              def value=(_value); end
              sig { params(unit: String, value: Integer).void }
              def initialize(unit: nil, value: nil); end
            end
            # The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
            sig {
              returns(T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum))
             }
            def maximum; end
            sig {
              params(_maximum: T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum)).returns(T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum))
             }
            def maximum=(_maximum); end
            # The lower bound of the estimated range. If empty, represents no lower bound.
            sig {
              returns(T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum))
             }
            def minimum; end
            sig {
              params(_minimum: T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum)).returns(T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum))
             }
            def minimum=(_minimum); end
            sig {
              params(maximum: T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum), minimum: T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum)).void
             }
            def initialize(maximum: nil, minimum: nil); end
          end
          class FixedAmount < Stripe::RequestParams
            class CurrencyOptions < Stripe::RequestParams
              # A non-negative integer in cents representing how much to charge.
              sig { returns(Integer) }
              def amount; end
              sig { params(_amount: Integer).returns(Integer) }
              def amount=(_amount); end
              # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
              sig { returns(T.nilable(String)) }
              def tax_behavior; end
              sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
              def tax_behavior=(_tax_behavior); end
              sig { params(amount: Integer, tax_behavior: T.nilable(String)).void }
              def initialize(amount: nil, tax_behavior: nil); end
            end
            # A non-negative integer in cents representing how much to charge.
            sig { returns(Integer) }
            def amount; end
            sig { params(_amount: Integer).returns(Integer) }
            def amount=(_amount); end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            def currency; end
            sig { params(_currency: String).returns(String) }
            def currency=(_currency); end
            # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
            sig {
              returns(T.nilable(T::Hash[String, ::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions]))
             }
            def currency_options; end
            sig {
              params(_currency_options: T.nilable(T::Hash[String, ::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions])).returns(T.nilable(T::Hash[String, ::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions]))
             }
            def currency_options=(_currency_options); end
            sig {
              params(amount: Integer, currency: String, currency_options: T.nilable(T::Hash[String, ::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions])).void
             }
            def initialize(amount: nil, currency: nil, currency_options: nil); end
          end
          # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
          sig {
            returns(T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate))
           }
          def delivery_estimate; end
          sig {
            params(_delivery_estimate: T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate)).returns(T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate))
           }
          def delivery_estimate=(_delivery_estimate); end
          # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
          sig { returns(String) }
          def display_name; end
          sig { params(_display_name: String).returns(String) }
          def display_name=(_display_name); end
          # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
          sig {
            returns(T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::FixedAmount))
           }
          def fixed_amount; end
          sig {
            params(_fixed_amount: T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::FixedAmount)).returns(T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::FixedAmount))
           }
          def fixed_amount=(_fixed_amount); end
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
          sig { returns(T.nilable(String)) }
          def tax_behavior; end
          sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
          def tax_behavior=(_tax_behavior); end
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
          sig { returns(T.nilable(String)) }
          def tax_code; end
          sig { params(_tax_code: T.nilable(String)).returns(T.nilable(String)) }
          def tax_code=(_tax_code); end
          # The type of calculation to use on the shipping rate.
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
          sig {
            params(delivery_estimate: T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate), display_name: String, fixed_amount: T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData::FixedAmount), metadata: T.nilable(T::Hash[String, String]), tax_behavior: T.nilable(String), tax_code: T.nilable(String), type: T.nilable(String)).void
           }
          def initialize(
            delivery_estimate: nil,
            display_name: nil,
            fixed_amount: nil,
            metadata: nil,
            tax_behavior: nil,
            tax_code: nil,
            type: nil
          ); end
        end
        # The ID of the shipping rate to use for this order.
        sig { returns(T.nilable(String)) }
        def shipping_rate; end
        sig { params(_shipping_rate: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_rate=(_shipping_rate); end
        # Parameters to create a new ad-hoc shipping rate for this order.
        sig { returns(T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData)) }
        def shipping_rate_data; end
        sig {
          params(_shipping_rate_data: T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData)).returns(T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData))
         }
        def shipping_rate_data=(_shipping_rate_data); end
        sig {
          params(shipping_rate: T.nilable(String), shipping_rate_data: T.nilable(::Stripe::Order::UpdateParams::ShippingCost::ShippingRateData)).void
         }
        def initialize(shipping_rate: nil, shipping_rate_data: nil); end
      end
      class ShippingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Address line 1, such as the street, PO Box, or company name.
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2, such as the apartment, suite, unit, or building.
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix, such as "NY" or "TX".
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
           }
          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          ); end
        end
        # The shipping address for the order.
        sig { returns(::Stripe::Order::UpdateParams::ShippingDetails::Address) }
        def address; end
        sig {
          params(_address: ::Stripe::Order::UpdateParams::ShippingDetails::Address).returns(::Stripe::Order::UpdateParams::ShippingDetails::Address)
         }
        def address=(_address); end
        # The name of the recipient of the order.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # The phone number (including extension) for the recipient of the order.
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        sig {
          params(address: ::Stripe::Order::UpdateParams::ShippingDetails::Address, name: String, phone: T.nilable(String)).void
         }
        def initialize(address: nil, name: nil, phone: nil); end
      end
      class TaxDetails < Stripe::RequestParams
        class TaxId < Stripe::RequestParams
          # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `aw_tin`, `az_tin`, `ba_tin`, `bb_tin`, `bd_bin`, `bf_ifu`, `bg_uic`, `bh_vat`, `bj_ifu`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cm_niu`, `cn_tin`, `co_nit`, `cr_tin`, `cv_nif`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `et_tin`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kg_tin`, `kh_tin`, `kr_brn`, `kz_bin`, `la_tin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # Value of the tax ID.
          sig { returns(String) }
          def value; end
          sig { params(_value: String).returns(String) }
          def value=(_value); end
          sig { params(type: String, value: String).void }
          def initialize(type: nil, value: nil); end
        end
        # The purchaser's tax exemption status. One of `none`, `exempt`, or `reverse`.
        sig { returns(T.nilable(T.any(String, String))) }
        def tax_exempt; end
        sig {
          params(_tax_exempt: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
         }
        def tax_exempt=(_tax_exempt); end
        # The purchaser's tax IDs to be used for this order.
        sig { returns(T.nilable(T::Array[::Stripe::Order::UpdateParams::TaxDetails::TaxId])) }
        def tax_ids; end
        sig {
          params(_tax_ids: T.nilable(T::Array[::Stripe::Order::UpdateParams::TaxDetails::TaxId])).returns(T.nilable(T::Array[::Stripe::Order::UpdateParams::TaxDetails::TaxId]))
         }
        def tax_ids=(_tax_ids); end
        sig {
          params(tax_exempt: T.nilable(T.any(String, String)), tax_ids: T.nilable(T::Array[::Stripe::Order::UpdateParams::TaxDetails::TaxId])).void
         }
        def initialize(tax_exempt: nil, tax_ids: nil); end
      end
      # Settings for automatic tax calculation for this order.
      sig { returns(T.nilable(::Stripe::Order::UpdateParams::AutomaticTax)) }
      def automatic_tax; end
      sig {
        params(_automatic_tax: T.nilable(::Stripe::Order::UpdateParams::AutomaticTax)).returns(T.nilable(::Stripe::Order::UpdateParams::AutomaticTax))
       }
      def automatic_tax=(_automatic_tax); end
      # Billing details for the customer. If a customer is provided, this will be automatically populated with values from that customer if override values are not provided.
      sig { returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::BillingDetails))) }
      def billing_details; end
      sig {
        params(_billing_details: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::BillingDetails))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::BillingDetails)))
       }
      def billing_details=(_billing_details); end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      def currency; end
      sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_currency); end
      # The customer associated with this order.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # The coupons, promotion codes, and/or discounts to apply to the order. Pass the empty string `""` to unset this field.
      sig { returns(T.nilable(T.any(String, T::Array[::Stripe::Order::UpdateParams::Discount]))) }
      def discounts; end
      sig {
        params(_discounts: T.nilable(T.any(String, T::Array[::Stripe::Order::UpdateParams::Discount]))).returns(T.nilable(T.any(String, T::Array[::Stripe::Order::UpdateParams::Discount])))
       }
      def discounts=(_discounts); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The IP address of the purchaser for this order.
      sig { returns(T.nilable(String)) }
      def ip_address; end
      sig { params(_ip_address: T.nilable(String)).returns(T.nilable(String)) }
      def ip_address=(_ip_address); end
      # A list of line items the customer is ordering. Each line item includes information about the product, the quantity, and the resulting cost.
      sig { returns(T.nilable(T::Array[::Stripe::Order::UpdateParams::LineItem])) }
      def line_items; end
      sig {
        params(_line_items: T.nilable(T::Array[::Stripe::Order::UpdateParams::LineItem])).returns(T.nilable(T::Array[::Stripe::Order::UpdateParams::LineItem]))
       }
      def line_items=(_line_items); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # Payment information associated with the order, including payment settings.
      sig { returns(T.nilable(::Stripe::Order::UpdateParams::Payment)) }
      def payment; end
      sig {
        params(_payment: T.nilable(::Stripe::Order::UpdateParams::Payment)).returns(T.nilable(::Stripe::Order::UpdateParams::Payment))
       }
      def payment=(_payment); end
      # Settings for the customer cost of shipping for this order.
      sig { returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::ShippingCost))) }
      def shipping_cost; end
      sig {
        params(_shipping_cost: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::ShippingCost))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::ShippingCost)))
       }
      def shipping_cost=(_shipping_cost); end
      # Shipping details for the order.
      sig { returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::ShippingDetails))) }
      def shipping_details; end
      sig {
        params(_shipping_details: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::ShippingDetails))).returns(T.nilable(T.any(String, ::Stripe::Order::UpdateParams::ShippingDetails)))
       }
      def shipping_details=(_shipping_details); end
      # Additional tax details about the purchaser to be used for this order.
      sig { returns(T.nilable(::Stripe::Order::UpdateParams::TaxDetails)) }
      def tax_details; end
      sig {
        params(_tax_details: T.nilable(::Stripe::Order::UpdateParams::TaxDetails)).returns(T.nilable(::Stripe::Order::UpdateParams::TaxDetails))
       }
      def tax_details=(_tax_details); end
      sig {
        params(automatic_tax: T.nilable(::Stripe::Order::UpdateParams::AutomaticTax), billing_details: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::BillingDetails)), currency: T.nilable(String), customer: T.nilable(String), description: T.nilable(String), discounts: T.nilable(T.any(String, T::Array[::Stripe::Order::UpdateParams::Discount])), expand: T.nilable(T::Array[String]), ip_address: T.nilable(String), line_items: T.nilable(T::Array[::Stripe::Order::UpdateParams::LineItem]), metadata: T.nilable(T.any(String, T::Hash[String, String])), payment: T.nilable(::Stripe::Order::UpdateParams::Payment), shipping_cost: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::ShippingCost)), shipping_details: T.nilable(T.any(String, ::Stripe::Order::UpdateParams::ShippingDetails)), tax_details: T.nilable(::Stripe::Order::UpdateParams::TaxDetails)).void
       }
      def initialize(
        automatic_tax: nil,
        billing_details: nil,
        currency: nil,
        customer: nil,
        description: nil,
        discounts: nil,
        expand: nil,
        ip_address: nil,
        line_items: nil,
        metadata: nil,
        payment: nil,
        shipping_cost: nil,
        shipping_details: nil,
        tax_details: nil
      ); end
    end
    class ListLineItemsParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      def ending_before; end
      sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
      def ending_before=(_ending_before); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
    end
    class CancelParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class ReopenParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class SubmitParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # `expected_total` should always be set to the order's `amount_total` field. If they don't match, submitting the order will fail. This helps detect race conditions where something else concurrently modifies the order.
      sig { returns(Integer) }
      def expected_total; end
      sig { params(_expected_total: Integer).returns(Integer) }
      def expected_total=(_expected_total); end
      sig { params(expand: T.nilable(T::Array[String]), expected_total: Integer).void }
      def initialize(expand: nil, expected_total: nil); end
    end
    # Cancels the order as well as the payment intent if one is attached.
    sig {
      params(params: T.any(::Stripe::Order::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def cancel(params = {}, opts = {}); end

    # Cancels the order as well as the payment intent if one is attached.
    sig {
      params(id: String, params: T.any(::Stripe::Order::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def self.cancel(id, params = {}, opts = {}); end

    # Creates a new open order object.
    sig {
      params(params: T.any(::Stripe::Order::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def self.create(params = {}, opts = {}); end

    # Returns a list of your orders. The orders are returned sorted by creation date, with the most recently created orders appearing first.
    sig {
      params(params: T.any(::Stripe::Order::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # When retrieving an order, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    sig {
      params(params: T.any(::Stripe::Order::ListLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list_line_items(params = {}, opts = {}); end

    # When retrieving an order, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    sig {
      params(id: String, params: T.any(::Stripe::Order::ListLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list_line_items(id, params = {}, opts = {}); end

    # Reopens a submitted order.
    sig {
      params(params: T.any(::Stripe::Order::ReopenParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def reopen(params = {}, opts = {}); end

    # Reopens a submitted order.
    sig {
      params(id: String, params: T.any(::Stripe::Order::ReopenParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def self.reopen(id, params = {}, opts = {}); end

    # Submitting an Order transitions the status to processing and creates a PaymentIntent object so the order can be paid. If the Order has an amount_total of 0, no PaymentIntent object will be created. Once the order is submitted, its contents cannot be changed, unless the [reopen](https://docs.stripe.com/api#reopen_order) method is called.
    sig {
      params(params: T.any(::Stripe::Order::SubmitParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def submit(params = {}, opts = {}); end

    # Submitting an Order transitions the status to processing and creates a PaymentIntent object so the order can be paid. If the Order has an amount_total of 0, no PaymentIntent object will be created. Once the order is submitted, its contents cannot be changed, unless the [reopen](https://docs.stripe.com/api#reopen_order) method is called.
    sig {
      params(id: String, params: T.any(::Stripe::Order::SubmitParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def self.submit(id, params = {}, opts = {}); end

    # Updates the specific order by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    sig {
      params(id: String, params: T.any(::Stripe::Order::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def self.update(id, params = {}, opts = {}); end
  end
end