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
      attr_reader :account_number
      # Attribute for field bank_name
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name
      # Attribute for field fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      # Attribute for field refund_account_holder_name
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_name
      # Attribute for field refund_account_holder_type
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_type
      # Attribute for field refund_routing_number
      sig { returns(T.nilable(String)) }
      attr_reader :refund_routing_number
      # Attribute for field routing_number
      sig { returns(T.nilable(String)) }
      attr_reader :routing_number
      # Attribute for field swift_code
      sig { returns(T.nilable(String)) }
      attr_reader :swift_code
    end
    class AchDebit < Stripe::StripeObject
      # Attribute for field bank_name
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name
      # Attribute for field country
      sig { returns(T.nilable(String)) }
      attr_reader :country
      # Attribute for field fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      # Attribute for field last4
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      # Attribute for field routing_number
      sig { returns(T.nilable(String)) }
      attr_reader :routing_number
      # Attribute for field type
      sig { returns(T.nilable(String)) }
      attr_reader :type
    end
    class AcssDebit < Stripe::StripeObject
      # Attribute for field bank_address_city
      sig { returns(T.nilable(String)) }
      attr_reader :bank_address_city
      # Attribute for field bank_address_line_1
      sig { returns(T.nilable(String)) }
      attr_reader :bank_address_line_1
      # Attribute for field bank_address_line_2
      sig { returns(T.nilable(String)) }
      attr_reader :bank_address_line_2
      # Attribute for field bank_address_postal_code
      sig { returns(T.nilable(String)) }
      attr_reader :bank_address_postal_code
      # Attribute for field bank_name
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name
      # Attribute for field category
      sig { returns(T.nilable(String)) }
      attr_reader :category
      # Attribute for field country
      sig { returns(T.nilable(String)) }
      attr_reader :country
      # Attribute for field fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      # Attribute for field last4
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      # Attribute for field routing_number
      sig { returns(T.nilable(String)) }
      attr_reader :routing_number
    end
    class Alipay < Stripe::StripeObject
      # Attribute for field data_string
      sig { returns(T.nilable(String)) }
      attr_reader :data_string
      # Attribute for field native_url
      sig { returns(T.nilable(String)) }
      attr_reader :native_url
      # Attribute for field statement_descriptor
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end
    class AuBecsDebit < Stripe::StripeObject
      # Attribute for field bsb_number
      sig { returns(T.nilable(String)) }
      attr_reader :bsb_number
      # Attribute for field fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      # Attribute for field last4
      sig { returns(T.nilable(String)) }
      attr_reader :last4
    end
    class Bancontact < Stripe::StripeObject
      # Attribute for field bank_code
      sig { returns(T.nilable(String)) }
      attr_reader :bank_code
      # Attribute for field bank_name
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name
      # Attribute for field bic
      sig { returns(T.nilable(String)) }
      attr_reader :bic
      # Attribute for field iban_last4
      sig { returns(T.nilable(String)) }
      attr_reader :iban_last4
      # Attribute for field preferred_language
      sig { returns(T.nilable(String)) }
      attr_reader :preferred_language
      # Attribute for field statement_descriptor
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end
    class Card < Stripe::StripeObject
      # Attribute for field address_line1_check
      sig { returns(T.nilable(String)) }
      attr_reader :address_line1_check
      # Attribute for field address_zip_check
      sig { returns(T.nilable(String)) }
      attr_reader :address_zip_check
      # Attribute for field brand
      sig { returns(T.nilable(String)) }
      attr_reader :brand
      # Attribute for field country
      sig { returns(T.nilable(String)) }
      attr_reader :country
      # Attribute for field cvc_check
      sig { returns(T.nilable(String)) }
      attr_reader :cvc_check
      # Attribute for field description
      sig { returns(String) }
      attr_reader :description
      # Attribute for field dynamic_last4
      sig { returns(T.nilable(String)) }
      attr_reader :dynamic_last4
      # Attribute for field exp_month
      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_month
      # Attribute for field exp_year
      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_year
      # Attribute for field fingerprint
      sig { returns(String) }
      attr_reader :fingerprint
      # Attribute for field funding
      sig { returns(T.nilable(String)) }
      attr_reader :funding
      # Attribute for field iin
      sig { returns(String) }
      attr_reader :iin
      # Attribute for field issuer
      sig { returns(String) }
      attr_reader :issuer
      # Attribute for field last4
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      # Attribute for field name
      sig { returns(T.nilable(String)) }
      attr_reader :name
      # Attribute for field three_d_secure
      sig { returns(String) }
      attr_reader :three_d_secure
      # Attribute for field tokenization_method
      sig { returns(T.nilable(String)) }
      attr_reader :tokenization_method
    end
    class CardPresent < Stripe::StripeObject
      # Attribute for field application_cryptogram
      sig { returns(String) }
      attr_reader :application_cryptogram
      # Attribute for field application_preferred_name
      sig { returns(String) }
      attr_reader :application_preferred_name
      # Attribute for field authorization_code
      sig { returns(T.nilable(String)) }
      attr_reader :authorization_code
      # Attribute for field authorization_response_code
      sig { returns(String) }
      attr_reader :authorization_response_code
      # Attribute for field brand
      sig { returns(T.nilable(String)) }
      attr_reader :brand
      # Attribute for field country
      sig { returns(T.nilable(String)) }
      attr_reader :country
      # Attribute for field cvm_type
      sig { returns(String) }
      attr_reader :cvm_type
      # Attribute for field data_type
      sig { returns(T.nilable(String)) }
      attr_reader :data_type
      # Attribute for field dedicated_file_name
      sig { returns(String) }
      attr_reader :dedicated_file_name
      # Attribute for field description
      sig { returns(String) }
      attr_reader :description
      # Attribute for field emv_auth_data
      sig { returns(String) }
      attr_reader :emv_auth_data
      # Attribute for field evidence_customer_signature
      sig { returns(T.nilable(String)) }
      attr_reader :evidence_customer_signature
      # Attribute for field evidence_transaction_certificate
      sig { returns(T.nilable(String)) }
      attr_reader :evidence_transaction_certificate
      # Attribute for field exp_month
      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_month
      # Attribute for field exp_year
      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_year
      # Attribute for field fingerprint
      sig { returns(String) }
      attr_reader :fingerprint
      # Attribute for field funding
      sig { returns(T.nilable(String)) }
      attr_reader :funding
      # Attribute for field iin
      sig { returns(String) }
      attr_reader :iin
      # Attribute for field issuer
      sig { returns(String) }
      attr_reader :issuer
      # Attribute for field last4
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      # Attribute for field pos_device_id
      sig { returns(T.nilable(String)) }
      attr_reader :pos_device_id
      # Attribute for field pos_entry_mode
      sig { returns(String) }
      attr_reader :pos_entry_mode
      # Attribute for field read_method
      sig { returns(T.nilable(String)) }
      attr_reader :read_method
      # Attribute for field reader
      sig { returns(T.nilable(String)) }
      attr_reader :reader
      # Attribute for field terminal_verification_results
      sig { returns(String) }
      attr_reader :terminal_verification_results
      # Attribute for field transaction_status_information
      sig { returns(String) }
      attr_reader :transaction_status_information
    end
    class CodeVerification < Stripe::StripeObject
      # The number of attempts remaining to authenticate the source object with a verification code.
      sig { returns(Integer) }
      attr_reader :attempts_remaining
      # The status of the code verification, either `pending` (awaiting verification, `attempts_remaining` should be greater than 0), `succeeded` (successful verification) or `failed` (failed verification, cannot be verified anymore as `attempts_remaining` should be 0).
      sig { returns(String) }
      attr_reader :status
    end
    class Eps < Stripe::StripeObject
      # Attribute for field reference
      sig { returns(T.nilable(String)) }
      attr_reader :reference
      # Attribute for field statement_descriptor
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end
    class Giropay < Stripe::StripeObject
      # Attribute for field bank_code
      sig { returns(T.nilable(String)) }
      attr_reader :bank_code
      # Attribute for field bank_name
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name
      # Attribute for field bic
      sig { returns(T.nilable(String)) }
      attr_reader :bic
      # Attribute for field statement_descriptor
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end
    class Ideal < Stripe::StripeObject
      # Attribute for field bank
      sig { returns(T.nilable(String)) }
      attr_reader :bank
      # Attribute for field bic
      sig { returns(T.nilable(String)) }
      attr_reader :bic
      # Attribute for field iban_last4
      sig { returns(T.nilable(String)) }
      attr_reader :iban_last4
      # Attribute for field statement_descriptor
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end
    class Klarna < Stripe::StripeObject
      # Attribute for field background_image_url
      sig { returns(String) }
      attr_reader :background_image_url
      # Attribute for field client_token
      sig { returns(T.nilable(String)) }
      attr_reader :client_token
      # Attribute for field first_name
      sig { returns(String) }
      attr_reader :first_name
      # Attribute for field last_name
      sig { returns(String) }
      attr_reader :last_name
      # Attribute for field locale
      sig { returns(String) }
      attr_reader :locale
      # Attribute for field logo_url
      sig { returns(String) }
      attr_reader :logo_url
      # Attribute for field page_title
      sig { returns(String) }
      attr_reader :page_title
      # Attribute for field pay_later_asset_urls_descriptive
      sig { returns(String) }
      attr_reader :pay_later_asset_urls_descriptive
      # Attribute for field pay_later_asset_urls_standard
      sig { returns(String) }
      attr_reader :pay_later_asset_urls_standard
      # Attribute for field pay_later_name
      sig { returns(String) }
      attr_reader :pay_later_name
      # Attribute for field pay_later_redirect_url
      sig { returns(String) }
      attr_reader :pay_later_redirect_url
      # Attribute for field pay_now_asset_urls_descriptive
      sig { returns(String) }
      attr_reader :pay_now_asset_urls_descriptive
      # Attribute for field pay_now_asset_urls_standard
      sig { returns(String) }
      attr_reader :pay_now_asset_urls_standard
      # Attribute for field pay_now_name
      sig { returns(String) }
      attr_reader :pay_now_name
      # Attribute for field pay_now_redirect_url
      sig { returns(String) }
      attr_reader :pay_now_redirect_url
      # Attribute for field pay_over_time_asset_urls_descriptive
      sig { returns(String) }
      attr_reader :pay_over_time_asset_urls_descriptive
      # Attribute for field pay_over_time_asset_urls_standard
      sig { returns(String) }
      attr_reader :pay_over_time_asset_urls_standard
      # Attribute for field pay_over_time_name
      sig { returns(String) }
      attr_reader :pay_over_time_name
      # Attribute for field pay_over_time_redirect_url
      sig { returns(String) }
      attr_reader :pay_over_time_redirect_url
      # Attribute for field payment_method_categories
      sig { returns(String) }
      attr_reader :payment_method_categories
      # Attribute for field purchase_country
      sig { returns(String) }
      attr_reader :purchase_country
      # Attribute for field purchase_type
      sig { returns(String) }
      attr_reader :purchase_type
      # Attribute for field redirect_url
      sig { returns(String) }
      attr_reader :redirect_url
      # Attribute for field shipping_delay
      sig { returns(Integer) }
      attr_reader :shipping_delay
      # Attribute for field shipping_first_name
      sig { returns(String) }
      attr_reader :shipping_first_name
      # Attribute for field shipping_last_name
      sig { returns(String) }
      attr_reader :shipping_last_name
    end
    class Multibanco < Stripe::StripeObject
      # Attribute for field entity
      sig { returns(T.nilable(String)) }
      attr_reader :entity
      # Attribute for field reference
      sig { returns(T.nilable(String)) }
      attr_reader :reference
      # Attribute for field refund_account_holder_address_city
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_city
      # Attribute for field refund_account_holder_address_country
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_country
      # Attribute for field refund_account_holder_address_line1
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_line1
      # Attribute for field refund_account_holder_address_line2
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_line2
      # Attribute for field refund_account_holder_address_postal_code
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_postal_code
      # Attribute for field refund_account_holder_address_state
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_state
      # Attribute for field refund_account_holder_name
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_name
      # Attribute for field refund_iban
      sig { returns(T.nilable(String)) }
      attr_reader :refund_iban
    end
    class Owner < Stripe::StripeObject
      class Address < Stripe::StripeObject
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        attr_reader :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        attr_reader :country
        # Address line 1 (e.g., street, PO Box, or company name).
        sig { returns(T.nilable(String)) }
        attr_reader :line1
        # Address line 2 (e.g., apartment, suite, unit, or building).
        sig { returns(T.nilable(String)) }
        attr_reader :line2
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        attr_reader :state
      end
      class VerifiedAddress < Stripe::StripeObject
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        attr_reader :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        attr_reader :country
        # Address line 1 (e.g., street, PO Box, or company name).
        sig { returns(T.nilable(String)) }
        attr_reader :line1
        # Address line 2 (e.g., apartment, suite, unit, or building).
        sig { returns(T.nilable(String)) }
        attr_reader :line2
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        attr_reader :state
      end
      # Owner's address.
      sig { returns(T.nilable(Address)) }
      attr_reader :address
      # Owner's email address.
      sig { returns(T.nilable(String)) }
      attr_reader :email
      # Owner's full name.
      sig { returns(T.nilable(String)) }
      attr_reader :name
      # Owner's phone number (including extension).
      sig { returns(T.nilable(String)) }
      attr_reader :phone
      # Verified owner's address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
      sig { returns(T.nilable(VerifiedAddress)) }
      attr_reader :verified_address
      # Verified owner's email address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
      sig { returns(T.nilable(String)) }
      attr_reader :verified_email
      # Verified owner's full name. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
      sig { returns(T.nilable(String)) }
      attr_reader :verified_name
      # Verified owner's phone number (including extension). Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
      sig { returns(T.nilable(String)) }
      attr_reader :verified_phone
    end
    class P24 < Stripe::StripeObject
      # Attribute for field reference
      sig { returns(T.nilable(String)) }
      attr_reader :reference
    end
    class Paypal < Stripe::StripeObject
      # Attribute for field billing_agreement
      sig { returns(T.nilable(String)) }
      attr_reader :billing_agreement
      # Attribute for field fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      # Attribute for field payer_id
      sig { returns(T.nilable(String)) }
      attr_reader :payer_id
      # Attribute for field reference_id
      sig { returns(String) }
      attr_reader :reference_id
      # Attribute for field reference_transaction_amount
      sig { returns(String) }
      attr_reader :reference_transaction_amount
      # Attribute for field reference_transaction_charged
      sig { returns(T::Boolean) }
      attr_reader :reference_transaction_charged
      # Attribute for field statement_descriptor
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
      # Attribute for field transaction_id
      sig { returns(String) }
      attr_reader :transaction_id
      # Attribute for field verified_email
      sig { returns(T.nilable(String)) }
      attr_reader :verified_email
    end
    class Receiver < Stripe::StripeObject
      # The address of the receiver source. This is the value that should be communicated to the customer to send their funds to.
      sig { returns(T.nilable(String)) }
      attr_reader :address
      # The total amount that was moved to your balance. This is almost always equal to the amount charged. In rare cases when customers deposit excess funds and we are unable to refund those, those funds get moved to your balance and show up in amount_charged as well. The amount charged is expressed in the source's currency.
      sig { returns(Integer) }
      attr_reader :amount_charged
      # The total amount received by the receiver source. `amount_received = amount_returned + amount_charged` should be true for consumed sources unless customers deposit excess funds. The amount received is expressed in the source's currency.
      sig { returns(Integer) }
      attr_reader :amount_received
      # The total amount that was returned to the customer. The amount returned is expressed in the source's currency.
      sig { returns(Integer) }
      attr_reader :amount_returned
      # Type of refund attribute method, one of `email`, `manual`, or `none`.
      sig { returns(String) }
      attr_reader :refund_attributes_method
      # Type of refund attribute status, one of `missing`, `requested`, or `available`.
      sig { returns(String) }
      attr_reader :refund_attributes_status
    end
    class Redirect < Stripe::StripeObject
      # The failure reason for the redirect, either `user_abort` (the customer aborted or dropped out of the redirect flow), `declined` (the authentication failed or the transaction was declined), or `processing_error` (the redirect failed due to a technical error). Present only if the redirect status is `failed`.
      sig { returns(T.nilable(String)) }
      attr_reader :failure_reason
      # The URL you provide to redirect the customer to after they authenticated their payment.
      sig { returns(String) }
      attr_reader :return_url
      # The status of the redirect, either `pending` (ready to be used by your customer to authenticate the transaction), `succeeded` (succesful authentication, cannot be reused) or `not_required` (redirect should not be used) or `failed` (failed authentication, cannot be reused).
      sig { returns(String) }
      attr_reader :status
      # The URL provided to you to redirect a customer to as part of a `redirect` authentication flow.
      sig { returns(String) }
      attr_reader :url
    end
    class SepaCreditTransfer < Stripe::StripeObject
      # Attribute for field bank_name
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name
      # Attribute for field bic
      sig { returns(T.nilable(String)) }
      attr_reader :bic
      # Attribute for field iban
      sig { returns(T.nilable(String)) }
      attr_reader :iban
      # Attribute for field refund_account_holder_address_city
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_city
      # Attribute for field refund_account_holder_address_country
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_country
      # Attribute for field refund_account_holder_address_line1
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_line1
      # Attribute for field refund_account_holder_address_line2
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_line2
      # Attribute for field refund_account_holder_address_postal_code
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_postal_code
      # Attribute for field refund_account_holder_address_state
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_state
      # Attribute for field refund_account_holder_name
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_name
      # Attribute for field refund_iban
      sig { returns(T.nilable(String)) }
      attr_reader :refund_iban
    end
    class SepaDebit < Stripe::StripeObject
      # Attribute for field bank_code
      sig { returns(T.nilable(String)) }
      attr_reader :bank_code
      # Attribute for field branch_code
      sig { returns(T.nilable(String)) }
      attr_reader :branch_code
      # Attribute for field country
      sig { returns(T.nilable(String)) }
      attr_reader :country
      # Attribute for field fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      # Attribute for field last4
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      # Attribute for field mandate_reference
      sig { returns(T.nilable(String)) }
      attr_reader :mandate_reference
      # Attribute for field mandate_url
      sig { returns(T.nilable(String)) }
      attr_reader :mandate_url
    end
    class Sofort < Stripe::StripeObject
      # Attribute for field bank_code
      sig { returns(T.nilable(String)) }
      attr_reader :bank_code
      # Attribute for field bank_name
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name
      # Attribute for field bic
      sig { returns(T.nilable(String)) }
      attr_reader :bic
      # Attribute for field country
      sig { returns(T.nilable(String)) }
      attr_reader :country
      # Attribute for field iban_last4
      sig { returns(T.nilable(String)) }
      attr_reader :iban_last4
      # Attribute for field preferred_language
      sig { returns(T.nilable(String)) }
      attr_reader :preferred_language
      # Attribute for field statement_descriptor
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end
    class SourceOrder < Stripe::StripeObject
      class Item < Stripe::StripeObject
        # The amount (price) for this order item.
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount
        # This currency of this order item. Required when `amount` is present.
        sig { returns(T.nilable(String)) }
        attr_reader :currency
        # Human-readable description for this order item.
        sig { returns(T.nilable(String)) }
        attr_reader :description
        # The ID of the associated object for this line item. Expandable if not null (e.g., expandable to a SKU).
        sig { returns(T.nilable(String)) }
        attr_reader :parent
        # The quantity of this order item. When type is `sku`, this is the number of instances of the SKU to be ordered.
        sig { returns(Integer) }
        attr_reader :quantity
        # The type of this order item. Must be `sku`, `tax`, or `shipping`.
        sig { returns(T.nilable(String)) }
        attr_reader :type
      end
      class Shipping < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          attr_reader :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          attr_reader :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          attr_reader :line2
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          attr_reader :state
        end
        # Attribute for field address
        sig { returns(Address) }
        attr_reader :address
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(T.nilable(String)) }
        attr_reader :carrier
        # Recipient name.
        sig { returns(String) }
        attr_reader :name
        # Recipient phone (including extension).
        sig { returns(T.nilable(String)) }
        attr_reader :phone
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(T.nilable(String)) }
        attr_reader :tracking_number
      end
      # A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount for the order.
      sig { returns(Integer) }
      attr_reader :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # The email address of the customer placing the order.
      sig { returns(String) }
      attr_reader :email
      # List of items constituting the order.
      sig { returns(T.nilable(T::Array[Item])) }
      attr_reader :items
      # Attribute for field shipping
      sig { returns(Shipping) }
      attr_reader :shipping
    end
    class ThreeDSecure < Stripe::StripeObject
      # Attribute for field address_line1_check
      sig { returns(T.nilable(String)) }
      attr_reader :address_line1_check
      # Attribute for field address_zip_check
      sig { returns(T.nilable(String)) }
      attr_reader :address_zip_check
      # Attribute for field authenticated
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :authenticated
      # Attribute for field brand
      sig { returns(T.nilable(String)) }
      attr_reader :brand
      # Attribute for field card
      sig { returns(T.nilable(String)) }
      attr_reader :card
      # Attribute for field country
      sig { returns(T.nilable(String)) }
      attr_reader :country
      # Attribute for field customer
      sig { returns(T.nilable(String)) }
      attr_reader :customer
      # Attribute for field cvc_check
      sig { returns(T.nilable(String)) }
      attr_reader :cvc_check
      # Attribute for field description
      sig { returns(String) }
      attr_reader :description
      # Attribute for field dynamic_last4
      sig { returns(T.nilable(String)) }
      attr_reader :dynamic_last4
      # Attribute for field exp_month
      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_month
      # Attribute for field exp_year
      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_year
      # Attribute for field fingerprint
      sig { returns(String) }
      attr_reader :fingerprint
      # Attribute for field funding
      sig { returns(T.nilable(String)) }
      attr_reader :funding
      # Attribute for field iin
      sig { returns(String) }
      attr_reader :iin
      # Attribute for field issuer
      sig { returns(String) }
      attr_reader :issuer
      # Attribute for field last4
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      # Attribute for field name
      sig { returns(T.nilable(String)) }
      attr_reader :name
      # Attribute for field three_d_secure
      sig { returns(String) }
      attr_reader :three_d_secure
      # Attribute for field tokenization_method
      sig { returns(T.nilable(String)) }
      attr_reader :tokenization_method
    end
    class Wechat < Stripe::StripeObject
      # Attribute for field prepay_id
      sig { returns(String) }
      attr_reader :prepay_id
      # Attribute for field qr_code_url
      sig { returns(T.nilable(String)) }
      attr_reader :qr_code_url
      # Attribute for field statement_descriptor
      sig { returns(String) }
      attr_reader :statement_descriptor
    end
    # Attribute for field ach_credit_transfer
    sig { returns(AchCreditTransfer) }
    attr_reader :ach_credit_transfer

    # Attribute for field ach_debit
    sig { returns(AchDebit) }
    attr_reader :ach_debit

    # Attribute for field acss_debit
    sig { returns(AcssDebit) }
    attr_reader :acss_debit

    # Attribute for field alipay
    sig { returns(Alipay) }
    attr_reader :alipay

    # A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount associated with the source. This is the amount for which the source will be chargeable once ready. Required for `single_use` sources.
    sig { returns(T.nilable(Integer)) }
    attr_reader :amount

    # Attribute for field au_becs_debit
    sig { returns(AuBecsDebit) }
    attr_reader :au_becs_debit

    # Attribute for field bancontact
    sig { returns(Bancontact) }
    attr_reader :bancontact

    # Attribute for field card
    sig { returns(Card) }
    attr_reader :card

    # Attribute for field card_present
    sig { returns(CardPresent) }
    attr_reader :card_present

    # The client secret of the source. Used for client-side retrieval using a publishable key.
    sig { returns(String) }
    attr_reader :client_secret

    # Attribute for field code_verification
    sig { returns(CodeVerification) }
    attr_reader :code_verification

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) associated with the source. This is the currency for which the source will be chargeable once ready. Required for `single_use` sources.
    sig { returns(T.nilable(String)) }
    attr_reader :currency

    # The ID of the customer to which this source is attached. This will not be present when the source has not been attached to a customer.
    sig { returns(String) }
    attr_reader :customer

    # Attribute for field eps
    sig { returns(Eps) }
    attr_reader :eps

    # The authentication `flow` of the source. `flow` is one of `redirect`, `receiver`, `code_verification`, `none`.
    sig { returns(String) }
    attr_reader :flow

    # Attribute for field giropay
    sig { returns(Giropay) }
    attr_reader :giropay

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Attribute for field ideal
    sig { returns(Ideal) }
    attr_reader :ideal

    # Attribute for field klarna
    sig { returns(Klarna) }
    attr_reader :klarna

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    # Attribute for field multibanco
    sig { returns(Multibanco) }
    attr_reader :multibanco

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # Information about the owner of the payment instrument that may be used or required by particular source types.
    sig { returns(T.nilable(Owner)) }
    attr_reader :owner

    # Attribute for field p24
    sig { returns(P24) }
    attr_reader :p24

    # Attribute for field paypal
    sig { returns(Paypal) }
    attr_reader :paypal

    # Attribute for field receiver
    sig { returns(Receiver) }
    attr_reader :receiver

    # Attribute for field redirect
    sig { returns(Redirect) }
    attr_reader :redirect

    # Attribute for field sepa_credit_transfer
    sig { returns(SepaCreditTransfer) }
    attr_reader :sepa_credit_transfer

    # Attribute for field sepa_debit
    sig { returns(SepaDebit) }
    attr_reader :sepa_debit

    # Attribute for field sofort
    sig { returns(Sofort) }
    attr_reader :sofort

    # Attribute for field source_order
    sig { returns(SourceOrder) }
    attr_reader :source_order

    # Extra information about a source. This will appear on your customer's statement every time you charge the source.
    sig { returns(T.nilable(String)) }
    attr_reader :statement_descriptor

    # The status of the source, one of `canceled`, `chargeable`, `consumed`, `failed`, or `pending`. Only `chargeable` sources can be used to create a charge.
    sig { returns(String) }
    attr_reader :status

    # Attribute for field three_d_secure
    sig { returns(ThreeDSecure) }
    attr_reader :three_d_secure

    # The `type` of the source. The `type` is a payment method, one of `ach_credit_transfer`, `ach_debit`, `alipay`, `bancontact`, `card`, `card_present`, `eps`, `giropay`, `ideal`, `multibanco`, `klarna`, `p24`, `sepa_debit`, `sofort`, `three_d_secure`, or `wechat`. An additional hash is included on the source with a name matching this value. It contains additional information specific to the [payment method](https://stripe.com/docs/sources) used.
    sig { returns(String) }
    attr_reader :type

    # Either `reusable` or `single_use`. Whether this source should be reusable or not. Some source types may or may not be reusable by construction, while others may leave the option at creation. If an incompatible value is passed, an error will be returned.
    sig { returns(T.nilable(String)) }
    attr_reader :usage

    # Attribute for field wechat
    sig { returns(Wechat) }
    attr_reader :wechat
  end
end