# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A PaymentIntent guides you through the process of collecting a payment from your customer.
  # We recommend that you create exactly one PaymentIntent for each order or
  # customer session in your system. You can reference the PaymentIntent later to
  # see the history of payment attempts for a particular session.
  #
  # A PaymentIntent transitions through
  # [multiple statuses](https://stripe.com/docs/payments/intents#intent-statuses)
  # throughout its lifetime as it interfaces with Stripe.js to perform
  # authentication flows and ultimately creates at most one successful charge.
  #
  # Related guide: [Payment Intents API](https://stripe.com/docs/payments/payment-intents)
  class PaymentIntent < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Search
    include Stripe::APIOperations::Save

    OBJECT_NAME = "payment_intent"
    def self.object_name
      "payment_intent"
    end

    class AmountDetails < Stripe::StripeObject
      class Tip < Stripe::StripeObject
        attr_reader :amount
      end
      attr_reader :tip
    end

    class AsyncWorkflows < Stripe::StripeObject
      class Inputs < Stripe::StripeObject
        class Tax < Stripe::StripeObject
          attr_reader :calculation
        end
        attr_reader :tax
      end
      attr_reader :inputs
    end

    class AutomaticPaymentMethods < Stripe::StripeObject
      attr_reader :allow_redirects, :enabled
    end

    class LastPaymentError < Stripe::StripeObject
      attr_reader :charge, :code, :decline_code, :doc_url, :message, :network_advice_code, :network_decline_code, :param, :payment_intent, :payment_method, :payment_method_type, :request_log_url, :setup_intent, :source, :type
    end

    class NextAction < Stripe::StripeObject
      class AlipayHandleRedirect < Stripe::StripeObject
        attr_reader :native_data, :native_url, :return_url, :url
      end

      class BoletoDisplayDetails < Stripe::StripeObject
        attr_reader :expires_at, :hosted_voucher_url, :number, :pdf
      end

      class CardAwaitNotification < Stripe::StripeObject
        attr_reader :charge_attempt_at, :customer_approval_required
      end

      class CashappHandleRedirectOrDisplayQrCode < Stripe::StripeObject
        class QrCode < Stripe::StripeObject
          attr_reader :expires_at, :image_url_png, :image_url_svg
        end
        attr_reader :hosted_instructions_url, :mobile_auth_url, :qr_code
      end

      class DisplayBankTransferInstructions < Stripe::StripeObject
        class FinancialAddress < Stripe::StripeObject
          class Aba < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end

            class BankAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end
            attr_reader :account_holder_address, :account_holder_name, :account_number, :account_type, :bank_address, :bank_name, :routing_number
          end

          class Iban < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end

            class BankAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end
            attr_reader :account_holder_address, :account_holder_name, :bank_address, :bic, :country, :iban
          end

          class SortCode < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end

            class BankAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end
            attr_reader :account_holder_address, :account_holder_name, :account_number, :bank_address, :sort_code
          end

          class Spei < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end

            class BankAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end
            attr_reader :account_holder_address, :account_holder_name, :bank_address, :bank_code, :bank_name, :clabe
          end

          class Swift < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end

            class BankAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end
            attr_reader :account_holder_address, :account_holder_name, :account_number, :account_type, :bank_address, :bank_name, :swift_code
          end

          class Zengin < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end

            class BankAddress < Stripe::StripeObject
              attr_reader :city, :country, :line1, :line2, :postal_code, :state
            end
            attr_reader :account_holder_address, :account_holder_name, :account_number, :account_type, :bank_address, :bank_code, :bank_name, :branch_code, :branch_name
          end
          attr_reader :aba, :iban, :sort_code, :spei, :supported_networks, :swift, :type, :zengin
        end
        attr_reader :amount_remaining, :currency, :financial_addresses, :hosted_instructions_url, :reference, :type
      end

      class KonbiniDisplayDetails < Stripe::StripeObject
        class Stores < Stripe::StripeObject
          class Familymart < Stripe::StripeObject
            attr_reader :confirmation_number, :payment_code
          end

          class Lawson < Stripe::StripeObject
            attr_reader :confirmation_number, :payment_code
          end

          class Ministop < Stripe::StripeObject
            attr_reader :confirmation_number, :payment_code
          end

          class Seicomart < Stripe::StripeObject
            attr_reader :confirmation_number, :payment_code
          end
          attr_reader :familymart, :lawson, :ministop, :seicomart
        end
        attr_reader :expires_at, :hosted_voucher_url, :stores
      end

      class MultibancoDisplayDetails < Stripe::StripeObject
        attr_reader :entity, :expires_at, :hosted_voucher_url, :reference
      end

      class OxxoDisplayDetails < Stripe::StripeObject
        attr_reader :expires_after, :hosted_voucher_url, :number
      end

      class PaynowDisplayQrCode < Stripe::StripeObject
        attr_reader :data, :hosted_instructions_url, :image_url_png, :image_url_svg
      end

      class PixDisplayQrCode < Stripe::StripeObject
        attr_reader :data, :expires_at, :hosted_instructions_url, :image_url_png, :image_url_svg
      end

      class PromptpayDisplayQrCode < Stripe::StripeObject
        attr_reader :data, :hosted_instructions_url, :image_url_png, :image_url_svg
      end

      class RedirectToUrl < Stripe::StripeObject
        attr_reader :return_url, :url
      end

      class SwishHandleRedirectOrDisplayQrCode < Stripe::StripeObject
        class QrCode < Stripe::StripeObject
          attr_reader :data, :image_url_png, :image_url_svg
        end
        attr_reader :hosted_instructions_url, :mobile_auth_url, :qr_code
      end

      class VerifyWithMicrodeposits < Stripe::StripeObject
        attr_reader :arrival_date, :hosted_verification_url, :microdeposit_type
      end

      class WechatPayDisplayQrCode < Stripe::StripeObject
        attr_reader :data, :hosted_instructions_url, :image_data_url, :image_url_png, :image_url_svg
      end

      class WechatPayRedirectToAndroidApp < Stripe::StripeObject
        attr_reader :app_id, :nonce_str, :package, :partner_id, :prepay_id, :sign, :timestamp
      end

      class WechatPayRedirectToIosApp < Stripe::StripeObject
        attr_reader :native_url
      end
      attr_reader :alipay_handle_redirect, :boleto_display_details, :card_await_notification, :cashapp_handle_redirect_or_display_qr_code, :display_bank_transfer_instructions, :konbini_display_details, :multibanco_display_details, :oxxo_display_details, :paynow_display_qr_code, :pix_display_qr_code, :promptpay_display_qr_code, :redirect_to_url, :swish_handle_redirect_or_display_qr_code, :type, :use_stripe_sdk, :verify_with_microdeposits, :wechat_pay_display_qr_code, :wechat_pay_redirect_to_android_app, :wechat_pay_redirect_to_ios_app
    end

    class PaymentDetails < Stripe::StripeObject
      class CarRental < Stripe::StripeObject
        class Affiliate < Stripe::StripeObject
          attr_reader :name
        end

        class Delivery < Stripe::StripeObject
          class Recipient < Stripe::StripeObject
            attr_reader :email, :name, :phone
          end
          attr_reader :mode, :recipient
        end

        class Driver < Stripe::StripeObject
          attr_reader :name
        end

        class PickupAddress < Stripe::StripeObject
          attr_reader :city, :country, :line1, :line2, :postal_code, :state
        end

        class ReturnAddress < Stripe::StripeObject
          attr_reader :city, :country, :line1, :line2, :postal_code, :state
        end
        attr_reader :affiliate, :booking_number, :car_class_code, :car_make, :car_model, :company, :customer_service_phone_number, :days_rented, :delivery, :drivers, :extra_charges, :no_show, :pickup_address, :pickup_at, :rate_amount, :rate_interval, :renter_name, :return_address, :return_at, :tax_exempt
      end

      class EventDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          attr_reader :city, :country, :line1, :line2, :postal_code, :state
        end

        class Affiliate < Stripe::StripeObject
          attr_reader :name
        end

        class Delivery < Stripe::StripeObject
          class Recipient < Stripe::StripeObject
            attr_reader :email, :name, :phone
          end
          attr_reader :mode, :recipient
        end
        attr_reader :access_controlled_venue, :address, :affiliate, :company, :delivery, :ends_at, :genre, :name, :starts_at
      end

      class Subscription < Stripe::StripeObject
        class Affiliate < Stripe::StripeObject
          attr_reader :name
        end

        class BillingInterval < Stripe::StripeObject
          attr_reader :count, :interval
        end
        attr_reader :affiliate, :auto_renewal, :billing_interval, :ends_at, :name, :starts_at
      end
      attr_reader :car_rental, :event_details, :subscription
    end

    class PaymentMethodConfigurationDetails < Stripe::StripeObject
      attr_reader :id, :parent
    end

    class PaymentMethodOptions < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          attr_reader :custom_mandate_url, :interval_description, :payment_schedule, :transaction_type
        end
        attr_reader :mandate_options, :setup_future_usage, :verification_method
      end

      class Affirm < Stripe::StripeObject
        attr_reader :capture_method, :preferred_locale, :setup_future_usage
      end

      class AfterpayClearpay < Stripe::StripeObject
        attr_reader :capture_method, :reference, :setup_future_usage
      end

      class Alipay < Stripe::StripeObject
        attr_reader :setup_future_usage
      end

      class Alma < Stripe::StripeObject
        attr_reader :capture_method
      end

      class AmazonPay < Stripe::StripeObject
        attr_reader :capture_method, :setup_future_usage
      end

      class AuBecsDebit < Stripe::StripeObject
        attr_reader :setup_future_usage
      end

      class BacsDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          attr_reader :reference_prefix
        end
        attr_reader :mandate_options, :setup_future_usage
      end

      class Bancontact < Stripe::StripeObject
        attr_reader :preferred_language, :setup_future_usage
      end

      class Blik < Stripe::StripeObject
        attr_reader :setup_future_usage
      end

      class Boleto < Stripe::StripeObject
        attr_reader :expires_after_days, :setup_future_usage
      end

      class Card < Stripe::StripeObject
        class Installments < Stripe::StripeObject
          class AvailablePlan < Stripe::StripeObject
            attr_reader :count, :interval, :type
          end

          class Plan < Stripe::StripeObject
            attr_reader :count, :interval, :type
          end
          attr_reader :available_plans, :enabled, :plan
        end

        class MandateOptions < Stripe::StripeObject
          attr_reader :amount, :amount_type, :description, :end_date, :interval, :interval_count, :reference, :start_date, :supported_types
        end

        class StatementDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            attr_reader :city, :country, :line1, :line2, :postal_code, :state
          end
          attr_reader :address, :phone
        end
        attr_reader :capture_method, :installments, :mandate_options, :network, :request_decremental_authorization, :request_extended_authorization, :request_incremental_authorization, :request_multicapture, :request_overcapture, :request_partial_authorization, :request_three_d_secure, :require_cvc_recollection, :setup_future_usage, :statement_descriptor_suffix_kana, :statement_descriptor_suffix_kanji, :statement_details
      end

      class CardPresent < Stripe::StripeObject
        class Routing < Stripe::StripeObject
          attr_reader :requested_priority
        end
        attr_reader :request_extended_authorization, :request_incremental_authorization_support, :routing
      end

      class Cashapp < Stripe::StripeObject
        attr_reader :capture_method, :setup_future_usage
      end

      class CustomerBalance < Stripe::StripeObject
        class BankTransfer < Stripe::StripeObject
          class EuBankTransfer < Stripe::StripeObject
            attr_reader :country
          end
          attr_reader :eu_bank_transfer, :requested_address_types, :type
        end
        attr_reader :bank_transfer, :funding_type, :setup_future_usage
      end

      class Eps < Stripe::StripeObject
        attr_reader :setup_future_usage
      end

      class Fpx < Stripe::StripeObject
        attr_reader :setup_future_usage
      end

      class Giropay < Stripe::StripeObject
        attr_reader :setup_future_usage
      end

      class Gopay < Stripe::StripeObject
        attr_reader :setup_future_usage
      end

      class Grabpay < Stripe::StripeObject
        attr_reader :setup_future_usage
      end

      class IdBankTransfer < Stripe::StripeObject
        attr_reader :expires_after, :expires_at, :setup_future_usage
      end

      class Ideal < Stripe::StripeObject
        attr_reader :setup_future_usage
      end

      class InteracPresent < Stripe::StripeObject; end

      class KakaoPay < Stripe::StripeObject
        attr_reader :capture_method, :setup_future_usage
      end

      class Klarna < Stripe::StripeObject
        attr_reader :capture_method, :preferred_locale, :setup_future_usage
      end

      class Konbini < Stripe::StripeObject
        attr_reader :confirmation_number, :expires_after_days, :expires_at, :product_description, :setup_future_usage
      end

      class KrCard < Stripe::StripeObject
        attr_reader :capture_method, :setup_future_usage
      end

      class Link < Stripe::StripeObject
        attr_reader :capture_method, :persistent_token, :setup_future_usage
      end

      class MbWay < Stripe::StripeObject
        attr_reader :setup_future_usage
      end

      class Mobilepay < Stripe::StripeObject
        attr_reader :capture_method, :setup_future_usage
      end

      class Multibanco < Stripe::StripeObject
        attr_reader :setup_future_usage
      end

      class NaverPay < Stripe::StripeObject
        attr_reader :capture_method
      end

      class Oxxo < Stripe::StripeObject
        attr_reader :expires_after_days, :setup_future_usage
      end

      class P24 < Stripe::StripeObject
        attr_reader :setup_future_usage
      end

      class Payco < Stripe::StripeObject
        attr_reader :capture_method
      end

      class Paynow < Stripe::StripeObject
        attr_reader :setup_future_usage
      end

      class Paypal < Stripe::StripeObject
        class LineItem < Stripe::StripeObject
          class Tax < Stripe::StripeObject
            attr_reader :amount, :behavior
          end
          attr_reader :category, :description, :name, :quantity, :sku, :sold_by, :tax, :unit_amount
        end
        attr_reader :capture_method, :line_items, :preferred_locale, :reference, :reference_id, :setup_future_usage, :subsellers
      end

      class Payto < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          attr_reader :amount, :amount_type, :end_date, :payment_schedule, :payments_per_period, :purpose
        end
        attr_reader :mandate_options, :setup_future_usage
      end

      class Pix < Stripe::StripeObject
        attr_reader :expires_after_seconds, :expires_at, :setup_future_usage
      end

      class Promptpay < Stripe::StripeObject
        attr_reader :setup_future_usage
      end

      class Qris < Stripe::StripeObject
        attr_reader :setup_future_usage
      end

      class Rechnung < Stripe::StripeObject; end

      class RevolutPay < Stripe::StripeObject
        attr_reader :capture_method, :setup_future_usage
      end

      class SamsungPay < Stripe::StripeObject
        attr_reader :capture_method
      end

      class SepaDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          attr_reader :reference_prefix
        end
        attr_reader :mandate_options, :setup_future_usage
      end

      class Shopeepay < Stripe::StripeObject
        attr_reader :setup_future_usage
      end

      class Sofort < Stripe::StripeObject
        attr_reader :preferred_language, :setup_future_usage
      end

      class Swish < Stripe::StripeObject
        attr_reader :reference, :setup_future_usage
      end

      class Twint < Stripe::StripeObject
        attr_reader :setup_future_usage
      end

      class UsBankAccount < Stripe::StripeObject
        class FinancialConnections < Stripe::StripeObject
          class Filters < Stripe::StripeObject
            attr_reader :account_subcategories, :institution
          end

          class ManualEntry < Stripe::StripeObject
            attr_reader :mode
          end
          attr_reader :filters, :manual_entry, :permissions, :prefetch, :return_url
        end

        class MandateOptions < Stripe::StripeObject
          attr_reader :collection_method
        end
        attr_reader :financial_connections, :mandate_options, :preferred_settlement_speed, :setup_future_usage, :verification_method
      end

      class WechatPay < Stripe::StripeObject
        attr_reader :app_id, :client, :setup_future_usage
      end

      class Zip < Stripe::StripeObject
        attr_reader :setup_future_usage
      end
      attr_reader :acss_debit, :affirm, :afterpay_clearpay, :alipay, :alma, :amazon_pay, :au_becs_debit, :bacs_debit, :bancontact, :blik, :boleto, :card, :card_present, :cashapp, :customer_balance, :eps, :fpx, :giropay, :gopay, :grabpay, :id_bank_transfer, :ideal, :interac_present, :kakao_pay, :klarna, :konbini, :kr_card, :link, :mb_way, :mobilepay, :multibanco, :naver_pay, :oxxo, :p24, :payco, :paynow, :paypal, :payto, :pix, :promptpay, :qris, :rechnung, :revolut_pay, :samsung_pay, :sepa_debit, :shopeepay, :sofort, :swish, :twint, :us_bank_account, :wechat_pay, :zip
    end

    class Processing < Stripe::StripeObject
      class Card < Stripe::StripeObject
        class CustomerNotification < Stripe::StripeObject
          attr_reader :approval_requested, :completes_at
        end
        attr_reader :customer_notification
      end
      attr_reader :card, :type
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
    # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    attr_reader :amount
    # Amount that can be captured from this PaymentIntent.
    attr_reader :amount_capturable
    # Attribute for field amount_details
    attr_reader :amount_details
    # Amount that this PaymentIntent collects.
    attr_reader :amount_received
    # ID of the Connect application that created the PaymentIntent.
    attr_reader :application
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total payment amount. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    attr_reader :application_fee_amount
    # Attribute for field async_workflows
    attr_reader :async_workflows
    # Settings to configure compatible payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods)
    attr_reader :automatic_payment_methods
    # Populated when `status` is `canceled`, this is the time at which the PaymentIntent was canceled. Measured in seconds since the Unix epoch.
    attr_reader :canceled_at
    # Reason for cancellation of this PaymentIntent, either user-provided (`duplicate`, `fraudulent`, `requested_by_customer`, or `abandoned`) or generated by Stripe internally (`failed_invoice`, `void_invoice`, or `automatic`).
    attr_reader :cancellation_reason
    # Controls when the funds will be captured from the customer's account.
    attr_reader :capture_method
    # The client secret of this PaymentIntent. Used for client-side retrieval using a publishable key.
    #
    # The client secret can be used to complete a payment from your frontend. It should not be stored, logged, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
    #
    # Refer to our docs to [accept a payment](https://stripe.com/docs/payments/accept-a-payment?ui=elements) and learn about how `client_secret` should be handled.
    attr_reader :client_secret
    # Describes whether we can confirm this PaymentIntent automatically, or if it requires customer action to confirm the payment.
    attr_reader :confirmation_method
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # ID of the Customer this PaymentIntent belongs to, if one exists.
    #
    # Payment methods attached to other Customers cannot be used with this PaymentIntent.
    #
    # If [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
    attr_reader :customer
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    # Unique identifier for the object.
    attr_reader :id
    # ID of the invoice that created this PaymentIntent, if it exists.
    attr_reader :invoice
    # The payment error encountered in the previous PaymentIntent confirmation. It will be cleared if the PaymentIntent is later updated for any reason.
    attr_reader :last_payment_error
    # ID of the latest [Charge object](https://stripe.com/docs/api/charges) created by this PaymentIntent. This property is `null` until PaymentIntent confirmation is attempted.
    attr_reader :latest_charge
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Learn more about [storing information in metadata](https://stripe.com/docs/payments/payment-intents/creating-payment-intents#storing-information-in-metadata).
    attr_reader :metadata
    # If present, this property tells you what actions you need to take in order for your customer to fulfill a payment using the provided source.
    attr_reader :next_action
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The account (if any) for which the funds of the PaymentIntent are intended. See the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts) for details.
    attr_reader :on_behalf_of
    # Attribute for field payment_details
    attr_reader :payment_details
    # ID of the payment method used in this PaymentIntent.
    attr_reader :payment_method
    # Information about the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) used for this PaymentIntent.
    attr_reader :payment_method_configuration_details
    # Payment-method-specific configuration for this PaymentIntent.
    attr_reader :payment_method_options
    # The list of payment method types (e.g. card) that this PaymentIntent is allowed to use.
    attr_reader :payment_method_types
    # If present, this property tells you about the processing state of the payment.
    attr_reader :processing
    # Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
    attr_reader :receipt_email
    # ID of the review associated with this PaymentIntent, if any.
    attr_reader :review
    # Indicates whether confirmation for this PaymentIntent using a secret key is `required` or `optional`.
    attr_reader :secret_key_confirmation
    # Indicates that you intend to make future payments with this PaymentIntent's payment method.
    #
    # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
    #
    # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
    #
    # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
    attr_reader :setup_future_usage
    # Shipping information for this PaymentIntent.
    attr_reader :shipping
    # This is a legacy field that will be removed in the future. It is the ID of the Source object that is associated with this PaymentIntent, if one was supplied.
    attr_reader :source
    # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
    #
    # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
    attr_reader :statement_descriptor
    # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
    attr_reader :statement_descriptor_suffix
    # Status of this PaymentIntent, one of `requires_payment_method`, `requires_confirmation`, `requires_action`, `processing`, `requires_capture`, `canceled`, or `succeeded`. Read more about each PaymentIntent [status](https://stripe.com/docs/payments/intents#intent-statuses).
    attr_reader :status
    # The data that automatically creates a Transfer after the payment finalizes. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    attr_reader :transfer_data
    # A string that identifies the resulting payment as part of a group. Learn more about the [use case for connected accounts](https://stripe.com/docs/connect/separate-charges-and-transfers).
    attr_reader :transfer_group

    # Manually reconcile the remaining amount for a customer_balance PaymentIntent.
    def apply_customer_balance(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/apply_customer_balance", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Manually reconcile the remaining amount for a customer_balance PaymentIntent.
    def self.apply_customer_balance(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/apply_customer_balance", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # You can cancel a PaymentIntent object when it's in one of these statuses: requires_payment_method, requires_capture, requires_confirmation, requires_action or, [in rare cases](https://stripe.com/docs/payments/intents), processing.
    #
    # After it's canceled, no additional charges are made by the PaymentIntent and any operations on the PaymentIntent fail with an error. For PaymentIntents with a status of requires_capture, the remaining amount_capturable is automatically refunded.
    #
    # You can't cancel the PaymentIntent for a Checkout Session. [Expire the Checkout Session](https://stripe.com/docs/api/checkout/sessions/expire) instead.
    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/cancel", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # You can cancel a PaymentIntent object when it's in one of these statuses: requires_payment_method, requires_capture, requires_confirmation, requires_action or, [in rare cases](https://stripe.com/docs/payments/intents), processing.
    #
    # After it's canceled, no additional charges are made by the PaymentIntent and any operations on the PaymentIntent fail with an error. For PaymentIntents with a status of requires_capture, the remaining amount_capturable is automatically refunded.
    #
    # You can't cancel the PaymentIntent for a Checkout Session. [Expire the Checkout Session](https://stripe.com/docs/api/checkout/sessions/expire) instead.
    def self.cancel(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/cancel", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # Capture the funds of an existing uncaptured PaymentIntent when its status is requires_capture.
    #
    # Uncaptured PaymentIntents are cancelled a set number of days (7 by default) after their creation.
    #
    # Learn more about [separate authorization and capture](https://stripe.com/docs/payments/capture-later).
    def capture(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/capture", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Capture the funds of an existing uncaptured PaymentIntent when its status is requires_capture.
    #
    # Uncaptured PaymentIntents are cancelled a set number of days (7 by default) after their creation.
    #
    # Learn more about [separate authorization and capture](https://stripe.com/docs/payments/capture-later).
    def self.capture(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/capture", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # Confirm that your customer intends to pay with current or provided
    # payment method. Upon confirmation, the PaymentIntent will attempt to initiate
    # a payment.
    # If the selected payment method requires additional authentication steps, the
    # PaymentIntent will transition to the requires_action status and
    # suggest additional actions via next_action. If payment fails,
    # the PaymentIntent transitions to the requires_payment_method status or the
    # canceled status if the confirmation limit is reached. If
    # payment succeeds, the PaymentIntent will transition to the succeeded
    # status (or requires_capture, if capture_method is set to manual).
    # If the confirmation_method is automatic, payment may be attempted
    # using our [client SDKs](https://stripe.com/docs/stripe-js/reference#stripe-handle-card-payment)
    # and the PaymentIntent's [client_secret](https://stripe.com/docs/api#payment_intent_object-client_secret).
    # After next_actions are handled by the client, no additional
    # confirmation is required to complete the payment.
    # If the confirmation_method is manual, all payment attempts must be
    # initiated using a secret key.
    # If any actions are required for the payment, the PaymentIntent will
    # return to the requires_confirmation state
    # after those actions are completed. Your server needs to then
    # explicitly re-confirm the PaymentIntent to initiate the next payment
    # attempt.
    # There is a variable upper limit on how many times a PaymentIntent can be confirmed.
    # After this limit is reached, any further calls to this endpoint will
    # transition the PaymentIntent to the canceled state.
    def confirm(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/confirm", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Confirm that your customer intends to pay with current or provided
    # payment method. Upon confirmation, the PaymentIntent will attempt to initiate
    # a payment.
    # If the selected payment method requires additional authentication steps, the
    # PaymentIntent will transition to the requires_action status and
    # suggest additional actions via next_action. If payment fails,
    # the PaymentIntent transitions to the requires_payment_method status or the
    # canceled status if the confirmation limit is reached. If
    # payment succeeds, the PaymentIntent will transition to the succeeded
    # status (or requires_capture, if capture_method is set to manual).
    # If the confirmation_method is automatic, payment may be attempted
    # using our [client SDKs](https://stripe.com/docs/stripe-js/reference#stripe-handle-card-payment)
    # and the PaymentIntent's [client_secret](https://stripe.com/docs/api#payment_intent_object-client_secret).
    # After next_actions are handled by the client, no additional
    # confirmation is required to complete the payment.
    # If the confirmation_method is manual, all payment attempts must be
    # initiated using a secret key.
    # If any actions are required for the payment, the PaymentIntent will
    # return to the requires_confirmation state
    # after those actions are completed. Your server needs to then
    # explicitly re-confirm the PaymentIntent to initiate the next payment
    # attempt.
    # There is a variable upper limit on how many times a PaymentIntent can be confirmed.
    # After this limit is reached, any further calls to this endpoint will
    # transition the PaymentIntent to the canceled state.
    def self.confirm(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/confirm", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # Creates a PaymentIntent object.
    #
    # After the PaymentIntent is created, attach a payment method and [confirm](https://stripe.com/docs/api/payment_intents/confirm)
    # to continue the payment. Learn more about <a href="/docs/payments/payment-intents">the available payment flows
    # with the Payment Intents API.
    #
    # When you use confirm=true during creation, it's equivalent to creating
    # and confirming the PaymentIntent in the same call. You can use any parameters
    # available in the [confirm API](https://stripe.com/docs/api/payment_intents/confirm) when you supply
    # confirm=true.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/payment_intents", params: params, opts: opts)
    end

    # Perform a decremental authorization on an eligible
    # [PaymentIntent](https://stripe.com/docs/api/payment_intents/object). To be eligible, the
    # PaymentIntent's status must be requires_capture and
    # [decremental_authorization.status](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card-decremental_authorization)
    # must be available.
    #
    # Decremental authorizations decrease the authorized amount on your customer's card
    # to the new, lower amount provided. A single PaymentIntent can call this endpoint multiple times to further decrease the authorized amount.
    #
    # After decrement, the PaymentIntent object
    # returns with the updated
    # [amount](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-amount).
    # The PaymentIntent will now be capturable up to the new authorized amount.
    #
    # Each PaymentIntent can have a maximum of 10 decremental or incremental authorization attempts, including declines.
    # After it's fully captured, a PaymentIntent can no longer be decremented.
    def decrement_authorization(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/decrement_authorization", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Perform a decremental authorization on an eligible
    # [PaymentIntent](https://stripe.com/docs/api/payment_intents/object). To be eligible, the
    # PaymentIntent's status must be requires_capture and
    # [decremental_authorization.status](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card-decremental_authorization)
    # must be available.
    #
    # Decremental authorizations decrease the authorized amount on your customer's card
    # to the new, lower amount provided. A single PaymentIntent can call this endpoint multiple times to further decrease the authorized amount.
    #
    # After decrement, the PaymentIntent object
    # returns with the updated
    # [amount](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-amount).
    # The PaymentIntent will now be capturable up to the new authorized amount.
    #
    # Each PaymentIntent can have a maximum of 10 decremental or incremental authorization attempts, including declines.
    # After it's fully captured, a PaymentIntent can no longer be decremented.
    def self.decrement_authorization(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/decrement_authorization", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # Perform an incremental authorization on an eligible
    # [PaymentIntent](https://stripe.com/docs/api/payment_intents/object). To be eligible, the
    # PaymentIntent's status must be requires_capture and
    # [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported)
    # must be true.
    #
    # Incremental authorizations attempt to increase the authorized amount on
    # your customer's card to the new, higher amount provided. Similar to the
    # initial authorization, incremental authorizations can be declined. A
    # single PaymentIntent can call this endpoint multiple times to further
    # increase the authorized amount.
    #
    # If the incremental authorization succeeds, the PaymentIntent object
    # returns with the updated
    # [amount](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-amount).
    # If the incremental authorization fails, a
    # [card_declined](https://stripe.com/docs/error-codes#card-declined) error returns, and no other
    # fields on the PaymentIntent or Charge update. The PaymentIntent
    # object remains capturable for the previously authorized amount.
    #
    # Each PaymentIntent can have a maximum of 10 incremental authorization attempts, including declines.
    # After it's captured, a PaymentIntent can no longer be incremented.
    #
    # Learn more about [incremental authorizations](https://stripe.com/docs/terminal/features/incremental-authorizations).
    def increment_authorization(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/increment_authorization", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Perform an incremental authorization on an eligible
    # [PaymentIntent](https://stripe.com/docs/api/payment_intents/object). To be eligible, the
    # PaymentIntent's status must be requires_capture and
    # [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported)
    # must be true.
    #
    # Incremental authorizations attempt to increase the authorized amount on
    # your customer's card to the new, higher amount provided. Similar to the
    # initial authorization, incremental authorizations can be declined. A
    # single PaymentIntent can call this endpoint multiple times to further
    # increase the authorized amount.
    #
    # If the incremental authorization succeeds, the PaymentIntent object
    # returns with the updated
    # [amount](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-amount).
    # If the incremental authorization fails, a
    # [card_declined](https://stripe.com/docs/error-codes#card-declined) error returns, and no other
    # fields on the PaymentIntent or Charge update. The PaymentIntent
    # object remains capturable for the previously authorized amount.
    #
    # Each PaymentIntent can have a maximum of 10 incremental authorization attempts, including declines.
    # After it's captured, a PaymentIntent can no longer be incremented.
    #
    # Learn more about [incremental authorizations](https://stripe.com/docs/terminal/features/incremental-authorizations).
    def self.increment_authorization(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/increment_authorization", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of PaymentIntents.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/payment_intents", params: filters, opts: opts)
    end

    def self.search(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/payment_intents/search",
        params: params,
        opts: opts
      )
    end

    def self.search_auto_paging_each(params = {}, opts = {}, &blk)
      search(params, opts).auto_paging_each(&blk)
    end

    # Trigger an external action on a PaymentIntent.
    def trigger_action(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/test/payment_intents/%<intent>s/trigger_action", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Trigger an external action on a PaymentIntent.
    def self.trigger_action(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/test/payment_intents/%<intent>s/trigger_action", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # Updates properties on a PaymentIntent object without confirming.
    #
    # Depending on which properties you update, you might need to confirm the
    # PaymentIntent again. For example, updating the payment_method
    # always requires you to confirm the PaymentIntent again. If you prefer to
    # update and confirm at the same time, we recommend updating properties through
    # the [confirm API](https://stripe.com/docs/api/payment_intents/confirm) instead.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Verifies microdeposits on a PaymentIntent object.
    def verify_microdeposits(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/verify_microdeposits", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Verifies microdeposits on a PaymentIntent object.
    def self.verify_microdeposits(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_intents/%<intent>s/verify_microdeposits", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end
  end
end
