# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # The `Charge` object represents a single attempt to move money into your Stripe account.
  # PaymentIntent confirmation is the most common way to create Charges, but transferring
  # money to a different Stripe account through Connect also creates Charges.
  # Some legacy payment flows create Charges directly, which is not recommended for new integrations.
  class Charge < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::NestedResource
    extend Stripe::APIOperations::Search
    include Stripe::APIOperations::Save

    OBJECT_NAME = "charge"
    def self.object_name
      "charge"
    end

    nested_resource_class_methods :refund, operations: %i[retrieve list]

    class BillingDetails < Stripe::StripeObject
      class Address < Stripe::StripeObject
        attr_reader :city, :country, :line1, :line2, :postal_code, :state
      end
      attr_reader :address, :email, :name, :phone
    end

    class FraudDetails < Stripe::StripeObject
      attr_reader :stripe_report, :user_report
    end

    class Level3 < Stripe::StripeObject
      class LineItem < Stripe::StripeObject
        attr_reader :discount_amount, :product_code, :product_description, :quantity, :tax_amount, :unit_cost
      end
      attr_reader :customer_reference, :line_items, :merchant_reference, :shipping_address_zip, :shipping_amount, :shipping_from_zip
    end

    class Outcome < Stripe::StripeObject
      class Rule < Stripe::StripeObject
        attr_reader :action, :id, :predicate
      end
      attr_reader :network_status, :reason, :risk_level, :risk_score, :rule, :seller_message, :type
    end

    class PaymentMethodDetails < Stripe::StripeObject
      class AchCreditTransfer < Stripe::StripeObject
        attr_reader :account_number, :bank_name, :routing_number, :swift_code
      end

      class AchDebit < Stripe::StripeObject
        attr_reader :account_holder_type, :bank_name, :country, :fingerprint, :last4, :routing_number
      end

      class AcssDebit < Stripe::StripeObject
        attr_reader :bank_name, :fingerprint, :institution_number, :last4, :mandate, :transit_number
      end

      class Affirm < Stripe::StripeObject
        attr_reader :transaction_id
      end

      class AfterpayClearpay < Stripe::StripeObject
        attr_reader :order_id, :reference
      end

      class Alipay < Stripe::StripeObject
        attr_reader :buyer_id, :fingerprint, :transaction_id
      end

      class Alma < Stripe::StripeObject; end
      class AmazonPay < Stripe::StripeObject; end

      class AuBecsDebit < Stripe::StripeObject
        attr_reader :bsb_number, :fingerprint, :last4, :mandate
      end

      class BacsDebit < Stripe::StripeObject
        attr_reader :fingerprint, :last4, :mandate, :sort_code
      end

      class Bancontact < Stripe::StripeObject
        attr_reader :bank_code, :bank_name, :bic, :generated_sepa_debit, :generated_sepa_debit_mandate, :iban_last4, :preferred_language, :verified_name
      end

      class Blik < Stripe::StripeObject
        attr_reader :buyer_id
      end

      class Boleto < Stripe::StripeObject
        attr_reader :tax_id
      end

      class Card < Stripe::StripeObject
        class Checks < Stripe::StripeObject
          attr_reader :address_line1_check, :address_postal_code_check, :cvc_check
        end

        class DecrementalAuthorization < Stripe::StripeObject
          attr_reader :status
        end

        class ExtendedAuthorization < Stripe::StripeObject
          attr_reader :status
        end

        class IncrementalAuthorization < Stripe::StripeObject
          attr_reader :status
        end

        class Installments < Stripe::StripeObject
          class Plan < Stripe::StripeObject
            attr_reader :count, :interval, :type
          end
          attr_reader :plan
        end

        class Multicapture < Stripe::StripeObject
          attr_reader :status
        end

        class NetworkToken < Stripe::StripeObject
          attr_reader :used
        end

        class Overcapture < Stripe::StripeObject
          attr_reader :maximum_amount_capturable, :status
        end

        class ThreeDSecure < Stripe::StripeObject
          attr_reader :authentication_flow, :electronic_commerce_indicator, :exemption_indicator, :exemption_indicator_applied, :result, :result_reason, :transaction_id, :version
        end

        class Wallet < Stripe::StripeObject
          class AmexExpressCheckout < Stripe::StripeObject; end
          class ApplePay < Stripe::StripeObject; end
          class GooglePay < Stripe::StripeObject; end
          class Link < Stripe::StripeObject; end

          class Masterpass < Stripe::StripeObject
            class BillingAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end

            class ShippingAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end
            attr_reader :billing_address, :email, :name, :shipping_address
          end

          class SamsungPay < Stripe::StripeObject; end

          class VisaCheckout < Stripe::StripeObject
            class BillingAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end

            class ShippingAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end
            attr_reader :billing_address, :email, :name, :shipping_address
          end
          attr_reader :amex_express_checkout, :apple_pay, :dynamic_last4, :google_pay, :link, :masterpass, :samsung_pay, :type, :visa_checkout
        end
        attr_reader :amount_authorized, :authorization_code, :brand, :capture_before, :checks, :country, :decremental_authorization, :description, :exp_month, :exp_year, :extended_authorization, :fingerprint, :funding, :iin, :incremental_authorization, :installments, :issuer, :last4, :mandate, :moto, :multicapture, :network, :network_token, :overcapture, :three_d_secure, :wallet
      end

      class CardPresent < Stripe::StripeObject
        class Offline < Stripe::StripeObject
          attr_reader :stored_at, :type
        end

        class Receipt < Stripe::StripeObject
          attr_reader :account_type, :application_cryptogram, :application_preferred_name, :authorization_code, :authorization_response_code, :cardholder_verification_method, :dedicated_file_name, :terminal_verification_results, :transaction_status_information
        end

        class Wallet < Stripe::StripeObject
          attr_reader :type
        end
        attr_reader :amount_authorized, :brand, :brand_product, :capture_before, :cardholder_name, :country, :description, :emv_auth_data, :exp_month, :exp_year, :fingerprint, :funding, :generated_card, :iin, :incremental_authorization_supported, :issuer, :last4, :network, :network_transaction_id, :offline, :overcapture_supported, :preferred_locales, :read_method, :receipt, :wallet
      end

      class Cashapp < Stripe::StripeObject
        attr_reader :buyer_id, :cashtag
      end

      class CustomerBalance < Stripe::StripeObject; end

      class Eps < Stripe::StripeObject
        attr_reader :bank, :verified_name
      end

      class Fpx < Stripe::StripeObject
        attr_reader :account_holder_type, :bank, :transaction_id
      end

      class Giropay < Stripe::StripeObject
        attr_reader :bank_code, :bank_name, :bic, :verified_name
      end

      class Gopay < Stripe::StripeObject; end

      class Grabpay < Stripe::StripeObject
        attr_reader :transaction_id
      end

      class IdBankTransfer < Stripe::StripeObject
        attr_reader :account_number, :bank, :bank_code, :bank_name, :display_name
      end

      class Ideal < Stripe::StripeObject
        attr_reader :bank, :bic, :generated_sepa_debit, :generated_sepa_debit_mandate, :iban_last4, :verified_name
      end

      class InteracPresent < Stripe::StripeObject
        class Receipt < Stripe::StripeObject
          attr_reader :account_type, :application_cryptogram, :application_preferred_name, :authorization_code, :authorization_response_code, :cardholder_verification_method, :dedicated_file_name, :terminal_verification_results, :transaction_status_information
        end
        attr_reader :brand, :cardholder_name, :country, :description, :emv_auth_data, :exp_month, :exp_year, :fingerprint, :funding, :generated_card, :iin, :issuer, :last4, :network, :network_transaction_id, :preferred_locales, :read_method, :receipt
      end

      class KakaoPay < Stripe::StripeObject
        attr_reader :buyer_id
      end

      class Klarna < Stripe::StripeObject
        class PayerDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            attr_reader :country
          end
          attr_reader :address
        end
        attr_reader :payer_details, :payment_method_category, :preferred_locale
      end

      class Konbini < Stripe::StripeObject
        class Store < Stripe::StripeObject
          attr_reader :chain
        end
        attr_reader :store
      end

      class KrCard < Stripe::StripeObject
        attr_reader :brand, :buyer_id, :last4
      end

      class Link < Stripe::StripeObject
        attr_reader :country
      end

      class MbWay < Stripe::StripeObject; end

      class Mobilepay < Stripe::StripeObject
        class Card < Stripe::StripeObject
          attr_reader :brand, :country, :exp_month, :exp_year, :last4
        end
        attr_reader :card
      end

      class Multibanco < Stripe::StripeObject
        attr_reader :entity, :reference
      end

      class NaverPay < Stripe::StripeObject
        attr_reader :buyer_id
      end

      class Oxxo < Stripe::StripeObject
        attr_reader :number
      end

      class P24 < Stripe::StripeObject
        attr_reader :bank, :reference, :verified_name
      end

      class Payco < Stripe::StripeObject
        attr_reader :buyer_id
      end

      class Paynow < Stripe::StripeObject
        attr_reader :reference
      end

      class Paypal < Stripe::StripeObject
        class SellerProtection < Stripe::StripeObject
          attr_reader :dispute_categories, :status
        end

        class Shipping < Stripe::StripeObject
          attr_reader :city, :country, :line1, :line2, :postal_code, :state
        end

        class VerifiedAddress < Stripe::StripeObject
          attr_reader :city, :country, :line1, :line2, :postal_code, :state
        end
        attr_reader :payer_email, :payer_id, :payer_name, :seller_protection, :shipping, :transaction_id, :verified_address, :verified_email, :verified_name
      end

      class Payto < Stripe::StripeObject
        attr_reader :bsb_number, :last4, :mandate, :pay_id
      end

      class Pix < Stripe::StripeObject
        attr_reader :bank_transaction_id
      end

      class Promptpay < Stripe::StripeObject
        attr_reader :reference
      end

      class Qris < Stripe::StripeObject; end
      class Rechnung < Stripe::StripeObject; end
      class RevolutPay < Stripe::StripeObject; end

      class SamsungPay < Stripe::StripeObject
        attr_reader :buyer_id
      end

      class SepaCreditTransfer < Stripe::StripeObject
        attr_reader :bank_name, :bic, :iban
      end

      class SepaDebit < Stripe::StripeObject
        attr_reader :bank_code, :branch_code, :country, :fingerprint, :last4, :mandate
      end

      class Shopeepay < Stripe::StripeObject; end

      class Sofort < Stripe::StripeObject
        attr_reader :bank_code, :bank_name, :bic, :country, :generated_sepa_debit, :generated_sepa_debit_mandate, :iban_last4, :preferred_language, :verified_name
      end

      class StripeAccount < Stripe::StripeObject; end

      class Swish < Stripe::StripeObject
        attr_reader :fingerprint, :payment_reference, :verified_phone_last4
      end

      class Twint < Stripe::StripeObject; end

      class UsBankAccount < Stripe::StripeObject
        attr_reader :account_holder_type, :account_type, :bank_name, :fingerprint, :last4, :mandate, :payment_reference, :routing_number
      end

      class Wechat < Stripe::StripeObject; end

      class WechatPay < Stripe::StripeObject
        attr_reader :fingerprint, :transaction_id
      end

      class Zip < Stripe::StripeObject; end
      attr_reader :ach_credit_transfer, :ach_debit, :acss_debit, :affirm, :afterpay_clearpay, :alipay, :alma, :amazon_pay, :au_becs_debit, :bacs_debit, :bancontact, :blik, :boleto, :card, :card_present, :cashapp, :customer_balance, :eps, :fpx, :giropay, :gopay, :grabpay, :id_bank_transfer, :ideal, :interac_present, :kakao_pay, :klarna, :konbini, :kr_card, :link, :mb_way, :mobilepay, :multibanco, :naver_pay, :oxxo, :p24, :payco, :paynow, :paypal, :payto, :pix, :promptpay, :qris, :rechnung, :revolut_pay, :samsung_pay, :sepa_credit_transfer, :sepa_debit, :shopeepay, :sofort, :stripe_account, :swish, :twint, :type, :us_bank_account, :wechat, :wechat_pay, :zip
    end

    class RadarOptions < Stripe::StripeObject
      attr_reader :session
    end

    class Shipping < Stripe::StripeObject
      class Address < Stripe::StripeObject
        attr_reader :city, :country, :line1, :line2, :postal_code, :state
      end
      attr_reader :address, :carrier, :name, :phone, :tracking_number
    end

    class TransferData < Stripe::StripeObject
      attr_reader :amount, :destination
    end
    # Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    attr_reader :amount
    # Amount in cents (or local equivalent) captured (can be less than the amount attribute on the charge if a partial capture was made).
    attr_reader :amount_captured
    # Amount in cents (or local equivalent) refunded (can be less than the amount attribute on the charge if a partial refund was issued).
    attr_reader :amount_refunded
    # ID of the Connect application that created the charge.
    attr_reader :application
    # The application fee (if any) for the charge. [See the Connect documentation](https://stripe.com/docs/connect/direct-charges#collect-fees) for details.
    attr_reader :application_fee
    # The amount of the application fee (if any) requested for the charge. [See the Connect documentation](https://stripe.com/docs/connect/direct-charges#collect-fees) for details.
    attr_reader :application_fee_amount
    # Authorization code on the charge.
    attr_reader :authorization_code
    # ID of the balance transaction that describes the impact of this charge on your account balance (not including refunds or disputes).
    attr_reader :balance_transaction
    # Attribute for field billing_details
    attr_reader :billing_details
    # The full statement descriptor that is passed to card networks, and that is displayed on your customers' credit card and bank statements. Allows you to see what the statement descriptor looks like after the static and dynamic portions are combined. This value only exists for card payments.
    attr_reader :calculated_statement_descriptor
    # If the charge was created without capturing, this Boolean represents whether it is still uncaptured or has since been captured.
    attr_reader :captured
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # ID of the customer this charge is for if one exists.
    attr_reader :customer
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    # Whether the charge has been disputed.
    attr_reader :disputed
    # ID of the balance transaction that describes the reversal of the balance on your account due to payment failure.
    attr_reader :failure_balance_transaction
    # Error code explaining reason for charge failure if available (see [the errors section](https://stripe.com/docs/error-codes) for a list of codes).
    attr_reader :failure_code
    # Message to user further explaining reason for charge failure if available.
    attr_reader :failure_message
    # Information on fraud assessments for the charge.
    attr_reader :fraud_details
    # Unique identifier for the object.
    attr_reader :id
    # ID of the invoice this charge is for if one exists.
    attr_reader :invoice
    # Attribute for field level3
    attr_reader :level3
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The account (if any) the charge was made on behalf of without triggering an automatic transfer. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
    attr_reader :on_behalf_of
    # Details about whether the payment was accepted, and why. See [understanding declines](https://stripe.com/docs/declines) for details.
    attr_reader :outcome
    # `true` if the charge succeeded, or was successfully authorized for later capture.
    attr_reader :paid
    # ID of the PaymentIntent associated with this charge, if one exists.
    attr_reader :payment_intent
    # ID of the payment method used in this charge.
    attr_reader :payment_method
    # Details about the payment method at the time of the transaction.
    attr_reader :payment_method_details
    # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
    attr_reader :radar_options
    # This is the email address that the receipt for this charge was sent to.
    attr_reader :receipt_email
    # This is the transaction number that appears on email receipts sent for this charge. This attribute will be `null` until a receipt has been sent.
    attr_reader :receipt_number
    # This is the URL to view the receipt for this charge. The receipt is kept up-to-date to the latest state of the charge, including any refunds. If the charge is for an Invoice, the receipt will be stylized as an Invoice receipt.
    attr_reader :receipt_url
    # Whether the charge has been fully refunded. If the charge is only partially refunded, this attribute will still be false.
    attr_reader :refunded
    # A list of refunds that have been applied to the charge.
    attr_reader :refunds
    # ID of the review associated with this charge if one exists.
    attr_reader :review
    # Shipping information for the charge.
    attr_reader :shipping
    # This is a legacy field that will be removed in the future. It contains the Source, Card, or BankAccount object used for the charge. For details about the payment method used for this charge, refer to `payment_method` or `payment_method_details` instead.
    attr_reader :source
    # The transfer ID which created this charge. Only present if the charge came from another Stripe account. [See the Connect documentation](https://docs.stripe.com/connect/destination-charges) for details.
    attr_reader :source_transfer
    # For a non-card charge, text that appears on the customer's statement as the statement descriptor. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
    #
    # For a card charge, this value is ignored unless you don't specify a `statement_descriptor_suffix`, in which case this value is used as the suffix.
    attr_reader :statement_descriptor
    # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. If the account has no prefix value, the suffix is concatenated to the account's statement descriptor.
    attr_reader :statement_descriptor_suffix
    # The status of the payment is either `succeeded`, `pending`, or `failed`.
    attr_reader :status
    # ID of the transfer to the `destination` account (only applicable if the charge was created using the `destination` parameter).
    attr_reader :transfer
    # An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://stripe.com/docs/connect/destination-charges) for details.
    attr_reader :transfer_data
    # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
    attr_reader :transfer_group

    # Capture the payment of an existing, uncaptured charge that was created with the capture option set to false.
    #
    # Uncaptured payments expire a set number of days after they are created ([7 by default](https://stripe.com/docs/charges/placing-a-hold)), after which they are marked as refunded and capture attempts will fail.
    #
    # Don't use this method to capture a PaymentIntent-initiated charge. Use [Capture a PaymentIntent](https://stripe.com/docs/api/payment_intents/capture).
    def capture(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/charges/%<charge>s/capture", { charge: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Capture the payment of an existing, uncaptured charge that was created with the capture option set to false.
    #
    # Uncaptured payments expire a set number of days after they are created ([7 by default](https://stripe.com/docs/charges/placing-a-hold)), after which they are marked as refunded and capture attempts will fail.
    #
    # Don't use this method to capture a PaymentIntent-initiated charge. Use [Capture a PaymentIntent](https://stripe.com/docs/api/payment_intents/capture).
    def self.capture(charge, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/charges/%<charge>s/capture", { charge: CGI.escape(charge) }),
        params: params,
        opts: opts
      )
    end

    # This method is no longer recommended—use the [Payment Intents API](https://stripe.com/docs/api/payment_intents)
    # to initiate a new payment instead. Confirmation of the PaymentIntent creates the Charge
    # object used to request payment.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/charges", params: params, opts: opts)
    end

    # Returns a list of charges you've previously created. The charges are returned in sorted order, with the most recent charges appearing first.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/charges", params: params, opts: opts)
    end

    def self.search(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/charges/search", params: params, opts: opts)
    end

    def self.search_auto_paging_each(params = {}, opts = {}, &blk)
      search(params, opts).auto_paging_each(&blk)
    end

    # Updates the specified charge by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/charges/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
