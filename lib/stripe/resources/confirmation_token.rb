# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # ConfirmationTokens help transport client side data collected by Stripe JS over
  # to your server for confirming a PaymentIntent or SetupIntent. If the confirmation
  # is successful, values present on the ConfirmationToken are written onto the Intent.
  #
  # To learn more about how to use ConfirmationToken, visit the related guides:
  # - [Finalize payments on the server](https://stripe.com/docs/payments/finalize-payments-on-the-server)
  # - [Build two-step confirmation](https://stripe.com/docs/payments/build-a-two-step-confirmation).
  class ConfirmationToken < APIResource
    OBJECT_NAME = "confirmation_token"
    def self.object_name
      "confirmation_token"
    end

    class MandateData < Stripe::StripeObject
      class CustomerAcceptance < Stripe::StripeObject
        class Online < Stripe::StripeObject
          attr_reader :ip_address, :user_agent
        end
        attr_reader :online, :type
      end
      attr_reader :customer_acceptance
    end

    class PaymentMethodOptions < Stripe::StripeObject
      class Card < Stripe::StripeObject
        attr_reader :cvc_token
      end
      attr_reader :card
    end

    class PaymentMethodPreview < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject
        attr_reader :bank_name, :fingerprint, :institution_number, :last4, :transit_number
      end

      class Affirm < Stripe::StripeObject; end
      class AfterpayClearpay < Stripe::StripeObject; end
      class Alipay < Stripe::StripeObject; end
      class Alma < Stripe::StripeObject; end
      class AmazonPay < Stripe::StripeObject; end

      class AuBecsDebit < Stripe::StripeObject
        attr_reader :bsb_number, :fingerprint, :last4
      end

      class BacsDebit < Stripe::StripeObject
        attr_reader :fingerprint, :last4, :sort_code
      end

      class Bancontact < Stripe::StripeObject; end

      class BillingDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          attr_reader :city, :country, :line1, :line2, :postal_code, :state
        end
        attr_reader :address, :email, :name, :phone
      end

      class Blik < Stripe::StripeObject; end

      class Boleto < Stripe::StripeObject
        attr_reader :tax_id
      end

      class Card < Stripe::StripeObject
        class Checks < Stripe::StripeObject
          attr_reader :address_line1_check, :address_postal_code_check, :cvc_check
        end

        class GeneratedFrom < Stripe::StripeObject
          class PaymentMethodDetails < Stripe::StripeObject
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
            attr_reader :card_present, :type
          end
          attr_reader :charge, :payment_method_details, :setup_attempt
        end

        class Networks < Stripe::StripeObject
          attr_reader :available, :preferred
        end

        class ThreeDSecureUsage < Stripe::StripeObject
          attr_reader :supported
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
        attr_reader :brand, :checks, :country, :description, :display_brand, :exp_month, :exp_year, :fingerprint, :funding, :generated_from, :iin, :issuer, :last4, :networks, :three_d_secure_usage, :wallet
      end

      class CardPresent < Stripe::StripeObject
        class Networks < Stripe::StripeObject
          attr_reader :available, :preferred
        end

        class Offline < Stripe::StripeObject
          attr_reader :stored_at, :type
        end

        class Wallet < Stripe::StripeObject
          attr_reader :type
        end
        attr_reader :brand, :brand_product, :cardholder_name, :country, :description, :exp_month, :exp_year, :fingerprint, :funding, :iin, :issuer, :last4, :networks, :offline, :preferred_locales, :read_method, :wallet
      end

      class Cashapp < Stripe::StripeObject
        attr_reader :buyer_id, :cashtag
      end

      class CustomerBalance < Stripe::StripeObject; end

      class Eps < Stripe::StripeObject
        attr_reader :bank
      end

      class Fpx < Stripe::StripeObject
        attr_reader :account_holder_type, :bank
      end

      class Giropay < Stripe::StripeObject; end
      class Gopay < Stripe::StripeObject; end
      class Grabpay < Stripe::StripeObject; end

      class IdBankTransfer < Stripe::StripeObject
        attr_reader :bank, :bank_code, :bank_name, :display_name
      end

      class Ideal < Stripe::StripeObject
        attr_reader :bank, :bic
      end

      class InteracPresent < Stripe::StripeObject
        class Networks < Stripe::StripeObject
          attr_reader :available, :preferred
        end
        attr_reader :brand, :cardholder_name, :country, :description, :exp_month, :exp_year, :fingerprint, :funding, :iin, :issuer, :last4, :networks, :preferred_locales, :read_method
      end

      class KakaoPay < Stripe::StripeObject; end

      class Klarna < Stripe::StripeObject
        class Dob < Stripe::StripeObject
          attr_reader :day, :month, :year
        end
        attr_reader :dob
      end

      class Konbini < Stripe::StripeObject; end

      class KrCard < Stripe::StripeObject
        attr_reader :brand, :last4
      end

      class Link < Stripe::StripeObject
        attr_reader :email, :persistent_token
      end

      class MbWay < Stripe::StripeObject; end
      class Mobilepay < Stripe::StripeObject; end
      class Multibanco < Stripe::StripeObject; end

      class NaverPay < Stripe::StripeObject
        attr_reader :funding
      end

      class Oxxo < Stripe::StripeObject; end

      class P24 < Stripe::StripeObject
        attr_reader :bank
      end

      class Payco < Stripe::StripeObject; end
      class Paynow < Stripe::StripeObject; end

      class Paypal < Stripe::StripeObject
        attr_reader :fingerprint, :payer_email, :payer_id, :verified_email
      end

      class Payto < Stripe::StripeObject
        attr_reader :bsb_number, :last4, :pay_id
      end

      class Pix < Stripe::StripeObject; end
      class Promptpay < Stripe::StripeObject; end
      class Qris < Stripe::StripeObject; end

      class Rechnung < Stripe::StripeObject
        class Dob < Stripe::StripeObject
          attr_reader :day, :month, :year
        end
        attr_reader :dob
      end

      class RevolutPay < Stripe::StripeObject; end
      class SamsungPay < Stripe::StripeObject; end

      class SepaDebit < Stripe::StripeObject
        class GeneratedFrom < Stripe::StripeObject
          attr_reader :charge, :setup_attempt
        end
        attr_reader :bank_code, :branch_code, :country, :fingerprint, :generated_from, :last4
      end

      class Shopeepay < Stripe::StripeObject; end

      class Sofort < Stripe::StripeObject
        attr_reader :country
      end

      class Swish < Stripe::StripeObject; end
      class Twint < Stripe::StripeObject; end

      class UsBankAccount < Stripe::StripeObject
        class Networks < Stripe::StripeObject
          attr_reader :preferred, :supported
        end

        class StatusDetails < Stripe::StripeObject
          class Blocked < Stripe::StripeObject
            attr_reader :network_code, :reason
          end
          attr_reader :blocked
        end
        attr_reader :account_holder_type, :account_number, :account_type, :bank_name, :financial_connections_account, :fingerprint, :last4, :networks, :routing_number, :status_details
      end

      class WechatPay < Stripe::StripeObject; end
      class Zip < Stripe::StripeObject; end
      attr_reader :acss_debit, :affirm, :afterpay_clearpay, :alipay, :allow_redisplay, :alma, :amazon_pay, :au_becs_debit, :bacs_debit, :bancontact, :billing_details, :blik, :boleto, :card, :card_present, :cashapp, :customer, :customer_balance, :eps, :fpx, :giropay, :gopay, :grabpay, :id_bank_transfer, :ideal, :interac_present, :kakao_pay, :klarna, :konbini, :kr_card, :link, :mb_way, :mobilepay, :multibanco, :naver_pay, :oxxo, :p24, :payco, :paynow, :paypal, :payto, :pix, :promptpay, :qris, :rechnung, :revolut_pay, :samsung_pay, :sepa_debit, :shopeepay, :sofort, :swish, :twint, :type, :us_bank_account, :wechat_pay, :zip
    end

    class Shipping < Stripe::StripeObject
      class Address < Stripe::StripeObject
        attr_reader :city, :country, :line1, :line2, :postal_code, :state
      end
      attr_reader :address, :name, :phone
    end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Time at which this ConfirmationToken expires and can no longer be used to confirm a PaymentIntent or SetupIntent.
    attr_reader :expires_at
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Data used for generating a Mandate.
    attr_reader :mandate_data
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # ID of the PaymentIntent that this ConfirmationToken was used to confirm, or null if this ConfirmationToken has not yet been used.
    attr_reader :payment_intent
    # Payment-method-specific configuration for this ConfirmationToken.
    attr_reader :payment_method_options
    # Payment details collected by the Payment Element, used to create a PaymentMethod when a PaymentIntent or SetupIntent is confirmed with this ConfirmationToken.
    attr_reader :payment_method_preview
    # Return URL used to confirm the Intent.
    attr_reader :return_url
    # Indicates that you intend to make future payments with this ConfirmationToken's payment method.
    #
    # The presence of this property will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete.
    attr_reader :setup_future_usage
    # ID of the SetupIntent that this ConfirmationToken was used to confirm, or null if this ConfirmationToken has not yet been used.
    attr_reader :setup_intent
    # Shipping information collected on this ConfirmationToken.
    attr_reader :shipping
    # Indicates whether the Stripe SDK is used to handle confirmation flow. Defaults to `true` on ConfirmationToken.
    attr_reader :use_stripe_sdk

    def test_helpers
      TestHelpers.new(self)
    end

    class TestHelpers < APIResourceTestHelpers
      RESOURCE_CLASS = ConfirmationToken
      def self.resource_class
        "ConfirmationToken"
      end

      # Creates a test mode Confirmation Token server side for your integration tests.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/test_helpers/confirmation_tokens",
          params: params,
          opts: opts
        )
      end
    end
  end
end
