# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
    class AmountDetails < Stripe::StripeObject
      class Tip < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :amount
      end
      sig { returns(Tip) }
      attr_reader :tip
    end
    class AsyncWorkflows < Stripe::StripeObject
      class Inputs < Stripe::StripeObject
        class Tax < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :calculation
        end
        sig { returns(Tax) }
        attr_reader :tax
      end
      sig { returns(Inputs) }
      attr_reader :inputs
    end
    class AutomaticPaymentMethods < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :allow_redirects
      sig { returns(T::Boolean) }
      attr_reader :enabled
    end
    class LastPaymentError < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :charge
      sig { returns(String) }
      attr_reader :code
      sig { returns(String) }
      attr_reader :decline_code
      sig { returns(String) }
      attr_reader :doc_url
      sig { returns(String) }
      attr_reader :message
      sig { returns(String) }
      attr_reader :network_advice_code
      sig { returns(String) }
      attr_reader :network_decline_code
      sig { returns(String) }
      attr_reader :param
      sig { returns(Stripe::PaymentIntent) }
      attr_reader :payment_intent
      sig { returns(Stripe::PaymentMethod) }
      attr_reader :payment_method
      sig { returns(String) }
      attr_reader :payment_method_type
      sig { returns(String) }
      attr_reader :request_log_url
      sig { returns(Stripe::SetupIntent) }
      attr_reader :setup_intent
      sig { returns(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source)) }
      attr_reader :source
      sig { returns(String) }
      attr_reader :type
    end
    class NextAction < Stripe::StripeObject
      class AlipayHandleRedirect < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :native_data
        sig { returns(T.nilable(String)) }
        attr_reader :native_url
        sig { returns(T.nilable(String)) }
        attr_reader :return_url
        sig { returns(T.nilable(String)) }
        attr_reader :url
      end
      class BoletoDisplayDetails < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_at
        sig { returns(T.nilable(String)) }
        attr_reader :hosted_voucher_url
        sig { returns(T.nilable(String)) }
        attr_reader :number
        sig { returns(T.nilable(String)) }
        attr_reader :pdf
      end
      class CardAwaitNotification < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :charge_attempt_at
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :customer_approval_required
      end
      class CashappHandleRedirectOrDisplayQrCode < Stripe::StripeObject
        class QrCode < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :expires_at
          sig { returns(String) }
          attr_reader :image_url_png
          sig { returns(String) }
          attr_reader :image_url_svg
        end
        sig { returns(String) }
        attr_reader :hosted_instructions_url
        sig { returns(String) }
        attr_reader :mobile_auth_url
        sig { returns(QrCode) }
        attr_reader :qr_code
      end
      class DisplayBankTransferInstructions < Stripe::StripeObject
        class FinancialAddress < Stripe::StripeObject
          class Aba < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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
            class BankAddress < Stripe::StripeObject
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
            sig { returns(AccountHolderAddress) }
            attr_reader :account_holder_address
            sig { returns(String) }
            attr_reader :account_holder_name
            sig { returns(String) }
            attr_reader :account_number
            sig { returns(String) }
            attr_reader :account_type
            sig { returns(BankAddress) }
            attr_reader :bank_address
            sig { returns(String) }
            attr_reader :bank_name
            sig { returns(String) }
            attr_reader :routing_number
          end
          class Iban < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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
            class BankAddress < Stripe::StripeObject
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
            sig { returns(AccountHolderAddress) }
            attr_reader :account_holder_address
            sig { returns(String) }
            attr_reader :account_holder_name
            sig { returns(BankAddress) }
            attr_reader :bank_address
            sig { returns(String) }
            attr_reader :bic
            sig { returns(String) }
            attr_reader :country
            sig { returns(String) }
            attr_reader :iban
          end
          class SortCode < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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
            class BankAddress < Stripe::StripeObject
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
            sig { returns(AccountHolderAddress) }
            attr_reader :account_holder_address
            sig { returns(String) }
            attr_reader :account_holder_name
            sig { returns(String) }
            attr_reader :account_number
            sig { returns(BankAddress) }
            attr_reader :bank_address
            sig { returns(String) }
            attr_reader :sort_code
          end
          class Spei < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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
            class BankAddress < Stripe::StripeObject
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
            sig { returns(AccountHolderAddress) }
            attr_reader :account_holder_address
            sig { returns(String) }
            attr_reader :account_holder_name
            sig { returns(BankAddress) }
            attr_reader :bank_address
            sig { returns(String) }
            attr_reader :bank_code
            sig { returns(String) }
            attr_reader :bank_name
            sig { returns(String) }
            attr_reader :clabe
          end
          class Swift < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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
            class BankAddress < Stripe::StripeObject
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
            sig { returns(AccountHolderAddress) }
            attr_reader :account_holder_address
            sig { returns(String) }
            attr_reader :account_holder_name
            sig { returns(String) }
            attr_reader :account_number
            sig { returns(String) }
            attr_reader :account_type
            sig { returns(BankAddress) }
            attr_reader :bank_address
            sig { returns(String) }
            attr_reader :bank_name
            sig { returns(String) }
            attr_reader :swift_code
          end
          class Zengin < Stripe::StripeObject
            class AccountHolderAddress < Stripe::StripeObject
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
            class BankAddress < Stripe::StripeObject
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
            sig { returns(AccountHolderAddress) }
            attr_reader :account_holder_address
            sig { returns(T.nilable(String)) }
            attr_reader :account_holder_name
            sig { returns(T.nilable(String)) }
            attr_reader :account_number
            sig { returns(T.nilable(String)) }
            attr_reader :account_type
            sig { returns(BankAddress) }
            attr_reader :bank_address
            sig { returns(T.nilable(String)) }
            attr_reader :bank_code
            sig { returns(T.nilable(String)) }
            attr_reader :bank_name
            sig { returns(T.nilable(String)) }
            attr_reader :branch_code
            sig { returns(T.nilable(String)) }
            attr_reader :branch_name
          end
          sig { returns(Aba) }
          attr_reader :aba
          sig { returns(Iban) }
          attr_reader :iban
          sig { returns(SortCode) }
          attr_reader :sort_code
          sig { returns(Spei) }
          attr_reader :spei
          sig { returns(T::Array[String]) }
          attr_reader :supported_networks
          sig { returns(Swift) }
          attr_reader :swift
          sig { returns(String) }
          attr_reader :type
          sig { returns(Zengin) }
          attr_reader :zengin
        end
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_remaining
        sig { returns(T.nilable(String)) }
        attr_reader :currency
        sig { returns(T::Array[FinancialAddress]) }
        attr_reader :financial_addresses
        sig { returns(T.nilable(String)) }
        attr_reader :hosted_instructions_url
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(String) }
        attr_reader :type
      end
      class KonbiniDisplayDetails < Stripe::StripeObject
        class Stores < Stripe::StripeObject
          class Familymart < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :confirmation_number
            sig { returns(String) }
            attr_reader :payment_code
          end
          class Lawson < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :confirmation_number
            sig { returns(String) }
            attr_reader :payment_code
          end
          class Ministop < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :confirmation_number
            sig { returns(String) }
            attr_reader :payment_code
          end
          class Seicomart < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :confirmation_number
            sig { returns(String) }
            attr_reader :payment_code
          end
          sig { returns(T.nilable(Familymart)) }
          attr_reader :familymart
          sig { returns(T.nilable(Lawson)) }
          attr_reader :lawson
          sig { returns(T.nilable(Ministop)) }
          attr_reader :ministop
          sig { returns(T.nilable(Seicomart)) }
          attr_reader :seicomart
        end
        sig { returns(Integer) }
        attr_reader :expires_at
        sig { returns(T.nilable(String)) }
        attr_reader :hosted_voucher_url
        sig { returns(Stores) }
        attr_reader :stores
      end
      class MultibancoDisplayDetails < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :entity
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_at
        sig { returns(T.nilable(String)) }
        attr_reader :hosted_voucher_url
        sig { returns(T.nilable(String)) }
        attr_reader :reference
      end
      class OxxoDisplayDetails < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_after
        sig { returns(T.nilable(String)) }
        attr_reader :hosted_voucher_url
        sig { returns(T.nilable(String)) }
        attr_reader :number
      end
      class PaynowDisplayQrCode < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :data
        sig { returns(T.nilable(String)) }
        attr_reader :hosted_instructions_url
        sig { returns(String) }
        attr_reader :image_url_png
        sig { returns(String) }
        attr_reader :image_url_svg
      end
      class PixDisplayQrCode < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :data
        sig { returns(Integer) }
        attr_reader :expires_at
        sig { returns(String) }
        attr_reader :hosted_instructions_url
        sig { returns(String) }
        attr_reader :image_url_png
        sig { returns(String) }
        attr_reader :image_url_svg
      end
      class PromptpayDisplayQrCode < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :data
        sig { returns(String) }
        attr_reader :hosted_instructions_url
        sig { returns(String) }
        attr_reader :image_url_png
        sig { returns(String) }
        attr_reader :image_url_svg
      end
      class RedirectToUrl < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :return_url
        sig { returns(T.nilable(String)) }
        attr_reader :url
      end
      class SwishHandleRedirectOrDisplayQrCode < Stripe::StripeObject
        class QrCode < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :data
          sig { returns(String) }
          attr_reader :image_url_png
          sig { returns(String) }
          attr_reader :image_url_svg
        end
        sig { returns(String) }
        attr_reader :hosted_instructions_url
        sig { returns(String) }
        attr_reader :mobile_auth_url
        sig { returns(QrCode) }
        attr_reader :qr_code
      end
      class VerifyWithMicrodeposits < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :arrival_date
        sig { returns(String) }
        attr_reader :hosted_verification_url
        sig { returns(T.nilable(String)) }
        attr_reader :microdeposit_type
      end
      class WechatPayDisplayQrCode < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :data
        sig { returns(String) }
        attr_reader :hosted_instructions_url
        sig { returns(String) }
        attr_reader :image_data_url
        sig { returns(String) }
        attr_reader :image_url_png
        sig { returns(String) }
        attr_reader :image_url_svg
      end
      class WechatPayRedirectToAndroidApp < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :app_id
        sig { returns(String) }
        attr_reader :nonce_str
        sig { returns(String) }
        attr_reader :package
        sig { returns(String) }
        attr_reader :partner_id
        sig { returns(String) }
        attr_reader :prepay_id
        sig { returns(String) }
        attr_reader :sign
        sig { returns(String) }
        attr_reader :timestamp
      end
      class WechatPayRedirectToIosApp < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :native_url
      end
      sig { returns(AlipayHandleRedirect) }
      attr_reader :alipay_handle_redirect
      sig { returns(BoletoDisplayDetails) }
      attr_reader :boleto_display_details
      sig { returns(CardAwaitNotification) }
      attr_reader :card_await_notification
      sig { returns(CashappHandleRedirectOrDisplayQrCode) }
      attr_reader :cashapp_handle_redirect_or_display_qr_code
      sig { returns(DisplayBankTransferInstructions) }
      attr_reader :display_bank_transfer_instructions
      sig { returns(KonbiniDisplayDetails) }
      attr_reader :konbini_display_details
      sig { returns(MultibancoDisplayDetails) }
      attr_reader :multibanco_display_details
      sig { returns(OxxoDisplayDetails) }
      attr_reader :oxxo_display_details
      sig { returns(PaynowDisplayQrCode) }
      attr_reader :paynow_display_qr_code
      sig { returns(PixDisplayQrCode) }
      attr_reader :pix_display_qr_code
      sig { returns(PromptpayDisplayQrCode) }
      attr_reader :promptpay_display_qr_code
      sig { returns(RedirectToUrl) }
      attr_reader :redirect_to_url
      sig { returns(SwishHandleRedirectOrDisplayQrCode) }
      attr_reader :swish_handle_redirect_or_display_qr_code
      sig { returns(String) }
      attr_reader :type
      sig { returns(T::Hash[String, T.untyped]) }
      attr_reader :use_stripe_sdk
      sig { returns(VerifyWithMicrodeposits) }
      attr_reader :verify_with_microdeposits
      sig { returns(WechatPayDisplayQrCode) }
      attr_reader :wechat_pay_display_qr_code
      sig { returns(WechatPayRedirectToAndroidApp) }
      attr_reader :wechat_pay_redirect_to_android_app
      sig { returns(WechatPayRedirectToIosApp) }
      attr_reader :wechat_pay_redirect_to_ios_app
    end
    class PaymentDetails < Stripe::StripeObject
      class CarRental < Stripe::StripeObject
        class Affiliate < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :name
        end
        class Delivery < Stripe::StripeObject
          class Recipient < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :email
            sig { returns(String) }
            attr_reader :name
            sig { returns(String) }
            attr_reader :phone
          end
          sig { returns(String) }
          attr_reader :mode
          sig { returns(Recipient) }
          attr_reader :recipient
        end
        class Driver < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :name
        end
        class PickupAddress < Stripe::StripeObject
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
        class ReturnAddress < Stripe::StripeObject
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
        sig { returns(Affiliate) }
        attr_reader :affiliate
        sig { returns(String) }
        attr_reader :booking_number
        sig { returns(String) }
        attr_reader :car_class_code
        sig { returns(String) }
        attr_reader :car_make
        sig { returns(String) }
        attr_reader :car_model
        sig { returns(String) }
        attr_reader :company
        sig { returns(String) }
        attr_reader :customer_service_phone_number
        sig { returns(Integer) }
        attr_reader :days_rented
        sig { returns(Delivery) }
        attr_reader :delivery
        sig { returns(T::Array[Driver]) }
        attr_reader :drivers
        sig { returns(T::Array[String]) }
        attr_reader :extra_charges
        sig { returns(T::Boolean) }
        attr_reader :no_show
        sig { returns(PickupAddress) }
        attr_reader :pickup_address
        sig { returns(Integer) }
        attr_reader :pickup_at
        sig { returns(Integer) }
        attr_reader :rate_amount
        sig { returns(String) }
        attr_reader :rate_interval
        sig { returns(String) }
        attr_reader :renter_name
        sig { returns(ReturnAddress) }
        attr_reader :return_address
        sig { returns(Integer) }
        attr_reader :return_at
        sig { returns(T::Boolean) }
        attr_reader :tax_exempt
      end
      class EventDetails < Stripe::StripeObject
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
        class Affiliate < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :name
        end
        class Delivery < Stripe::StripeObject
          class Recipient < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :email
            sig { returns(String) }
            attr_reader :name
            sig { returns(String) }
            attr_reader :phone
          end
          sig { returns(String) }
          attr_reader :mode
          sig { returns(Recipient) }
          attr_reader :recipient
        end
        sig { returns(T::Boolean) }
        attr_reader :access_controlled_venue
        sig { returns(Address) }
        attr_reader :address
        sig { returns(Affiliate) }
        attr_reader :affiliate
        sig { returns(String) }
        attr_reader :company
        sig { returns(Delivery) }
        attr_reader :delivery
        sig { returns(Integer) }
        attr_reader :ends_at
        sig { returns(String) }
        attr_reader :genre
        sig { returns(String) }
        attr_reader :name
        sig { returns(Integer) }
        attr_reader :starts_at
      end
      class Subscription < Stripe::StripeObject
        class Affiliate < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :name
        end
        class BillingInterval < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :count
          sig { returns(String) }
          attr_reader :interval
        end
        sig { returns(Affiliate) }
        attr_reader :affiliate
        sig { returns(T::Boolean) }
        attr_reader :auto_renewal
        sig { returns(BillingInterval) }
        attr_reader :billing_interval
        sig { returns(Integer) }
        attr_reader :ends_at
        sig { returns(String) }
        attr_reader :name
        sig { returns(Integer) }
        attr_reader :starts_at
      end
      sig { returns(CarRental) }
      attr_reader :car_rental
      sig { returns(EventDetails) }
      attr_reader :event_details
      sig { returns(Subscription) }
      attr_reader :subscription
    end
    class PaymentMethodConfigurationDetails < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :id
      sig { returns(T.nilable(String)) }
      attr_reader :parent
    end
    class PaymentMethodOptions < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :custom_mandate_url
          sig { returns(T.nilable(String)) }
          attr_reader :interval_description
          sig { returns(T.nilable(String)) }
          attr_reader :payment_schedule
          sig { returns(T.nilable(String)) }
          attr_reader :transaction_type
        end
        sig { returns(MandateOptions) }
        attr_reader :mandate_options
        sig { returns(String) }
        attr_reader :setup_future_usage
        sig { returns(String) }
        attr_reader :verification_method
      end
      class Affirm < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
        sig { returns(String) }
        attr_reader :preferred_locale
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class AfterpayClearpay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Alipay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Alma < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
      end
      class AmazonPay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class AuBecsDebit < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class BacsDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject; end
        sig { returns(MandateOptions) }
        attr_reader :mandate_options
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Bancontact < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :preferred_language
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Blik < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Boleto < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :expires_after_days
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Card < Stripe::StripeObject
        class Installments < Stripe::StripeObject
          class AvailablePlan < Stripe::StripeObject
            sig { returns(T.nilable(Integer)) }
            attr_reader :count
            sig { returns(T.nilable(String)) }
            attr_reader :interval
            sig { returns(String) }
            attr_reader :type
          end
          class Plan < Stripe::StripeObject
            sig { returns(T.nilable(Integer)) }
            attr_reader :count
            sig { returns(T.nilable(String)) }
            attr_reader :interval
            sig { returns(String) }
            attr_reader :type
          end
          sig { returns(T.nilable(T::Array[AvailablePlan])) }
          attr_reader :available_plans
          sig { returns(T::Boolean) }
          attr_reader :enabled
          sig { returns(T.nilable(Plan)) }
          attr_reader :plan
        end
        class MandateOptions < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :amount
          sig { returns(String) }
          attr_reader :amount_type
          sig { returns(T.nilable(String)) }
          attr_reader :description
          sig { returns(T.nilable(Integer)) }
          attr_reader :end_date
          sig { returns(String) }
          attr_reader :interval
          sig { returns(T.nilable(Integer)) }
          attr_reader :interval_count
          sig { returns(String) }
          attr_reader :reference
          sig { returns(Integer) }
          attr_reader :start_date
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :supported_types
        end
        class StatementDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :city
            sig { returns(String) }
            attr_reader :country
            sig { returns(String) }
            attr_reader :line1
            sig { returns(String) }
            attr_reader :line2
            sig { returns(String) }
            attr_reader :postal_code
            sig { returns(String) }
            attr_reader :state
          end
          sig { returns(Address) }
          attr_reader :address
          sig { returns(String) }
          attr_reader :phone
        end
        sig { returns(String) }
        attr_reader :capture_method
        sig { returns(T.nilable(Installments)) }
        attr_reader :installments
        sig { returns(T.nilable(MandateOptions)) }
        attr_reader :mandate_options
        sig { returns(T.nilable(String)) }
        attr_reader :network
        sig { returns(String) }
        attr_reader :request_decremental_authorization
        sig { returns(String) }
        attr_reader :request_extended_authorization
        sig { returns(String) }
        attr_reader :request_incremental_authorization
        sig { returns(String) }
        attr_reader :request_multicapture
        sig { returns(String) }
        attr_reader :request_overcapture
        sig { returns(String) }
        attr_reader :request_partial_authorization
        sig { returns(T.nilable(String)) }
        attr_reader :request_three_d_secure
        sig { returns(T::Boolean) }
        attr_reader :require_cvc_recollection
        sig { returns(String) }
        attr_reader :setup_future_usage
        sig { returns(String) }
        attr_reader :statement_descriptor_suffix_kana
        sig { returns(String) }
        attr_reader :statement_descriptor_suffix_kanji
        sig { returns(StatementDetails) }
        attr_reader :statement_details
      end
      class CardPresent < Stripe::StripeObject
        class Routing < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :requested_priority
        end
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :request_extended_authorization
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :request_incremental_authorization_support
        sig { returns(Routing) }
        attr_reader :routing
      end
      class Cashapp < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class CustomerBalance < Stripe::StripeObject
        class BankTransfer < Stripe::StripeObject
          class EuBankTransfer < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :country
          end
          sig { returns(EuBankTransfer) }
          attr_reader :eu_bank_transfer
          sig { returns(T::Array[String]) }
          attr_reader :requested_address_types
          sig { returns(T.nilable(String)) }
          attr_reader :type
        end
        sig { returns(BankTransfer) }
        attr_reader :bank_transfer
        sig { returns(T.nilable(String)) }
        attr_reader :funding_type
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Eps < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Fpx < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Giropay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Gopay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Grabpay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class IdBankTransfer < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_after
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_at
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Ideal < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class InteracPresent < Stripe::StripeObject; end
      class KakaoPay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Klarna < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
        sig { returns(T.nilable(String)) }
        attr_reader :preferred_locale
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Konbini < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :confirmation_number
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_after_days
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_at
        sig { returns(T.nilable(String)) }
        attr_reader :product_description
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class KrCard < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Link < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
        sig { returns(T.nilable(String)) }
        attr_reader :persistent_token
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class MbWay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Mobilepay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Multibanco < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class NaverPay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
      end
      class Oxxo < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :expires_after_days
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class P24 < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Payco < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
      end
      class Paynow < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Paypal < Stripe::StripeObject
        class LineItem < Stripe::StripeObject
          class Tax < Stripe::StripeObject
            sig { returns(Integer) }
            attr_reader :amount
            sig { returns(String) }
            attr_reader :behavior
          end
          sig { returns(String) }
          attr_reader :category
          sig { returns(String) }
          attr_reader :description
          sig { returns(String) }
          attr_reader :name
          sig { returns(Integer) }
          attr_reader :quantity
          sig { returns(String) }
          attr_reader :sku
          sig { returns(String) }
          attr_reader :sold_by
          sig { returns(Tax) }
          attr_reader :tax
          sig { returns(Integer) }
          attr_reader :unit_amount
        end
        sig { returns(String) }
        attr_reader :capture_method
        sig { returns(T::Array[LineItem]) }
        attr_reader :line_items
        sig { returns(T.nilable(String)) }
        attr_reader :preferred_locale
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(T.nilable(String)) }
        attr_reader :reference_id
        sig { returns(String) }
        attr_reader :setup_future_usage
        sig { returns(T::Array[String]) }
        attr_reader :subsellers
      end
      class Payto < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :amount
          sig { returns(T.nilable(String)) }
          attr_reader :amount_type
          sig { returns(T.nilable(String)) }
          attr_reader :end_date
          sig { returns(T.nilable(String)) }
          attr_reader :payment_schedule
          sig { returns(T.nilable(Integer)) }
          attr_reader :payments_per_period
          sig { returns(T.nilable(String)) }
          attr_reader :purpose
        end
        sig { returns(MandateOptions) }
        attr_reader :mandate_options
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Pix < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_after_seconds
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_at
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Promptpay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Qris < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Rechnung < Stripe::StripeObject; end
      class RevolutPay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class SamsungPay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :capture_method
      end
      class SepaDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject; end
        sig { returns(MandateOptions) }
        attr_reader :mandate_options
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Shopeepay < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Sofort < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :preferred_language
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Swish < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :reference
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Twint < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class UsBankAccount < Stripe::StripeObject
        class FinancialConnections < Stripe::StripeObject
          class Filters < Stripe::StripeObject
            sig { returns(T::Array[String]) }
            attr_reader :account_subcategories
            sig { returns(String) }
            attr_reader :institution
          end
          class ManualEntry < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :mode
          end
          sig { returns(Filters) }
          attr_reader :filters
          sig { returns(ManualEntry) }
          attr_reader :manual_entry
          sig { returns(T::Array[String]) }
          attr_reader :permissions
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :prefetch
          sig { returns(String) }
          attr_reader :return_url
        end
        class MandateOptions < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :collection_method
        end
        sig { returns(FinancialConnections) }
        attr_reader :financial_connections
        sig { returns(MandateOptions) }
        attr_reader :mandate_options
        sig { returns(String) }
        attr_reader :preferred_settlement_speed
        sig { returns(String) }
        attr_reader :setup_future_usage
        sig { returns(String) }
        attr_reader :verification_method
      end
      class WechatPay < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :app_id
        sig { returns(T.nilable(String)) }
        attr_reader :client
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      class Zip < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :setup_future_usage
      end
      sig { returns(AcssDebit) }
      attr_reader :acss_debit
      sig { returns(Affirm) }
      attr_reader :affirm
      sig { returns(AfterpayClearpay) }
      attr_reader :afterpay_clearpay
      sig { returns(Alipay) }
      attr_reader :alipay
      sig { returns(Alma) }
      attr_reader :alma
      sig { returns(AmazonPay) }
      attr_reader :amazon_pay
      sig { returns(AuBecsDebit) }
      attr_reader :au_becs_debit
      sig { returns(BacsDebit) }
      attr_reader :bacs_debit
      sig { returns(Bancontact) }
      attr_reader :bancontact
      sig { returns(Blik) }
      attr_reader :blik
      sig { returns(Boleto) }
      attr_reader :boleto
      sig { returns(Card) }
      attr_reader :card
      sig { returns(CardPresent) }
      attr_reader :card_present
      sig { returns(Cashapp) }
      attr_reader :cashapp
      sig { returns(CustomerBalance) }
      attr_reader :customer_balance
      sig { returns(Eps) }
      attr_reader :eps
      sig { returns(Fpx) }
      attr_reader :fpx
      sig { returns(Giropay) }
      attr_reader :giropay
      sig { returns(Gopay) }
      attr_reader :gopay
      sig { returns(Grabpay) }
      attr_reader :grabpay
      sig { returns(IdBankTransfer) }
      attr_reader :id_bank_transfer
      sig { returns(Ideal) }
      attr_reader :ideal
      sig { returns(InteracPresent) }
      attr_reader :interac_present
      sig { returns(KakaoPay) }
      attr_reader :kakao_pay
      sig { returns(Klarna) }
      attr_reader :klarna
      sig { returns(Konbini) }
      attr_reader :konbini
      sig { returns(KrCard) }
      attr_reader :kr_card
      sig { returns(Link) }
      attr_reader :link
      sig { returns(MbWay) }
      attr_reader :mb_way
      sig { returns(Mobilepay) }
      attr_reader :mobilepay
      sig { returns(Multibanco) }
      attr_reader :multibanco
      sig { returns(NaverPay) }
      attr_reader :naver_pay
      sig { returns(Oxxo) }
      attr_reader :oxxo
      sig { returns(P24) }
      attr_reader :p24
      sig { returns(Payco) }
      attr_reader :payco
      sig { returns(Paynow) }
      attr_reader :paynow
      sig { returns(Paypal) }
      attr_reader :paypal
      sig { returns(Payto) }
      attr_reader :payto
      sig { returns(Pix) }
      attr_reader :pix
      sig { returns(Promptpay) }
      attr_reader :promptpay
      sig { returns(Qris) }
      attr_reader :qris
      sig { returns(Rechnung) }
      attr_reader :rechnung
      sig { returns(RevolutPay) }
      attr_reader :revolut_pay
      sig { returns(SamsungPay) }
      attr_reader :samsung_pay
      sig { returns(SepaDebit) }
      attr_reader :sepa_debit
      sig { returns(Shopeepay) }
      attr_reader :shopeepay
      sig { returns(Sofort) }
      attr_reader :sofort
      sig { returns(Swish) }
      attr_reader :swish
      sig { returns(Twint) }
      attr_reader :twint
      sig { returns(UsBankAccount) }
      attr_reader :us_bank_account
      sig { returns(WechatPay) }
      attr_reader :wechat_pay
      sig { returns(Zip) }
      attr_reader :zip
    end
    class Processing < Stripe::StripeObject
      class Card < Stripe::StripeObject
        class CustomerNotification < Stripe::StripeObject
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :approval_requested
          sig { returns(T.nilable(Integer)) }
          attr_reader :completes_at
        end
        sig { returns(CustomerNotification) }
        attr_reader :customer_notification
      end
      sig { returns(Card) }
      attr_reader :card
      sig { returns(String) }
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
    class TransferData < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end
    sig { returns(Integer) }
    # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    attr_reader :amount
    sig { returns(Integer) }
    # Amount that can be captured from this PaymentIntent.
    attr_reader :amount_capturable
    sig { returns(AmountDetails) }
    # Attribute for field amount_details
    attr_reader :amount_details
    sig { returns(Integer) }
    # Amount that this PaymentIntent collects.
    attr_reader :amount_received
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    # ID of the Connect application that created the PaymentIntent.
    attr_reader :application
    sig { returns(T.nilable(Integer)) }
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total payment amount. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    attr_reader :application_fee_amount
    sig { returns(AsyncWorkflows) }
    # Attribute for field async_workflows
    attr_reader :async_workflows
    sig { returns(T.nilable(AutomaticPaymentMethods)) }
    # Settings to configure compatible payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods)
    attr_reader :automatic_payment_methods
    sig { returns(T.nilable(Integer)) }
    # Populated when `status` is `canceled`, this is the time at which the PaymentIntent was canceled. Measured in seconds since the Unix epoch.
    attr_reader :canceled_at
    sig { returns(T.nilable(String)) }
    # Reason for cancellation of this PaymentIntent, either user-provided (`duplicate`, `fraudulent`, `requested_by_customer`, or `abandoned`) or generated by Stripe internally (`failed_invoice`, `void_invoice`, or `automatic`).
    attr_reader :cancellation_reason
    sig { returns(String) }
    # Controls when the funds will be captured from the customer's account.
    attr_reader :capture_method
    sig { returns(T.nilable(String)) }
    # The client secret of this PaymentIntent. Used for client-side retrieval using a publishable key.
    #
    # The client secret can be used to complete a payment from your frontend. It should not be stored, logged, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
    #
    # Refer to our docs to [accept a payment](https://stripe.com/docs/payments/accept-a-payment?ui=elements) and learn about how `client_secret` should be handled.
    attr_reader :client_secret
    sig { returns(String) }
    # Describes whether we can confirm this PaymentIntent automatically, or if it requires customer action to confirm the payment.
    attr_reader :confirmation_method
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    # ID of the Customer this PaymentIntent belongs to, if one exists.
    #
    # Payment methods attached to other Customers cannot be used with this PaymentIntent.
    #
    # If [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
    attr_reader :customer
    sig { returns(T.nilable(String)) }
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    # ID of the invoice that created this PaymentIntent, if it exists.
    attr_reader :invoice
    sig { returns(T.nilable(LastPaymentError)) }
    # The payment error encountered in the previous PaymentIntent confirmation. It will be cleared if the PaymentIntent is later updated for any reason.
    attr_reader :last_payment_error
    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    # ID of the latest [Charge object](https://stripe.com/docs/api/charges) created by this PaymentIntent. This property is `null` until PaymentIntent confirmation is attempted.
    attr_reader :latest_charge
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T::Hash[String, String]) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Learn more about [storing information in metadata](https://stripe.com/docs/payments/payment-intents/creating-payment-intents#storing-information-in-metadata).
    attr_reader :metadata
    sig { returns(T.nilable(NextAction)) }
    # If present, this property tells you what actions you need to take in order for your customer to fulfill a payment using the provided source.
    attr_reader :next_action
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    # The account (if any) for which the funds of the PaymentIntent are intended. See the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts) for details.
    attr_reader :on_behalf_of
    sig { returns(PaymentDetails) }
    # Attribute for field payment_details
    attr_reader :payment_details
    sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
    # ID of the payment method used in this PaymentIntent.
    attr_reader :payment_method
    sig { returns(T.nilable(PaymentMethodConfigurationDetails)) }
    # Information about the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) used for this PaymentIntent.
    attr_reader :payment_method_configuration_details
    sig { returns(T.nilable(PaymentMethodOptions)) }
    # Payment-method-specific configuration for this PaymentIntent.
    attr_reader :payment_method_options
    sig { returns(T::Array[String]) }
    # The list of payment method types (e.g. card) that this PaymentIntent is allowed to use.
    attr_reader :payment_method_types
    sig { returns(T.nilable(Processing)) }
    # If present, this property tells you about the processing state of the payment.
    attr_reader :processing
    sig { returns(T.nilable(String)) }
    # Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
    attr_reader :receipt_email
    sig { returns(T.nilable(T.any(String, Stripe::Review))) }
    # ID of the review associated with this PaymentIntent, if any.
    attr_reader :review
    sig { returns(String) }
    # Indicates whether confirmation for this PaymentIntent using a secret key is `required` or `optional`.
    attr_reader :secret_key_confirmation
    sig { returns(T.nilable(String)) }
    # Indicates that you intend to make future payments with this PaymentIntent's payment method.
    #
    # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
    #
    # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
    #
    # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
    attr_reader :setup_future_usage
    sig { returns(T.nilable(Shipping)) }
    # Shipping information for this PaymentIntent.
    attr_reader :shipping
    sig {
      returns(T.nilable(T.any(String, T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source))))
     }
    # This is a legacy field that will be removed in the future. It is the ID of the Source object that is associated with this PaymentIntent, if one was supplied.
    attr_reader :source
    sig { returns(T.nilable(String)) }
    # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
    #
    # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
    attr_reader :statement_descriptor
    sig { returns(T.nilable(String)) }
    # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
    attr_reader :statement_descriptor_suffix
    sig { returns(String) }
    # Status of this PaymentIntent, one of `requires_payment_method`, `requires_confirmation`, `requires_action`, `processing`, `requires_capture`, `canceled`, or `succeeded`. Read more about each PaymentIntent [status](https://stripe.com/docs/payments/intents#intent-statuses).
    attr_reader :status
    sig { returns(T.nilable(TransferData)) }
    # The data that automatically creates a Transfer after the payment finalizes. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    attr_reader :transfer_data
    sig { returns(T.nilable(String)) }
    # A string that identifies the resulting payment as part of a group. Learn more about the [use case for connected accounts](https://stripe.com/docs/connect/separate-charges-and-transfers).
    attr_reader :transfer_group
  end
end