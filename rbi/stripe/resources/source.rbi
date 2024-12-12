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
      sig { returns(T.nilable(String)) }
      attr_reader :account_number
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_name
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_type
      sig { returns(T.nilable(String)) }
      attr_reader :refund_routing_number
      sig { returns(T.nilable(String)) }
      attr_reader :routing_number
      sig { returns(T.nilable(String)) }
      attr_reader :swift_code
    end
    class AchDebit < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name
      sig { returns(T.nilable(String)) }
      attr_reader :country
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      sig { returns(T.nilable(String)) }
      attr_reader :routing_number
      sig { returns(T.nilable(String)) }
      attr_reader :type
    end
    class AcssDebit < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank_address_city
      sig { returns(T.nilable(String)) }
      attr_reader :bank_address_line_1
      sig { returns(T.nilable(String)) }
      attr_reader :bank_address_line_2
      sig { returns(T.nilable(String)) }
      attr_reader :bank_address_postal_code
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name
      sig { returns(T.nilable(String)) }
      attr_reader :category
      sig { returns(T.nilable(String)) }
      attr_reader :country
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      sig { returns(T.nilable(String)) }
      attr_reader :routing_number
    end
    class Alipay < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :data_string
      sig { returns(T.nilable(String)) }
      attr_reader :native_url
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end
    class AuBecsDebit < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bsb_number
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :last4
    end
    class Bancontact < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank_code
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name
      sig { returns(T.nilable(String)) }
      attr_reader :bic
      sig { returns(T.nilable(String)) }
      attr_reader :iban_last4
      sig { returns(T.nilable(String)) }
      attr_reader :preferred_language
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end
    class Card < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :address_line1_check
      sig { returns(T.nilable(String)) }
      attr_reader :address_zip_check
      sig { returns(T.nilable(String)) }
      attr_reader :brand
      sig { returns(T.nilable(String)) }
      attr_reader :country
      sig { returns(T.nilable(String)) }
      attr_reader :cvc_check
      sig { returns(String) }
      attr_reader :description
      sig { returns(T.nilable(String)) }
      attr_reader :dynamic_last4
      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_month
      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_year
      sig { returns(String) }
      attr_reader :fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :funding
      sig { returns(String) }
      attr_reader :iin
      sig { returns(String) }
      attr_reader :issuer
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      sig { returns(T.nilable(String)) }
      attr_reader :name
      sig { returns(String) }
      attr_reader :three_d_secure
      sig { returns(T.nilable(String)) }
      attr_reader :tokenization_method
    end
    class CardPresent < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :application_cryptogram
      sig { returns(String) }
      attr_reader :application_preferred_name
      sig { returns(T.nilable(String)) }
      attr_reader :authorization_code
      sig { returns(String) }
      attr_reader :authorization_response_code
      sig { returns(T.nilable(String)) }
      attr_reader :brand
      sig { returns(T.nilable(String)) }
      attr_reader :country
      sig { returns(String) }
      attr_reader :cvm_type
      sig { returns(T.nilable(String)) }
      attr_reader :data_type
      sig { returns(String) }
      attr_reader :dedicated_file_name
      sig { returns(String) }
      attr_reader :description
      sig { returns(String) }
      attr_reader :emv_auth_data
      sig { returns(T.nilable(String)) }
      attr_reader :evidence_customer_signature
      sig { returns(T.nilable(String)) }
      attr_reader :evidence_transaction_certificate
      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_month
      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_year
      sig { returns(String) }
      attr_reader :fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :funding
      sig { returns(String) }
      attr_reader :iin
      sig { returns(String) }
      attr_reader :issuer
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      sig { returns(T.nilable(String)) }
      attr_reader :pos_device_id
      sig { returns(String) }
      attr_reader :pos_entry_mode
      sig { returns(T.nilable(String)) }
      attr_reader :read_method
      sig { returns(T.nilable(String)) }
      attr_reader :reader
      sig { returns(String) }
      attr_reader :terminal_verification_results
      sig { returns(String) }
      attr_reader :transaction_status_information
    end
    class CodeVerification < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :attempts_remaining
      sig { returns(String) }
      attr_reader :status
    end
    class Eps < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :reference
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end
    class Giropay < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank_code
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name
      sig { returns(T.nilable(String)) }
      attr_reader :bic
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end
    class Ideal < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank
      sig { returns(T.nilable(String)) }
      attr_reader :bic
      sig { returns(T.nilable(String)) }
      attr_reader :iban_last4
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end
    class Klarna < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :background_image_url
      sig { returns(T.nilable(String)) }
      attr_reader :client_token
      sig { returns(String) }
      attr_reader :first_name
      sig { returns(String) }
      attr_reader :last_name
      sig { returns(String) }
      attr_reader :locale
      sig { returns(String) }
      attr_reader :logo_url
      sig { returns(String) }
      attr_reader :page_title
      sig { returns(String) }
      attr_reader :pay_later_asset_urls_descriptive
      sig { returns(String) }
      attr_reader :pay_later_asset_urls_standard
      sig { returns(String) }
      attr_reader :pay_later_name
      sig { returns(String) }
      attr_reader :pay_later_redirect_url
      sig { returns(String) }
      attr_reader :pay_now_asset_urls_descriptive
      sig { returns(String) }
      attr_reader :pay_now_asset_urls_standard
      sig { returns(String) }
      attr_reader :pay_now_name
      sig { returns(String) }
      attr_reader :pay_now_redirect_url
      sig { returns(String) }
      attr_reader :pay_over_time_asset_urls_descriptive
      sig { returns(String) }
      attr_reader :pay_over_time_asset_urls_standard
      sig { returns(String) }
      attr_reader :pay_over_time_name
      sig { returns(String) }
      attr_reader :pay_over_time_redirect_url
      sig { returns(String) }
      attr_reader :payment_method_categories
      sig { returns(String) }
      attr_reader :purchase_country
      sig { returns(String) }
      attr_reader :purchase_type
      sig { returns(String) }
      attr_reader :redirect_url
      sig { returns(Integer) }
      attr_reader :shipping_delay
      sig { returns(String) }
      attr_reader :shipping_first_name
      sig { returns(String) }
      attr_reader :shipping_last_name
    end
    class Multibanco < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :entity
      sig { returns(T.nilable(String)) }
      attr_reader :reference
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_city
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_country
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_line1
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_line2
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_postal_code
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_state
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_name
      sig { returns(T.nilable(String)) }
      attr_reader :refund_iban
    end
    class Owner < Stripe::StripeObject
      class Address < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :city
        sig { returns(T.nilable(String)) }
        attr_reader :country
        sig { returns(T.nilable(String)) }
        attr_reader :line1
        sig { returns(T.nilable(String)) }
        attr_reader :line2
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code
        sig { returns(T.nilable(String)) }
        attr_reader :state
      end
      class VerifiedAddress < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :city
        sig { returns(T.nilable(String)) }
        attr_reader :country
        sig { returns(T.nilable(String)) }
        attr_reader :line1
        sig { returns(T.nilable(String)) }
        attr_reader :line2
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code
        sig { returns(T.nilable(String)) }
        attr_reader :state
      end
      sig { returns(T.nilable(Address)) }
      attr_reader :address
      sig { returns(T.nilable(String)) }
      attr_reader :email
      sig { returns(T.nilable(String)) }
      attr_reader :name
      sig { returns(T.nilable(String)) }
      attr_reader :phone
      sig { returns(T.nilable(VerifiedAddress)) }
      attr_reader :verified_address
      sig { returns(T.nilable(String)) }
      attr_reader :verified_email
      sig { returns(T.nilable(String)) }
      attr_reader :verified_name
      sig { returns(T.nilable(String)) }
      attr_reader :verified_phone
    end
    class P24 < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :reference
    end
    class Paypal < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :billing_agreement
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :payer_id
      sig { returns(String) }
      attr_reader :reference_id
      sig { returns(String) }
      attr_reader :reference_transaction_amount
      sig { returns(T::Boolean) }
      attr_reader :reference_transaction_charged
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
      sig { returns(String) }
      attr_reader :transaction_id
      sig { returns(T.nilable(String)) }
      attr_reader :verified_email
    end
    class Receiver < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :address
      sig { returns(Integer) }
      attr_reader :amount_charged
      sig { returns(Integer) }
      attr_reader :amount_received
      sig { returns(Integer) }
      attr_reader :amount_returned
      sig { returns(String) }
      attr_reader :refund_attributes_method
      sig { returns(String) }
      attr_reader :refund_attributes_status
    end
    class Redirect < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :failure_reason
      sig { returns(String) }
      attr_reader :return_url
      sig { returns(String) }
      attr_reader :status
      sig { returns(String) }
      attr_reader :url
    end
    class SepaCreditTransfer < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name
      sig { returns(T.nilable(String)) }
      attr_reader :bic
      sig { returns(T.nilable(String)) }
      attr_reader :iban
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_city
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_country
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_line1
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_line2
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_postal_code
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_address_state
      sig { returns(T.nilable(String)) }
      attr_reader :refund_account_holder_name
      sig { returns(T.nilable(String)) }
      attr_reader :refund_iban
    end
    class SepaDebit < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank_code
      sig { returns(T.nilable(String)) }
      attr_reader :branch_code
      sig { returns(T.nilable(String)) }
      attr_reader :country
      sig { returns(T.nilable(String)) }
      attr_reader :fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      sig { returns(T.nilable(String)) }
      attr_reader :mandate_reference
      sig { returns(T.nilable(String)) }
      attr_reader :mandate_url
    end
    class Sofort < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :bank_code
      sig { returns(T.nilable(String)) }
      attr_reader :bank_name
      sig { returns(T.nilable(String)) }
      attr_reader :bic
      sig { returns(T.nilable(String)) }
      attr_reader :country
      sig { returns(T.nilable(String)) }
      attr_reader :iban_last4
      sig { returns(T.nilable(String)) }
      attr_reader :preferred_language
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
    end
    class SourceOrder < Stripe::StripeObject
      class Item < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount
        sig { returns(T.nilable(String)) }
        attr_reader :currency
        sig { returns(T.nilable(String)) }
        attr_reader :description
        sig { returns(T.nilable(String)) }
        attr_reader :parent
        sig { returns(Integer) }
        attr_reader :quantity
        sig { returns(T.nilable(String)) }
        attr_reader :type
      end
      class Shipping < Stripe::StripeObject
        class Address < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :city
          sig { returns(T.nilable(String)) }
          attr_reader :country
          sig { returns(T.nilable(String)) }
          attr_reader :line1
          sig { returns(T.nilable(String)) }
          attr_reader :line2
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code
          sig { returns(T.nilable(String)) }
          attr_reader :state
        end
        sig { returns(Address) }
        attr_reader :address
        sig { returns(T.nilable(String)) }
        attr_reader :carrier
        sig { returns(String) }
        attr_reader :name
        sig { returns(T.nilable(String)) }
        attr_reader :phone
        sig { returns(T.nilable(String)) }
        attr_reader :tracking_number
      end
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(String) }
      attr_reader :currency
      sig { returns(String) }
      attr_reader :email
      sig { returns(T.nilable(T::Array[Item])) }
      attr_reader :items
      sig { returns(Shipping) }
      attr_reader :shipping
    end
    class ThreeDSecure < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :address_line1_check
      sig { returns(T.nilable(String)) }
      attr_reader :address_zip_check
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :authenticated
      sig { returns(T.nilable(String)) }
      attr_reader :brand
      sig { returns(T.nilable(String)) }
      attr_reader :card
      sig { returns(T.nilable(String)) }
      attr_reader :country
      sig { returns(T.nilable(String)) }
      attr_reader :customer
      sig { returns(T.nilable(String)) }
      attr_reader :cvc_check
      sig { returns(String) }
      attr_reader :description
      sig { returns(T.nilable(String)) }
      attr_reader :dynamic_last4
      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_month
      sig { returns(T.nilable(Integer)) }
      attr_reader :exp_year
      sig { returns(String) }
      attr_reader :fingerprint
      sig { returns(T.nilable(String)) }
      attr_reader :funding
      sig { returns(String) }
      attr_reader :iin
      sig { returns(String) }
      attr_reader :issuer
      sig { returns(T.nilable(String)) }
      attr_reader :last4
      sig { returns(T.nilable(String)) }
      attr_reader :name
      sig { returns(String) }
      attr_reader :three_d_secure
      sig { returns(T.nilable(String)) }
      attr_reader :tokenization_method
    end
    class Wechat < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :prepay_id
      sig { returns(T.nilable(String)) }
      attr_reader :qr_code_url
      sig { returns(String) }
      attr_reader :statement_descriptor
    end
    sig { returns(AchCreditTransfer) }
    # Attribute for field ach_credit_transfer
    attr_reader :ach_credit_transfer
    sig { returns(AchDebit) }
    # Attribute for field ach_debit
    attr_reader :ach_debit
    sig { returns(AcssDebit) }
    # Attribute for field acss_debit
    attr_reader :acss_debit
    sig { returns(Alipay) }
    # Attribute for field alipay
    attr_reader :alipay
    sig { returns(T.nilable(String)) }
    # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
    attr_reader :allow_redisplay
    sig { returns(T.nilable(Integer)) }
    # A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount associated with the source. This is the amount for which the source will be chargeable once ready. Required for `single_use` sources.
    attr_reader :amount
    sig { returns(AuBecsDebit) }
    # Attribute for field au_becs_debit
    attr_reader :au_becs_debit
    sig { returns(Bancontact) }
    # Attribute for field bancontact
    attr_reader :bancontact
    sig { returns(Card) }
    # Attribute for field card
    attr_reader :card
    sig { returns(CardPresent) }
    # Attribute for field card_present
    attr_reader :card_present
    sig { returns(String) }
    # The client secret of the source. Used for client-side retrieval using a publishable key.
    attr_reader :client_secret
    sig { returns(CodeVerification) }
    # Attribute for field code_verification
    attr_reader :code_verification
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(String)) }
    # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) associated with the source. This is the currency for which the source will be chargeable once ready. Required for `single_use` sources.
    attr_reader :currency
    sig { returns(String) }
    # The ID of the customer to which this source is attached. This will not be present when the source has not been attached to a customer.
    attr_reader :customer
    sig { returns(Eps) }
    # Attribute for field eps
    attr_reader :eps
    sig { returns(String) }
    # The authentication `flow` of the source. `flow` is one of `redirect`, `receiver`, `code_verification`, `none`.
    attr_reader :flow
    sig { returns(Giropay) }
    # Attribute for field giropay
    attr_reader :giropay
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(Ideal) }
    # Attribute for field ideal
    attr_reader :ideal
    sig { returns(Klarna) }
    # Attribute for field klarna
    attr_reader :klarna
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(Multibanco) }
    # Attribute for field multibanco
    attr_reader :multibanco
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(Owner)) }
    # Information about the owner of the payment instrument that may be used or required by particular source types.
    attr_reader :owner
    sig { returns(P24) }
    # Attribute for field p24
    attr_reader :p24
    sig { returns(Paypal) }
    # Attribute for field paypal
    attr_reader :paypal
    sig { returns(Receiver) }
    # Attribute for field receiver
    attr_reader :receiver
    sig { returns(Redirect) }
    # Attribute for field redirect
    attr_reader :redirect
    sig { returns(SepaCreditTransfer) }
    # Attribute for field sepa_credit_transfer
    attr_reader :sepa_credit_transfer
    sig { returns(SepaDebit) }
    # Attribute for field sepa_debit
    attr_reader :sepa_debit
    sig { returns(Sofort) }
    # Attribute for field sofort
    attr_reader :sofort
    sig { returns(SourceOrder) }
    # Attribute for field source_order
    attr_reader :source_order
    sig { returns(T.nilable(String)) }
    # Extra information about a source. This will appear on your customer's statement every time you charge the source.
    attr_reader :statement_descriptor
    sig { returns(String) }
    # The status of the source, one of `canceled`, `chargeable`, `consumed`, `failed`, or `pending`. Only `chargeable` sources can be used to create a charge.
    attr_reader :status
    sig { returns(ThreeDSecure) }
    # Attribute for field three_d_secure
    attr_reader :three_d_secure
    sig { returns(String) }
    # The `type` of the source. The `type` is a payment method, one of `ach_credit_transfer`, `ach_debit`, `alipay`, `bancontact`, `card`, `card_present`, `eps`, `giropay`, `ideal`, `multibanco`, `klarna`, `p24`, `sepa_debit`, `sofort`, `three_d_secure`, or `wechat`. An additional hash is included on the source with a name matching this value. It contains additional information specific to the [payment method](https://stripe.com/docs/sources) used.
    attr_reader :type
    sig { returns(T.nilable(String)) }
    # Either `reusable` or `single_use`. Whether this source should be reusable or not. Some source types may or may not be reusable by construction, while others may leave the option at creation. If an incompatible value is passed, an error will be returned.
    attr_reader :usage
    sig { returns(Wechat) }
    # Attribute for field wechat
    attr_reader :wechat
  end
end