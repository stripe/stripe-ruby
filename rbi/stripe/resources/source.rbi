# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # `Source` objects allow you to accept a variety of payment methods. They
  # represent a customer's payment instrument, and can be used with the Stripe API
  # just like a `Card` object: once chargeable, they can be charged, or can be
  # attached to customers.
  #
  # Stripe doesn't recommend using the deprecated [Sources API](https://stripe.com/docs/api/sources).
  # We recommend that you adopt the [PaymentMethods API](https://stripe.com/docs/api/payment_methods).
  # This newer API provides access to our latest features and payment method types.
  #
  # Related guides: [Sources API](https://stripe.com/docs/sources) and [Sources & Customers](https://stripe.com/docs/sources/customers).
  class Source < APIResource
    class AchCreditTransfer < Stripe::StripeObject
      # Attribute for field account_number
      sig { returns(T.nilable(String)) }
      def account_number; end
      # Attribute for field bank_name
      sig { returns(T.nilable(String)) }
      def bank_name; end
      # Attribute for field fingerprint
      sig { returns(T.nilable(String)) }
      def fingerprint; end
      # Attribute for field refund_account_holder_name
      sig { returns(T.nilable(String)) }
      def refund_account_holder_name; end
      # Attribute for field refund_account_holder_type
      sig { returns(T.nilable(String)) }
      def refund_account_holder_type; end
      # Attribute for field refund_routing_number
      sig { returns(T.nilable(String)) }
      def refund_routing_number; end
      # Attribute for field routing_number
      sig { returns(T.nilable(String)) }
      def routing_number; end
      # Attribute for field swift_code
      sig { returns(T.nilable(String)) }
      def swift_code; end
    end
    class AchDebit < Stripe::StripeObject
      # Attribute for field bank_name
      sig { returns(T.nilable(String)) }
      def bank_name; end
      # Attribute for field country
      sig { returns(T.nilable(String)) }
      def country; end
      # Attribute for field fingerprint
      sig { returns(T.nilable(String)) }
      def fingerprint; end
      # Attribute for field last4
      sig { returns(T.nilable(String)) }
      def last4; end
      # Attribute for field routing_number
      sig { returns(T.nilable(String)) }
      def routing_number; end
      # Attribute for field type
      sig { returns(T.nilable(String)) }
      def type; end
    end
    class AcssDebit < Stripe::StripeObject
      # Attribute for field bank_address_city
      sig { returns(T.nilable(String)) }
      def bank_address_city; end
      # Attribute for field bank_address_line_1
      sig { returns(T.nilable(String)) }
      def bank_address_line_1; end
      # Attribute for field bank_address_line_2
      sig { returns(T.nilable(String)) }
      def bank_address_line_2; end
      # Attribute for field bank_address_postal_code
      sig { returns(T.nilable(String)) }
      def bank_address_postal_code; end
      # Attribute for field bank_name
      sig { returns(T.nilable(String)) }
      def bank_name; end
      # Attribute for field category
      sig { returns(T.nilable(String)) }
      def category; end
      # Attribute for field country
      sig { returns(T.nilable(String)) }
      def country; end
      # Attribute for field fingerprint
      sig { returns(T.nilable(String)) }
      def fingerprint; end
      # Attribute for field last4
      sig { returns(T.nilable(String)) }
      def last4; end
      # Attribute for field routing_number
      sig { returns(T.nilable(String)) }
      def routing_number; end
    end
    class Alipay < Stripe::StripeObject
      # Attribute for field data_string
      sig { returns(T.nilable(String)) }
      def data_string; end
      # Attribute for field native_url
      sig { returns(T.nilable(String)) }
      def native_url; end
      # Attribute for field statement_descriptor
      sig { returns(T.nilable(String)) }
      def statement_descriptor; end
    end
    class AuBecsDebit < Stripe::StripeObject
      # Attribute for field bsb_number
      sig { returns(T.nilable(String)) }
      def bsb_number; end
      # Attribute for field fingerprint
      sig { returns(T.nilable(String)) }
      def fingerprint; end
      # Attribute for field last4
      sig { returns(T.nilable(String)) }
      def last4; end
    end
    class Bancontact < Stripe::StripeObject
      # Attribute for field bank_code
      sig { returns(T.nilable(String)) }
      def bank_code; end
      # Attribute for field bank_name
      sig { returns(T.nilable(String)) }
      def bank_name; end
      # Attribute for field bic
      sig { returns(T.nilable(String)) }
      def bic; end
      # Attribute for field iban_last4
      sig { returns(T.nilable(String)) }
      def iban_last4; end
      # Attribute for field preferred_language
      sig { returns(T.nilable(String)) }
      def preferred_language; end
      # Attribute for field statement_descriptor
      sig { returns(T.nilable(String)) }
      def statement_descriptor; end
    end
    class Card < Stripe::StripeObject
      # Attribute for field address_line1_check
      sig { returns(T.nilable(String)) }
      def address_line1_check; end
      # Attribute for field address_zip_check
      sig { returns(T.nilable(String)) }
      def address_zip_check; end
      # Attribute for field brand
      sig { returns(T.nilable(String)) }
      def brand; end
      # Attribute for field country
      sig { returns(T.nilable(String)) }
      def country; end
      # Attribute for field cvc_check
      sig { returns(T.nilable(String)) }
      def cvc_check; end
      # Attribute for field description
      sig { returns(String) }
      def description; end
      # Attribute for field dynamic_last4
      sig { returns(T.nilable(String)) }
      def dynamic_last4; end
      # Attribute for field exp_month
      sig { returns(T.nilable(Integer)) }
      def exp_month; end
      # Attribute for field exp_year
      sig { returns(T.nilable(Integer)) }
      def exp_year; end
      # Attribute for field fingerprint
      sig { returns(String) }
      def fingerprint; end
      # Attribute for field funding
      sig { returns(T.nilable(String)) }
      def funding; end
      # Attribute for field iin
      sig { returns(String) }
      def iin; end
      # Attribute for field issuer
      sig { returns(String) }
      def issuer; end
      # Attribute for field last4
      sig { returns(T.nilable(String)) }
      def last4; end
      # Attribute for field name
      sig { returns(T.nilable(String)) }
      def name; end
      # Attribute for field three_d_secure
      sig { returns(String) }
      def three_d_secure; end
      # Attribute for field tokenization_method
      sig { returns(T.nilable(String)) }
      def tokenization_method; end
    end
    class CardPresent < Stripe::StripeObject
      # Attribute for field application_cryptogram
      sig { returns(String) }
      def application_cryptogram; end
      # Attribute for field application_preferred_name
      sig { returns(String) }
      def application_preferred_name; end
      # Attribute for field authorization_code
      sig { returns(T.nilable(String)) }
      def authorization_code; end
      # Attribute for field authorization_response_code
      sig { returns(String) }
      def authorization_response_code; end
      # Attribute for field brand
      sig { returns(T.nilable(String)) }
      def brand; end
      # Attribute for field country
      sig { returns(T.nilable(String)) }
      def country; end
      # Attribute for field cvm_type
      sig { returns(String) }
      def cvm_type; end
      # Attribute for field data_type
      sig { returns(T.nilable(String)) }
      def data_type; end
      # Attribute for field dedicated_file_name
      sig { returns(String) }
      def dedicated_file_name; end
      # Attribute for field description
      sig { returns(String) }
      def description; end
      # Attribute for field emv_auth_data
      sig { returns(String) }
      def emv_auth_data; end
      # Attribute for field evidence_customer_signature
      sig { returns(T.nilable(String)) }
      def evidence_customer_signature; end
      # Attribute for field evidence_transaction_certificate
      sig { returns(T.nilable(String)) }
      def evidence_transaction_certificate; end
      # Attribute for field exp_month
      sig { returns(T.nilable(Integer)) }
      def exp_month; end
      # Attribute for field exp_year
      sig { returns(T.nilable(Integer)) }
      def exp_year; end
      # Attribute for field fingerprint
      sig { returns(String) }
      def fingerprint; end
      # Attribute for field funding
      sig { returns(T.nilable(String)) }
      def funding; end
      # Attribute for field iin
      sig { returns(String) }
      def iin; end
      # Attribute for field issuer
      sig { returns(String) }
      def issuer; end
      # Attribute for field last4
      sig { returns(T.nilable(String)) }
      def last4; end
      # Attribute for field pos_device_id
      sig { returns(T.nilable(String)) }
      def pos_device_id; end
      # Attribute for field pos_entry_mode
      sig { returns(String) }
      def pos_entry_mode; end
      # Attribute for field read_method
      sig { returns(T.nilable(String)) }
      def read_method; end
      # Attribute for field reader
      sig { returns(T.nilable(String)) }
      def reader; end
      # Attribute for field terminal_verification_results
      sig { returns(String) }
      def terminal_verification_results; end
      # Attribute for field transaction_status_information
      sig { returns(String) }
      def transaction_status_information; end
    end
    class CodeVerification < Stripe::StripeObject
      # The number of attempts remaining to authenticate the source object with a verification code.
      sig { returns(Integer) }
      def attempts_remaining; end
      # The status of the code verification, either `pending` (awaiting verification, `attempts_remaining` should be greater than 0), `succeeded` (successful verification) or `failed` (failed verification, cannot be verified anymore as `attempts_remaining` should be 0).
      sig { returns(String) }
      def status; end
    end
    class Eps < Stripe::StripeObject
      # Attribute for field reference
      sig { returns(T.nilable(String)) }
      def reference; end
      # Attribute for field statement_descriptor
      sig { returns(T.nilable(String)) }
      def statement_descriptor; end
    end
    class Giropay < Stripe::StripeObject
      # Attribute for field bank_code
      sig { returns(T.nilable(String)) }
      def bank_code; end
      # Attribute for field bank_name
      sig { returns(T.nilable(String)) }
      def bank_name; end
      # Attribute for field bic
      sig { returns(T.nilable(String)) }
      def bic; end
      # Attribute for field statement_descriptor
      sig { returns(T.nilable(String)) }
      def statement_descriptor; end
    end
    class Ideal < Stripe::StripeObject
      # Attribute for field bank
      sig { returns(T.nilable(String)) }
      def bank; end
      # Attribute for field bic
      sig { returns(T.nilable(String)) }
      def bic; end
      # Attribute for field iban_last4
      sig { returns(T.nilable(String)) }
      def iban_last4; end
      # Attribute for field statement_descriptor
      sig { returns(T.nilable(String)) }
      def statement_descriptor; end
    end
    class Klarna < Stripe::StripeObject
      # Attribute for field background_image_url
      sig { returns(String) }
      def background_image_url; end
      # Attribute for field client_token
      sig { returns(T.nilable(String)) }
      def client_token; end
      # Attribute for field first_name
      sig { returns(String) }
      def first_name; end
      # Attribute for field last_name
      sig { returns(String) }
      def last_name; end
      # Attribute for field locale
      sig { returns(String) }
      def locale; end
      # Attribute for field logo_url
      sig { returns(String) }
      def logo_url; end
      # Attribute for field page_title
      sig { returns(String) }
      def page_title; end
      # Attribute for field pay_later_asset_urls_descriptive
      sig { returns(String) }
      def pay_later_asset_urls_descriptive; end
      # Attribute for field pay_later_asset_urls_standard
      sig { returns(String) }
      def pay_later_asset_urls_standard; end
      # Attribute for field pay_later_name
      sig { returns(String) }
      def pay_later_name; end
      # Attribute for field pay_later_redirect_url
      sig { returns(String) }
      def pay_later_redirect_url; end
      # Attribute for field pay_now_asset_urls_descriptive
      sig { returns(String) }
      def pay_now_asset_urls_descriptive; end
      # Attribute for field pay_now_asset_urls_standard
      sig { returns(String) }
      def pay_now_asset_urls_standard; end
      # Attribute for field pay_now_name
      sig { returns(String) }
      def pay_now_name; end
      # Attribute for field pay_now_redirect_url
      sig { returns(String) }
      def pay_now_redirect_url; end
      # Attribute for field pay_over_time_asset_urls_descriptive
      sig { returns(String) }
      def pay_over_time_asset_urls_descriptive; end
      # Attribute for field pay_over_time_asset_urls_standard
      sig { returns(String) }
      def pay_over_time_asset_urls_standard; end
      # Attribute for field pay_over_time_name
      sig { returns(String) }
      def pay_over_time_name; end
      # Attribute for field pay_over_time_redirect_url
      sig { returns(String) }
      def pay_over_time_redirect_url; end
      # Attribute for field payment_method_categories
      sig { returns(String) }
      def payment_method_categories; end
      # Attribute for field purchase_country
      sig { returns(String) }
      def purchase_country; end
      # Attribute for field purchase_type
      sig { returns(String) }
      def purchase_type; end
      # Attribute for field redirect_url
      sig { returns(String) }
      def redirect_url; end
      # Attribute for field shipping_delay
      sig { returns(Integer) }
      def shipping_delay; end
      # Attribute for field shipping_first_name
      sig { returns(String) }
      def shipping_first_name; end
      # Attribute for field shipping_last_name
      sig { returns(String) }
      def shipping_last_name; end
    end
    class Multibanco < Stripe::StripeObject
      # Attribute for field entity
      sig { returns(T.nilable(String)) }
      def entity; end
      # Attribute for field reference
      sig { returns(T.nilable(String)) }
      def reference; end
      # Attribute for field refund_account_holder_address_city
      sig { returns(T.nilable(String)) }
      def refund_account_holder_address_city; end
      # Attribute for field refund_account_holder_address_country
      sig { returns(T.nilable(String)) }
      def refund_account_holder_address_country; end
      # Attribute for field refund_account_holder_address_line1
      sig { returns(T.nilable(String)) }
      def refund_account_holder_address_line1; end
      # Attribute for field refund_account_holder_address_line2
      sig { returns(T.nilable(String)) }
      def refund_account_holder_address_line2; end
      # Attribute for field refund_account_holder_address_postal_code
      sig { returns(T.nilable(String)) }
      def refund_account_holder_address_postal_code; end
      # Attribute for field refund_account_holder_address_state
      sig { returns(T.nilable(String)) }
      def refund_account_holder_address_state; end
      # Attribute for field refund_account_holder_name
      sig { returns(T.nilable(String)) }
      def refund_account_holder_name; end
      # Attribute for field refund_iban
      sig { returns(T.nilable(String)) }
      def refund_iban; end
    end
    class Owner < Stripe::StripeObject
      class Address < Stripe::StripeObject
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        def city; end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        # Address line 1 (e.g., street, PO Box, or company name).
        sig { returns(T.nilable(String)) }
        def line1; end
        # Address line 2 (e.g., apartment, suite, unit, or building).
        sig { returns(T.nilable(String)) }
        def line2; end
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        def state; end
      end
      class VerifiedAddress < Stripe::StripeObject
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        def city; end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        # Address line 1 (e.g., street, PO Box, or company name).
        sig { returns(T.nilable(String)) }
        def line1; end
        # Address line 2 (e.g., apartment, suite, unit, or building).
        sig { returns(T.nilable(String)) }
        def line2; end
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        def state; end
      end
      # Owner's address.
      sig { returns(T.nilable(Address)) }
      def address; end
      # Owner's email address.
      sig { returns(T.nilable(String)) }
      def email; end
      # Owner's full name.
      sig { returns(T.nilable(String)) }
      def name; end
      # Owner's phone number (including extension).
      sig { returns(T.nilable(String)) }
      def phone; end
      # Verified owner's address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
      sig { returns(T.nilable(VerifiedAddress)) }
      def verified_address; end
      # Verified owner's email address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
      sig { returns(T.nilable(String)) }
      def verified_email; end
      # Verified owner's full name. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
      sig { returns(T.nilable(String)) }
      def verified_name; end
      # Verified owner's phone number (including extension). Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
      sig { returns(T.nilable(String)) }
      def verified_phone; end
    end
    class P24 < Stripe::StripeObject
      # Attribute for field reference
      sig { returns(T.nilable(String)) }
      def reference; end
    end
    class Receiver < Stripe::StripeObject
      # The address of the receiver source. This is the value that should be communicated to the customer to send their funds to.
      sig { returns(T.nilable(String)) }
      def address; end
      # The total amount that was moved to your balance. This is almost always equal to the amount charged. In rare cases when customers deposit excess funds and we are unable to refund those, those funds get moved to your balance and show up in amount_charged as well. The amount charged is expressed in the source's currency.
      sig { returns(Integer) }
      def amount_charged; end
      # The total amount received by the receiver source. `amount_received = amount_returned + amount_charged` should be true for consumed sources unless customers deposit excess funds. The amount received is expressed in the source's currency.
      sig { returns(Integer) }
      def amount_received; end
      # The total amount that was returned to the customer. The amount returned is expressed in the source's currency.
      sig { returns(Integer) }
      def amount_returned; end
      # Type of refund attribute method, one of `email`, `manual`, or `none`.
      sig { returns(String) }
      def refund_attributes_method; end
      # Type of refund attribute status, one of `missing`, `requested`, or `available`.
      sig { returns(String) }
      def refund_attributes_status; end
    end
    class Redirect < Stripe::StripeObject
      # The failure reason for the redirect, either `user_abort` (the customer aborted or dropped out of the redirect flow), `declined` (the authentication failed or the transaction was declined), or `processing_error` (the redirect failed due to a technical error). Present only if the redirect status is `failed`.
      sig { returns(T.nilable(String)) }
      def failure_reason; end
      # The URL you provide to redirect the customer to after they authenticated their payment.
      sig { returns(String) }
      def return_url; end
      # The status of the redirect, either `pending` (ready to be used by your customer to authenticate the transaction), `succeeded` (succesful authentication, cannot be reused) or `not_required` (redirect should not be used) or `failed` (failed authentication, cannot be reused).
      sig { returns(String) }
      def status; end
      # The URL provided to you to redirect a customer to as part of a `redirect` authentication flow.
      sig { returns(String) }
      def url; end
    end
    class SepaCreditTransfer < Stripe::StripeObject
      # Attribute for field bank_name
      sig { returns(T.nilable(String)) }
      def bank_name; end
      # Attribute for field bic
      sig { returns(T.nilable(String)) }
      def bic; end
      # Attribute for field iban
      sig { returns(T.nilable(String)) }
      def iban; end
      # Attribute for field refund_account_holder_address_city
      sig { returns(T.nilable(String)) }
      def refund_account_holder_address_city; end
      # Attribute for field refund_account_holder_address_country
      sig { returns(T.nilable(String)) }
      def refund_account_holder_address_country; end
      # Attribute for field refund_account_holder_address_line1
      sig { returns(T.nilable(String)) }
      def refund_account_holder_address_line1; end
      # Attribute for field refund_account_holder_address_line2
      sig { returns(T.nilable(String)) }
      def refund_account_holder_address_line2; end
      # Attribute for field refund_account_holder_address_postal_code
      sig { returns(T.nilable(String)) }
      def refund_account_holder_address_postal_code; end
      # Attribute for field refund_account_holder_address_state
      sig { returns(T.nilable(String)) }
      def refund_account_holder_address_state; end
      # Attribute for field refund_account_holder_name
      sig { returns(T.nilable(String)) }
      def refund_account_holder_name; end
      # Attribute for field refund_iban
      sig { returns(T.nilable(String)) }
      def refund_iban; end
    end
    class SepaDebit < Stripe::StripeObject
      # Attribute for field bank_code
      sig { returns(T.nilable(String)) }
      def bank_code; end
      # Attribute for field branch_code
      sig { returns(T.nilable(String)) }
      def branch_code; end
      # Attribute for field country
      sig { returns(T.nilable(String)) }
      def country; end
      # Attribute for field fingerprint
      sig { returns(T.nilable(String)) }
      def fingerprint; end
      # Attribute for field last4
      sig { returns(T.nilable(String)) }
      def last4; end
      # Attribute for field mandate_reference
      sig { returns(T.nilable(String)) }
      def mandate_reference; end
      # Attribute for field mandate_url
      sig { returns(T.nilable(String)) }
      def mandate_url; end
    end
    class Sofort < Stripe::StripeObject
      # Attribute for field bank_code
      sig { returns(T.nilable(String)) }
      def bank_code; end
      # Attribute for field bank_name
      sig { returns(T.nilable(String)) }
      def bank_name; end
      # Attribute for field bic
      sig { returns(T.nilable(String)) }
      def bic; end
      # Attribute for field country
      sig { returns(T.nilable(String)) }
      def country; end
      # Attribute for field iban_last4
      sig { returns(T.nilable(String)) }
      def iban_last4; end
      # Attribute for field preferred_language
      sig { returns(T.nilable(String)) }
      def preferred_language; end
      # Attribute for field statement_descriptor
      sig { returns(T.nilable(String)) }
      def statement_descriptor; end
    end
    class SourceOrder < Stripe::StripeObject
      class Item < Stripe::StripeObject
        # The amount (price) for this order item.
        sig { returns(T.nilable(Integer)) }
        def amount; end
        # This currency of this order item. Required when `amount` is present.
        sig { returns(T.nilable(String)) }
        def currency; end
        # Human-readable description for this order item.
        sig { returns(T.nilable(String)) }
        def description; end
        # The ID of the associated object for this line item. Expandable if not null (e.g., expandable to a SKU).
        sig { returns(T.nilable(String)) }
        def parent; end
        # The quantity of this order item. When type is `sku`, this is the number of instances of the SKU to be ordered.
        sig { returns(Integer) }
        def quantity; end
        # The type of this order item. Must be `sku`, `tax`, or `shipping`.
        sig { returns(T.nilable(String)) }
        def type; end
      end
      class Shipping < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          def line2; end
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          def state; end
        end
        # Attribute for field address
        sig { returns(Address) }
        def address; end
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(T.nilable(String)) }
        def carrier; end
        # Recipient name.
        sig { returns(String) }
        def name; end
        # Recipient phone (including extension).
        sig { returns(T.nilable(String)) }
        def phone; end
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(T.nilable(String)) }
        def tracking_number; end
      end
      # A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount for the order.
      sig { returns(Integer) }
      def amount; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # The email address of the customer placing the order.
      sig { returns(String) }
      def email; end
      # List of items constituting the order.
      sig { returns(T.nilable(T::Array[Item])) }
      def items; end
      # Attribute for field shipping
      sig { returns(Shipping) }
      def shipping; end
    end
    class ThreeDSecure < Stripe::StripeObject
      # Attribute for field address_line1_check
      sig { returns(T.nilable(String)) }
      def address_line1_check; end
      # Attribute for field address_zip_check
      sig { returns(T.nilable(String)) }
      def address_zip_check; end
      # Attribute for field authenticated
      sig { returns(T.nilable(T::Boolean)) }
      def authenticated; end
      # Attribute for field brand
      sig { returns(T.nilable(String)) }
      def brand; end
      # Attribute for field card
      sig { returns(T.nilable(String)) }
      def card; end
      # Attribute for field country
      sig { returns(T.nilable(String)) }
      def country; end
      # Attribute for field customer
      sig { returns(T.nilable(String)) }
      def customer; end
      # Attribute for field cvc_check
      sig { returns(T.nilable(String)) }
      def cvc_check; end
      # Attribute for field description
      sig { returns(String) }
      def description; end
      # Attribute for field dynamic_last4
      sig { returns(T.nilable(String)) }
      def dynamic_last4; end
      # Attribute for field exp_month
      sig { returns(T.nilable(Integer)) }
      def exp_month; end
      # Attribute for field exp_year
      sig { returns(T.nilable(Integer)) }
      def exp_year; end
      # Attribute for field fingerprint
      sig { returns(String) }
      def fingerprint; end
      # Attribute for field funding
      sig { returns(T.nilable(String)) }
      def funding; end
      # Attribute for field iin
      sig { returns(String) }
      def iin; end
      # Attribute for field issuer
      sig { returns(String) }
      def issuer; end
      # Attribute for field last4
      sig { returns(T.nilable(String)) }
      def last4; end
      # Attribute for field name
      sig { returns(T.nilable(String)) }
      def name; end
      # Attribute for field three_d_secure
      sig { returns(String) }
      def three_d_secure; end
      # Attribute for field tokenization_method
      sig { returns(T.nilable(String)) }
      def tokenization_method; end
    end
    class Wechat < Stripe::StripeObject
      # Attribute for field prepay_id
      sig { returns(String) }
      def prepay_id; end
      # Attribute for field qr_code_url
      sig { returns(T.nilable(String)) }
      def qr_code_url; end
      # Attribute for field statement_descriptor
      sig { returns(String) }
      def statement_descriptor; end
    end
    # Attribute for field ach_credit_transfer
    sig { returns(AchCreditTransfer) }
    def ach_credit_transfer; end
    # Attribute for field ach_debit
    sig { returns(AchDebit) }
    def ach_debit; end
    # Attribute for field acss_debit
    sig { returns(AcssDebit) }
    def acss_debit; end
    # Attribute for field alipay
    sig { returns(Alipay) }
    def alipay; end
    # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
    sig { returns(T.nilable(String)) }
    def allow_redisplay; end
    # A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount associated with the source. This is the amount for which the source will be chargeable once ready. Required for `single_use` sources.
    sig { returns(T.nilable(Integer)) }
    def amount; end
    # Attribute for field au_becs_debit
    sig { returns(AuBecsDebit) }
    def au_becs_debit; end
    # Attribute for field bancontact
    sig { returns(Bancontact) }
    def bancontact; end
    # Attribute for field card
    sig { returns(Card) }
    def card; end
    # Attribute for field card_present
    sig { returns(CardPresent) }
    def card_present; end
    # The client secret of the source. Used for client-side retrieval using a publishable key.
    sig { returns(String) }
    def client_secret; end
    # Attribute for field code_verification
    sig { returns(CodeVerification) }
    def code_verification; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) associated with the source. This is the currency for which the source will be chargeable once ready. Required for `single_use` sources.
    sig { returns(T.nilable(String)) }
    def currency; end
    # The ID of the customer to which this source is attached. This will not be present when the source has not been attached to a customer.
    sig { returns(String) }
    def customer; end
    # Attribute for field eps
    sig { returns(Eps) }
    def eps; end
    # The authentication `flow` of the source. `flow` is one of `redirect`, `receiver`, `code_verification`, `none`.
    sig { returns(String) }
    def flow; end
    # Attribute for field giropay
    sig { returns(Giropay) }
    def giropay; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # Attribute for field ideal
    sig { returns(Ideal) }
    def ideal; end
    # Attribute for field klarna
    sig { returns(Klarna) }
    def klarna; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    # Attribute for field multibanco
    sig { returns(Multibanco) }
    def multibanco; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Information about the owner of the payment instrument that may be used or required by particular source types.
    sig { returns(T.nilable(Owner)) }
    def owner; end
    # Attribute for field p24
    sig { returns(P24) }
    def p24; end
    # Attribute for field receiver
    sig { returns(Receiver) }
    def receiver; end
    # Attribute for field redirect
    sig { returns(Redirect) }
    def redirect; end
    # Attribute for field sepa_credit_transfer
    sig { returns(SepaCreditTransfer) }
    def sepa_credit_transfer; end
    # Attribute for field sepa_debit
    sig { returns(SepaDebit) }
    def sepa_debit; end
    # Attribute for field sofort
    sig { returns(Sofort) }
    def sofort; end
    # Attribute for field source_order
    sig { returns(SourceOrder) }
    def source_order; end
    # Extra information about a source. This will appear on your customer's statement every time you charge the source.
    sig { returns(T.nilable(String)) }
    def statement_descriptor; end
    # The status of the source, one of `canceled`, `chargeable`, `consumed`, `failed`, or `pending`. Only `chargeable` sources can be used to create a charge.
    sig { returns(String) }
    def status; end
    # Attribute for field three_d_secure
    sig { returns(ThreeDSecure) }
    def three_d_secure; end
    # The `type` of the source. The `type` is a payment method, one of `ach_credit_transfer`, `ach_debit`, `alipay`, `bancontact`, `card`, `card_present`, `eps`, `giropay`, `ideal`, `multibanco`, `klarna`, `p24`, `sepa_debit`, `sofort`, `three_d_secure`, or `wechat`. An additional hash is included on the source with a name matching this value. It contains additional information specific to the [payment method](https://stripe.com/docs/sources) used.
    sig { returns(String) }
    def type; end
    # Either `reusable` or `single_use`. Whether this source should be reusable or not. Some source types may or may not be reusable by construction, while others may leave the option at creation. If an incompatible value is passed, an error will be returned.
    sig { returns(T.nilable(String)) }
    def usage; end
    # Attribute for field wechat
    sig { returns(Wechat) }
    def wechat; end
    class UpdateParams < Stripe::RequestParams
      class Mandate < Stripe::RequestParams
        class Acceptance < Stripe::RequestParams
          class Offline < Stripe::RequestParams
            # An email to contact you with if a copy of the mandate is requested, required if `type` is `offline`.
            sig { returns(String) }
            def contact_email; end
            sig { params(_contact_email: String).returns(String) }
            def contact_email=(_contact_email); end
            sig { params(contact_email: String).void }
            def initialize(contact_email: nil); end
          end
          class Online < Stripe::RequestParams
            # The Unix timestamp (in seconds) when the mandate was accepted or refused by the customer.
            sig { returns(T.nilable(Integer)) }
            def date; end
            sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def date=(_date); end
            # The IP address from which the mandate was accepted or refused by the customer.
            sig { returns(T.nilable(String)) }
            def ip; end
            sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
            def ip=(_ip); end
            # The user agent of the browser from which the mandate was accepted or refused by the customer.
            sig { returns(T.nilable(String)) }
            def user_agent; end
            sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
            def user_agent=(_user_agent); end
            sig {
              params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
             }
            def initialize(date: nil, ip: nil, user_agent: nil); end
          end
          # The Unix timestamp (in seconds) when the mandate was accepted or refused by the customer.
          sig { returns(T.nilable(Integer)) }
          def date; end
          sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def date=(_date); end
          # The IP address from which the mandate was accepted or refused by the customer.
          sig { returns(T.nilable(String)) }
          def ip; end
          sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
          def ip=(_ip); end
          # The parameters required to store a mandate accepted offline. Should only be set if `mandate[type]` is `offline`
          sig { returns(T.nilable(::Stripe::Source::UpdateParams::Mandate::Acceptance::Offline)) }
          def offline; end
          sig {
            params(_offline: T.nilable(::Stripe::Source::UpdateParams::Mandate::Acceptance::Offline)).returns(T.nilable(::Stripe::Source::UpdateParams::Mandate::Acceptance::Offline))
           }
          def offline=(_offline); end
          # The parameters required to store a mandate accepted online. Should only be set if `mandate[type]` is `online`
          sig { returns(T.nilable(::Stripe::Source::UpdateParams::Mandate::Acceptance::Online)) }
          def online; end
          sig {
            params(_online: T.nilable(::Stripe::Source::UpdateParams::Mandate::Acceptance::Online)).returns(T.nilable(::Stripe::Source::UpdateParams::Mandate::Acceptance::Online))
           }
          def online=(_online); end
          # The status of the mandate acceptance. Either `accepted` (the mandate was accepted) or `refused` (the mandate was refused).
          sig { returns(String) }
          def status; end
          sig { params(_status: String).returns(String) }
          def status=(_status); end
          # The type of acceptance information included with the mandate. Either `online` or `offline`
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
          # The user agent of the browser from which the mandate was accepted or refused by the customer.
          sig { returns(T.nilable(String)) }
          def user_agent; end
          sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
          def user_agent=(_user_agent); end
          sig {
            params(date: T.nilable(Integer), ip: T.nilable(String), offline: T.nilable(::Stripe::Source::UpdateParams::Mandate::Acceptance::Offline), online: T.nilable(::Stripe::Source::UpdateParams::Mandate::Acceptance::Online), status: String, type: T.nilable(String), user_agent: T.nilable(String)).void
           }
          def initialize(
            date: nil,
            ip: nil,
            offline: nil,
            online: nil,
            status: nil,
            type: nil,
            user_agent: nil
          ); end
        end
        # The parameters required to notify Stripe of a mandate acceptance or refusal by the customer.
        sig { returns(T.nilable(::Stripe::Source::UpdateParams::Mandate::Acceptance)) }
        def acceptance; end
        sig {
          params(_acceptance: T.nilable(::Stripe::Source::UpdateParams::Mandate::Acceptance)).returns(T.nilable(::Stripe::Source::UpdateParams::Mandate::Acceptance))
         }
        def acceptance=(_acceptance); end
        # The amount specified by the mandate. (Leave null for a mandate covering all amounts)
        sig { returns(T.nilable(T.any(String, Integer))) }
        def amount; end
        sig {
          params(_amount: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
         }
        def amount=(_amount); end
        # The currency specified by the mandate. (Must match `currency` of the source)
        sig { returns(T.nilable(String)) }
        def currency; end
        sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_currency); end
        # The interval of debits permitted by the mandate. Either `one_time` (just permitting a single debit), `scheduled` (with debits on an agreed schedule or for clearly-defined events), or `variable`(for debits with any frequency)
        sig { returns(T.nilable(String)) }
        def interval; end
        sig { params(_interval: T.nilable(String)).returns(T.nilable(String)) }
        def interval=(_interval); end
        # The method Stripe should use to notify the customer of upcoming debit instructions and/or mandate confirmation as required by the underlying debit network. Either `email` (an email is sent directly to the customer), `manual` (a `source.mandate_notification` event is sent to your webhooks endpoint and you should handle the notification) or `none` (the underlying debit network does not require any notification).
        sig { returns(T.nilable(String)) }
        def notification_method; end
        sig { params(_notification_method: T.nilable(String)).returns(T.nilable(String)) }
        def notification_method=(_notification_method); end
        sig {
          params(acceptance: T.nilable(::Stripe::Source::UpdateParams::Mandate::Acceptance), amount: T.nilable(T.any(String, Integer)), currency: T.nilable(String), interval: T.nilable(String), notification_method: T.nilable(String)).void
         }
        def initialize(
          acceptance: nil,
          amount: nil,
          currency: nil,
          interval: nil,
          notification_method: nil
        ); end
      end
      class Owner < Stripe::RequestParams
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
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # State, county, province, or region.
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
        # Owner's address.
        sig { returns(T.nilable(::Stripe::Source::UpdateParams::Owner::Address)) }
        def address; end
        sig {
          params(_address: T.nilable(::Stripe::Source::UpdateParams::Owner::Address)).returns(T.nilable(::Stripe::Source::UpdateParams::Owner::Address))
         }
        def address=(_address); end
        # Owner's email address.
        sig { returns(T.nilable(String)) }
        def email; end
        sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_email); end
        # Owner's full name.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # Owner's phone number.
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        sig {
          params(address: T.nilable(::Stripe::Source::UpdateParams::Owner::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
         }
        def initialize(address: nil, email: nil, name: nil, phone: nil); end
      end
      class SourceOrder < Stripe::RequestParams
        class Item < Stripe::RequestParams
          # Attribute for param field amount
          sig { returns(T.nilable(Integer)) }
          def amount; end
          sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount=(_amount); end
          # Attribute for param field currency
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # Attribute for param field description
          sig { returns(T.nilable(String)) }
          def description; end
          sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_description); end
          # The ID of the SKU being ordered.
          sig { returns(T.nilable(String)) }
          def parent; end
          sig { params(_parent: T.nilable(String)).returns(T.nilable(String)) }
          def parent=(_parent); end
          # The quantity of this order item. When type is `sku`, this is the number of instances of the SKU to be ordered.
          sig { returns(T.nilable(Integer)) }
          def quantity; end
          sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def quantity=(_quantity); end
          # Attribute for param field type
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
          sig {
            params(amount: T.nilable(Integer), currency: T.nilable(String), description: T.nilable(String), parent: T.nilable(String), quantity: T.nilable(Integer), type: T.nilable(String)).void
           }
          def initialize(
            amount: nil,
            currency: nil,
            description: nil,
            parent: nil,
            quantity: nil,
            type: nil
          ); end
        end
        class Shipping < Stripe::RequestParams
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
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            def line1; end
            sig { params(_line1: String).returns(String) }
            def line1=(_line1); end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
            def line2=(_line2); end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
            def postal_code=(_postal_code); end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
            sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
            def state=(_state); end
            sig {
              params(city: T.nilable(String), country: T.nilable(String), line1: String, line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
          # Shipping address.
          sig { returns(::Stripe::Source::UpdateParams::SourceOrder::Shipping::Address) }
          def address; end
          sig {
            params(_address: ::Stripe::Source::UpdateParams::SourceOrder::Shipping::Address).returns(::Stripe::Source::UpdateParams::SourceOrder::Shipping::Address)
           }
          def address=(_address); end
          # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
          sig { returns(T.nilable(String)) }
          def carrier; end
          sig { params(_carrier: T.nilable(String)).returns(T.nilable(String)) }
          def carrier=(_carrier); end
          # Recipient name.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # Recipient phone (including extension).
          sig { returns(T.nilable(String)) }
          def phone; end
          sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
          def phone=(_phone); end
          # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
          sig { returns(T.nilable(String)) }
          def tracking_number; end
          sig { params(_tracking_number: T.nilable(String)).returns(T.nilable(String)) }
          def tracking_number=(_tracking_number); end
          sig {
            params(address: ::Stripe::Source::UpdateParams::SourceOrder::Shipping::Address, carrier: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tracking_number: T.nilable(String)).void
           }
          def initialize(
            address: nil,
            carrier: nil,
            name: nil,
            phone: nil,
            tracking_number: nil
          ); end
        end
        # List of items constituting the order.
        sig { returns(T.nilable(T::Array[::Stripe::Source::UpdateParams::SourceOrder::Item])) }
        def items; end
        sig {
          params(_items: T.nilable(T::Array[::Stripe::Source::UpdateParams::SourceOrder::Item])).returns(T.nilable(T::Array[::Stripe::Source::UpdateParams::SourceOrder::Item]))
         }
        def items=(_items); end
        # Shipping address for the order. Required if any of the SKUs are for products that have `shippable` set to true.
        sig { returns(T.nilable(::Stripe::Source::UpdateParams::SourceOrder::Shipping)) }
        def shipping; end
        sig {
          params(_shipping: T.nilable(::Stripe::Source::UpdateParams::SourceOrder::Shipping)).returns(T.nilable(::Stripe::Source::UpdateParams::SourceOrder::Shipping))
         }
        def shipping=(_shipping); end
        sig {
          params(items: T.nilable(T::Array[::Stripe::Source::UpdateParams::SourceOrder::Item]), shipping: T.nilable(::Stripe::Source::UpdateParams::SourceOrder::Shipping)).void
         }
        def initialize(items: nil, shipping: nil); end
      end
      # Amount associated with the source.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Information about a mandate possibility attached to a source object (generally for bank debits) as well as its acceptance status.
      sig { returns(T.nilable(::Stripe::Source::UpdateParams::Mandate)) }
      def mandate; end
      sig {
        params(_mandate: T.nilable(::Stripe::Source::UpdateParams::Mandate)).returns(T.nilable(::Stripe::Source::UpdateParams::Mandate))
       }
      def mandate=(_mandate); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # Information about the owner of the payment instrument that may be used or required by particular source types.
      sig { returns(T.nilable(::Stripe::Source::UpdateParams::Owner)) }
      def owner; end
      sig {
        params(_owner: T.nilable(::Stripe::Source::UpdateParams::Owner)).returns(T.nilable(::Stripe::Source::UpdateParams::Owner))
       }
      def owner=(_owner); end
      # Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
      sig { returns(T.nilable(::Stripe::Source::UpdateParams::SourceOrder)) }
      def source_order; end
      sig {
        params(_source_order: T.nilable(::Stripe::Source::UpdateParams::SourceOrder)).returns(T.nilable(::Stripe::Source::UpdateParams::SourceOrder))
       }
      def source_order=(_source_order); end
      sig {
        params(amount: T.nilable(Integer), expand: T.nilable(T::Array[String]), mandate: T.nilable(::Stripe::Source::UpdateParams::Mandate), metadata: T.nilable(T.any(String, T::Hash[String, String])), owner: T.nilable(::Stripe::Source::UpdateParams::Owner), source_order: T.nilable(::Stripe::Source::UpdateParams::SourceOrder)).void
       }
      def initialize(
        amount: nil,
        expand: nil,
        mandate: nil,
        metadata: nil,
        owner: nil,
        source_order: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class Mandate < Stripe::RequestParams
        class Acceptance < Stripe::RequestParams
          class Offline < Stripe::RequestParams
            # An email to contact you with if a copy of the mandate is requested, required if `type` is `offline`.
            sig { returns(String) }
            def contact_email; end
            sig { params(_contact_email: String).returns(String) }
            def contact_email=(_contact_email); end
            sig { params(contact_email: String).void }
            def initialize(contact_email: nil); end
          end
          class Online < Stripe::RequestParams
            # The Unix timestamp (in seconds) when the mandate was accepted or refused by the customer.
            sig { returns(T.nilable(Integer)) }
            def date; end
            sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def date=(_date); end
            # The IP address from which the mandate was accepted or refused by the customer.
            sig { returns(T.nilable(String)) }
            def ip; end
            sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
            def ip=(_ip); end
            # The user agent of the browser from which the mandate was accepted or refused by the customer.
            sig { returns(T.nilable(String)) }
            def user_agent; end
            sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
            def user_agent=(_user_agent); end
            sig {
              params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
             }
            def initialize(date: nil, ip: nil, user_agent: nil); end
          end
          # The Unix timestamp (in seconds) when the mandate was accepted or refused by the customer.
          sig { returns(T.nilable(Integer)) }
          def date; end
          sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def date=(_date); end
          # The IP address from which the mandate was accepted or refused by the customer.
          sig { returns(T.nilable(String)) }
          def ip; end
          sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
          def ip=(_ip); end
          # The parameters required to store a mandate accepted offline. Should only be set if `mandate[type]` is `offline`
          sig { returns(T.nilable(::Stripe::Source::CreateParams::Mandate::Acceptance::Offline)) }
          def offline; end
          sig {
            params(_offline: T.nilable(::Stripe::Source::CreateParams::Mandate::Acceptance::Offline)).returns(T.nilable(::Stripe::Source::CreateParams::Mandate::Acceptance::Offline))
           }
          def offline=(_offline); end
          # The parameters required to store a mandate accepted online. Should only be set if `mandate[type]` is `online`
          sig { returns(T.nilable(::Stripe::Source::CreateParams::Mandate::Acceptance::Online)) }
          def online; end
          sig {
            params(_online: T.nilable(::Stripe::Source::CreateParams::Mandate::Acceptance::Online)).returns(T.nilable(::Stripe::Source::CreateParams::Mandate::Acceptance::Online))
           }
          def online=(_online); end
          # The status of the mandate acceptance. Either `accepted` (the mandate was accepted) or `refused` (the mandate was refused).
          sig { returns(String) }
          def status; end
          sig { params(_status: String).returns(String) }
          def status=(_status); end
          # The type of acceptance information included with the mandate. Either `online` or `offline`
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
          # The user agent of the browser from which the mandate was accepted or refused by the customer.
          sig { returns(T.nilable(String)) }
          def user_agent; end
          sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
          def user_agent=(_user_agent); end
          sig {
            params(date: T.nilable(Integer), ip: T.nilable(String), offline: T.nilable(::Stripe::Source::CreateParams::Mandate::Acceptance::Offline), online: T.nilable(::Stripe::Source::CreateParams::Mandate::Acceptance::Online), status: String, type: T.nilable(String), user_agent: T.nilable(String)).void
           }
          def initialize(
            date: nil,
            ip: nil,
            offline: nil,
            online: nil,
            status: nil,
            type: nil,
            user_agent: nil
          ); end
        end
        # The parameters required to notify Stripe of a mandate acceptance or refusal by the customer.
        sig { returns(T.nilable(::Stripe::Source::CreateParams::Mandate::Acceptance)) }
        def acceptance; end
        sig {
          params(_acceptance: T.nilable(::Stripe::Source::CreateParams::Mandate::Acceptance)).returns(T.nilable(::Stripe::Source::CreateParams::Mandate::Acceptance))
         }
        def acceptance=(_acceptance); end
        # The amount specified by the mandate. (Leave null for a mandate covering all amounts)
        sig { returns(T.nilable(T.any(String, Integer))) }
        def amount; end
        sig {
          params(_amount: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
         }
        def amount=(_amount); end
        # The currency specified by the mandate. (Must match `currency` of the source)
        sig { returns(T.nilable(String)) }
        def currency; end
        sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_currency); end
        # The interval of debits permitted by the mandate. Either `one_time` (just permitting a single debit), `scheduled` (with debits on an agreed schedule or for clearly-defined events), or `variable`(for debits with any frequency)
        sig { returns(T.nilable(String)) }
        def interval; end
        sig { params(_interval: T.nilable(String)).returns(T.nilable(String)) }
        def interval=(_interval); end
        # The method Stripe should use to notify the customer of upcoming debit instructions and/or mandate confirmation as required by the underlying debit network. Either `email` (an email is sent directly to the customer), `manual` (a `source.mandate_notification` event is sent to your webhooks endpoint and you should handle the notification) or `none` (the underlying debit network does not require any notification).
        sig { returns(T.nilable(String)) }
        def notification_method; end
        sig { params(_notification_method: T.nilable(String)).returns(T.nilable(String)) }
        def notification_method=(_notification_method); end
        sig {
          params(acceptance: T.nilable(::Stripe::Source::CreateParams::Mandate::Acceptance), amount: T.nilable(T.any(String, Integer)), currency: T.nilable(String), interval: T.nilable(String), notification_method: T.nilable(String)).void
         }
        def initialize(
          acceptance: nil,
          amount: nil,
          currency: nil,
          interval: nil,
          notification_method: nil
        ); end
      end
      class Owner < Stripe::RequestParams
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
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # State, county, province, or region.
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
        # Owner's address.
        sig { returns(T.nilable(::Stripe::Source::CreateParams::Owner::Address)) }
        def address; end
        sig {
          params(_address: T.nilable(::Stripe::Source::CreateParams::Owner::Address)).returns(T.nilable(::Stripe::Source::CreateParams::Owner::Address))
         }
        def address=(_address); end
        # Owner's email address.
        sig { returns(T.nilable(String)) }
        def email; end
        sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_email); end
        # Owner's full name.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # Owner's phone number.
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        sig {
          params(address: T.nilable(::Stripe::Source::CreateParams::Owner::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
         }
        def initialize(address: nil, email: nil, name: nil, phone: nil); end
      end
      class Receiver < Stripe::RequestParams
        # The method Stripe should use to request information needed to process a refund or mispayment. Either `email` (an email is sent directly to the customer) or `manual` (a `source.refund_attributes_required` event is sent to your webhooks endpoint). Refer to each payment method's documentation to learn which refund attributes may be required.
        sig { returns(T.nilable(String)) }
        def refund_attributes_method; end
        sig { params(_refund_attributes_method: T.nilable(String)).returns(T.nilable(String)) }
        def refund_attributes_method=(_refund_attributes_method); end
        sig { params(refund_attributes_method: T.nilable(String)).void }
        def initialize(refund_attributes_method: nil); end
      end
      class Redirect < Stripe::RequestParams
        # The URL you provide to redirect the customer back to you after they authenticated their payment. It can use your application URI scheme in the context of a mobile application.
        sig { returns(String) }
        def return_url; end
        sig { params(_return_url: String).returns(String) }
        def return_url=(_return_url); end
        sig { params(return_url: String).void }
        def initialize(return_url: nil); end
      end
      class SourceOrder < Stripe::RequestParams
        class Item < Stripe::RequestParams
          # Attribute for param field amount
          sig { returns(T.nilable(Integer)) }
          def amount; end
          sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount=(_amount); end
          # Attribute for param field currency
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # Attribute for param field description
          sig { returns(T.nilable(String)) }
          def description; end
          sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_description); end
          # The ID of the SKU being ordered.
          sig { returns(T.nilable(String)) }
          def parent; end
          sig { params(_parent: T.nilable(String)).returns(T.nilable(String)) }
          def parent=(_parent); end
          # The quantity of this order item. When type is `sku`, this is the number of instances of the SKU to be ordered.
          sig { returns(T.nilable(Integer)) }
          def quantity; end
          sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def quantity=(_quantity); end
          # Attribute for param field type
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
          sig {
            params(amount: T.nilable(Integer), currency: T.nilable(String), description: T.nilable(String), parent: T.nilable(String), quantity: T.nilable(Integer), type: T.nilable(String)).void
           }
          def initialize(
            amount: nil,
            currency: nil,
            description: nil,
            parent: nil,
            quantity: nil,
            type: nil
          ); end
        end
        class Shipping < Stripe::RequestParams
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
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            def line1; end
            sig { params(_line1: String).returns(String) }
            def line1=(_line1); end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
            def line2=(_line2); end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
            def postal_code=(_postal_code); end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
            sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
            def state=(_state); end
            sig {
              params(city: T.nilable(String), country: T.nilable(String), line1: String, line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
          # Shipping address.
          sig { returns(::Stripe::Source::CreateParams::SourceOrder::Shipping::Address) }
          def address; end
          sig {
            params(_address: ::Stripe::Source::CreateParams::SourceOrder::Shipping::Address).returns(::Stripe::Source::CreateParams::SourceOrder::Shipping::Address)
           }
          def address=(_address); end
          # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
          sig { returns(T.nilable(String)) }
          def carrier; end
          sig { params(_carrier: T.nilable(String)).returns(T.nilable(String)) }
          def carrier=(_carrier); end
          # Recipient name.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # Recipient phone (including extension).
          sig { returns(T.nilable(String)) }
          def phone; end
          sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
          def phone=(_phone); end
          # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
          sig { returns(T.nilable(String)) }
          def tracking_number; end
          sig { params(_tracking_number: T.nilable(String)).returns(T.nilable(String)) }
          def tracking_number=(_tracking_number); end
          sig {
            params(address: ::Stripe::Source::CreateParams::SourceOrder::Shipping::Address, carrier: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tracking_number: T.nilable(String)).void
           }
          def initialize(
            address: nil,
            carrier: nil,
            name: nil,
            phone: nil,
            tracking_number: nil
          ); end
        end
        # List of items constituting the order.
        sig { returns(T.nilable(T::Array[::Stripe::Source::CreateParams::SourceOrder::Item])) }
        def items; end
        sig {
          params(_items: T.nilable(T::Array[::Stripe::Source::CreateParams::SourceOrder::Item])).returns(T.nilable(T::Array[::Stripe::Source::CreateParams::SourceOrder::Item]))
         }
        def items=(_items); end
        # Shipping address for the order. Required if any of the SKUs are for products that have `shippable` set to true.
        sig { returns(T.nilable(::Stripe::Source::CreateParams::SourceOrder::Shipping)) }
        def shipping; end
        sig {
          params(_shipping: T.nilable(::Stripe::Source::CreateParams::SourceOrder::Shipping)).returns(T.nilable(::Stripe::Source::CreateParams::SourceOrder::Shipping))
         }
        def shipping=(_shipping); end
        sig {
          params(items: T.nilable(T::Array[::Stripe::Source::CreateParams::SourceOrder::Item]), shipping: T.nilable(::Stripe::Source::CreateParams::SourceOrder::Shipping)).void
         }
        def initialize(items: nil, shipping: nil); end
      end
      # Amount associated with the source. This is the amount for which the source will be chargeable once ready. Required for `single_use` sources. Not supported for `receiver` type sources, where charge amount may not be specified until funds land.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) associated with the source. This is the currency for which the source will be chargeable once ready.
      sig { returns(T.nilable(String)) }
      def currency; end
      sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_currency); end
      # The `Customer` to whom the original source is attached to. Must be set when the original source is not a `Source` (e.g., `Card`).
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The authentication `flow` of the source to create. `flow` is one of `redirect`, `receiver`, `code_verification`, `none`. It is generally inferred unless a type supports multiple flows.
      sig { returns(T.nilable(String)) }
      def flow; end
      sig { params(_flow: T.nilable(String)).returns(T.nilable(String)) }
      def flow=(_flow); end
      # Information about a mandate possibility attached to a source object (generally for bank debits) as well as its acceptance status.
      sig { returns(T.nilable(::Stripe::Source::CreateParams::Mandate)) }
      def mandate; end
      sig {
        params(_mandate: T.nilable(::Stripe::Source::CreateParams::Mandate)).returns(T.nilable(::Stripe::Source::CreateParams::Mandate))
       }
      def mandate=(_mandate); end
      # Attribute for param field metadata
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # The source to share.
      sig { returns(T.nilable(String)) }
      def original_source; end
      sig { params(_original_source: T.nilable(String)).returns(T.nilable(String)) }
      def original_source=(_original_source); end
      # Information about the owner of the payment instrument that may be used or required by particular source types.
      sig { returns(T.nilable(::Stripe::Source::CreateParams::Owner)) }
      def owner; end
      sig {
        params(_owner: T.nilable(::Stripe::Source::CreateParams::Owner)).returns(T.nilable(::Stripe::Source::CreateParams::Owner))
       }
      def owner=(_owner); end
      # Optional parameters for the receiver flow. Can be set only if the source is a receiver (`flow` is `receiver`).
      sig { returns(T.nilable(::Stripe::Source::CreateParams::Receiver)) }
      def receiver; end
      sig {
        params(_receiver: T.nilable(::Stripe::Source::CreateParams::Receiver)).returns(T.nilable(::Stripe::Source::CreateParams::Receiver))
       }
      def receiver=(_receiver); end
      # Parameters required for the redirect flow. Required if the source is authenticated by a redirect (`flow` is `redirect`).
      sig { returns(T.nilable(::Stripe::Source::CreateParams::Redirect)) }
      def redirect; end
      sig {
        params(_redirect: T.nilable(::Stripe::Source::CreateParams::Redirect)).returns(T.nilable(::Stripe::Source::CreateParams::Redirect))
       }
      def redirect=(_redirect); end
      # Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
      sig { returns(T.nilable(::Stripe::Source::CreateParams::SourceOrder)) }
      def source_order; end
      sig {
        params(_source_order: T.nilable(::Stripe::Source::CreateParams::SourceOrder)).returns(T.nilable(::Stripe::Source::CreateParams::SourceOrder))
       }
      def source_order=(_source_order); end
      # An arbitrary string to be displayed on your customer's statement. As an example, if your website is `RunClub` and the item you're charging for is a race ticket, you may want to specify a `statement_descriptor` of `RunClub 5K race ticket.` While many payment types will display this information, some may not display it at all.
      sig { returns(T.nilable(String)) }
      def statement_descriptor; end
      sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor=(_statement_descriptor); end
      # An optional token used to create the source. When passed, token properties will override source parameters.
      sig { returns(T.nilable(String)) }
      def token; end
      sig { params(_token: T.nilable(String)).returns(T.nilable(String)) }
      def token=(_token); end
      # The `type` of the source to create. Required unless `customer` and `original_source` are specified (see the [Cloning card Sources](https://stripe.com/docs/sources/connect#cloning-card-sources) guide)
      sig { returns(T.nilable(String)) }
      def type; end
      sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
      def type=(_type); end
      # Attribute for param field usage
      sig { returns(T.nilable(String)) }
      def usage; end
      sig { params(_usage: T.nilable(String)).returns(T.nilable(String)) }
      def usage=(_usage); end
      sig {
        params(amount: T.nilable(Integer), currency: T.nilable(String), customer: T.nilable(String), expand: T.nilable(T::Array[String]), flow: T.nilable(String), mandate: T.nilable(::Stripe::Source::CreateParams::Mandate), metadata: T.nilable(T::Hash[String, String]), original_source: T.nilable(String), owner: T.nilable(::Stripe::Source::CreateParams::Owner), receiver: T.nilable(::Stripe::Source::CreateParams::Receiver), redirect: T.nilable(::Stripe::Source::CreateParams::Redirect), source_order: T.nilable(::Stripe::Source::CreateParams::SourceOrder), statement_descriptor: T.nilable(String), token: T.nilable(String), type: T.nilable(String), usage: T.nilable(String)).void
       }
      def initialize(
        amount: nil,
        currency: nil,
        customer: nil,
        expand: nil,
        flow: nil,
        mandate: nil,
        metadata: nil,
        original_source: nil,
        owner: nil,
        receiver: nil,
        redirect: nil,
        source_order: nil,
        statement_descriptor: nil,
        token: nil,
        type: nil,
        usage: nil
      ); end
    end
    class VerifyParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The values needed to verify the source.
      sig { returns(T::Array[String]) }
      def values; end
      sig { params(_values: T::Array[String]).returns(T::Array[String]) }
      def values=(_values); end
      sig { params(expand: T.nilable(T::Array[String]), values: T::Array[String]).void }
      def initialize(expand: nil, values: nil); end
    end
    # Creates a new source object.
    sig {
      params(params: T.any(::Stripe::Source::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Source)
     }
    def self.create(params = {}, opts = {}); end

    # Updates the specified source by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    #
    # This request accepts the metadata and owner as arguments. It is also possible to update type specific information for selected payment methods. Please refer to our [payment method guides](https://docs.stripe.com/docs/sources) for more detail.
    sig {
      params(source: String, params: T.any(::Stripe::Source::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Source)
     }
    def self.update(source, params = {}, opts = {}); end

    # Verify a given source.
    sig {
      params(params: T.any(::Stripe::Source::VerifyParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Source)
     }
    def verify(params = {}, opts = {}); end

    # Verify a given source.
    sig {
      params(source: String, params: T.any(::Stripe::Source::VerifyParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Source)
     }
    def self.verify(source, params = {}, opts = {}); end
  end
end