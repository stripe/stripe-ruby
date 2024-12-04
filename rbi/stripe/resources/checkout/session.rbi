# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Checkout
    # A Checkout Session represents your customer's session as they pay for
    # one-time purchases or subscriptions through [Checkout](https://stripe.com/docs/payments/checkout)
    # or [Payment Links](https://stripe.com/docs/payments/payment-links). We recommend creating a
    # new Session each time your customer attempts to pay.
    #
    # Once payment is successful, the Checkout Session will contain a reference
    # to the [Customer](https://stripe.com/docs/api/customers), and either the successful
    # [PaymentIntent](https://stripe.com/docs/api/payment_intents) or an active
    # [Subscription](https://stripe.com/docs/api/subscriptions).
    #
    # You can create a Checkout Session on your server and redirect to its URL
    # to begin Checkout.
    #
    # Related guide: [Checkout quickstart](https://stripe.com/docs/checkout/quickstart)
    class Session < APIResource
      class AdaptivePricing < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :enabled
      end
      class AfterExpiration < Stripe::StripeObject
        class Recovery < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :allow_promotion_codes
          sig { returns(T::Boolean) }
          attr_reader :enabled
          sig { returns(T.nilable(Integer)) }
          attr_reader :expires_at
          sig { returns(T.nilable(String)) }
          attr_reader :url
        end
        sig { returns(T.nilable(Recovery)) }
        attr_reader :recovery
      end
      class AutomaticTax < Stripe::StripeObject
        class Liability < Stripe::StripeObject
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :account
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(T.nilable(Liability)) }
        attr_reader :liability
        sig { returns(T.nilable(String)) }
        attr_reader :status
      end
      class CollectedInformation < Stripe::StripeObject
        class ShippingDetails < Stripe::StripeObject
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
        class TaxId < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
          sig { returns(T.nilable(String)) }
          attr_reader :value
        end
        sig { returns(T.nilable(String)) }
        attr_reader :business_name
        sig { returns(T.nilable(String)) }
        attr_reader :email
        sig { returns(T.nilable(String)) }
        attr_reader :phone
        sig { returns(T.nilable(ShippingDetails)) }
        attr_reader :shipping_details
        sig { returns(T.nilable(T::Array[TaxId])) }
        attr_reader :tax_ids
      end
      class Consent < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :promotions
        sig { returns(T.nilable(String)) }
        attr_reader :terms_of_service
      end
      class ConsentCollection < Stripe::StripeObject
        class PaymentMethodReuseAgreement < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :position
        end
        sig { returns(T.nilable(PaymentMethodReuseAgreement)) }
        attr_reader :payment_method_reuse_agreement
        sig { returns(T.nilable(String)) }
        attr_reader :promotions
        sig { returns(T.nilable(String)) }
        attr_reader :terms_of_service
      end
      class CurrencyConversion < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :amount_subtotal
        sig { returns(Integer) }
        attr_reader :amount_total
        sig { returns(String) }
        attr_reader :fx_rate
        sig { returns(String) }
        attr_reader :source_currency
      end
      class CustomField < Stripe::StripeObject
        class Dropdown < Stripe::StripeObject
          class Option < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :label
            sig { returns(String) }
            attr_reader :value
          end
          sig { returns(T.nilable(String)) }
          attr_reader :default_value
          sig { returns(T::Array[Option]) }
          attr_reader :options
          sig { returns(T.nilable(String)) }
          attr_reader :value
        end
        class Label < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :custom
          sig { returns(String) }
          attr_reader :type
        end
        class Numeric < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :default_value
          sig { returns(T.nilable(Integer)) }
          attr_reader :maximum_length
          sig { returns(T.nilable(Integer)) }
          attr_reader :minimum_length
          sig { returns(T.nilable(String)) }
          attr_reader :value
        end
        class Text < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :default_value
          sig { returns(T.nilable(Integer)) }
          attr_reader :maximum_length
          sig { returns(T.nilable(Integer)) }
          attr_reader :minimum_length
          sig { returns(T.nilable(String)) }
          attr_reader :value
        end
        sig { returns(Dropdown) }
        attr_reader :dropdown
        sig { returns(String) }
        attr_reader :key
        sig { returns(Label) }
        attr_reader :label
        sig { returns(Numeric) }
        attr_reader :numeric
        sig { returns(T::Boolean) }
        attr_reader :optional
        sig { returns(Text) }
        attr_reader :text
        sig { returns(String) }
        attr_reader :type
      end
      class CustomText < Stripe::StripeObject
        class AfterSubmit < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :message
        end
        class ShippingAddress < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :message
        end
        class Submit < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :message
        end
        class TermsOfServiceAcceptance < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :message
        end
        sig { returns(T.nilable(AfterSubmit)) }
        attr_reader :after_submit
        sig { returns(T.nilable(ShippingAddress)) }
        attr_reader :shipping_address
        sig { returns(T.nilable(Submit)) }
        attr_reader :submit
        sig { returns(T.nilable(TermsOfServiceAcceptance)) }
        attr_reader :terms_of_service_acceptance
      end
      class CustomerDetails < Stripe::StripeObject
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
        class TaxId < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
          sig { returns(T.nilable(String)) }
          attr_reader :value
        end
        sig { returns(T.nilable(Address)) }
        attr_reader :address
        sig { returns(T.nilable(String)) }
        attr_reader :email
        sig { returns(T.nilable(String)) }
        attr_reader :name
        sig { returns(T.nilable(String)) }
        attr_reader :phone
        sig { returns(T.nilable(String)) }
        attr_reader :tax_exempt
        sig { returns(T.nilable(T::Array[TaxId])) }
        attr_reader :tax_ids
      end
      class InvoiceCreation < Stripe::StripeObject
        class InvoiceData < Stripe::StripeObject
          class CustomField < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :name
            sig { returns(String) }
            attr_reader :value
          end
          class Issuer < Stripe::StripeObject
            sig { returns(T.any(String, Stripe::Account)) }
            attr_reader :account
            sig { returns(String) }
            attr_reader :type
          end
          class RenderingOptions < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :amount_tax_display
          end
          sig { returns(T.nilable(T::Array[T.any(String, Stripe::TaxId)])) }
          attr_reader :account_tax_ids
          sig { returns(T.nilable(T::Array[CustomField])) }
          attr_reader :custom_fields
          sig { returns(T.nilable(String)) }
          attr_reader :description
          sig { returns(T.nilable(String)) }
          attr_reader :footer
          sig { returns(T.nilable(Issuer)) }
          attr_reader :issuer
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_reader :metadata
          sig { returns(T.nilable(RenderingOptions)) }
          attr_reader :rendering_options
        end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(InvoiceData) }
        attr_reader :invoice_data
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
            sig { returns(T::Array[String]) }
            attr_reader :default_for
            sig { returns(T.nilable(String)) }
            attr_reader :interval_description
            sig { returns(T.nilable(String)) }
            attr_reader :payment_schedule
            sig { returns(T.nilable(String)) }
            attr_reader :transaction_type
          end
          sig { returns(String) }
          attr_reader :currency
          sig { returns(MandateOptions) }
          attr_reader :mandate_options
          sig { returns(String) }
          attr_reader :setup_future_usage
          sig { returns(String) }
          attr_reader :verification_method
        end
        class Affirm < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class AfterpayClearpay < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Alipay < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class AmazonPay < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class AuBecsDebit < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class BacsDebit < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :reference_prefix
          end
          sig { returns(MandateOptions) }
          attr_reader :mandate_options
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Bancontact < Stripe::StripeObject
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
            sig { returns(T::Boolean) }
            attr_reader :enabled
          end
          sig { returns(Installments) }
          attr_reader :installments
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
          attr_reader :request_three_d_secure
          sig { returns(String) }
          attr_reader :setup_future_usage
          sig { returns(String) }
          attr_reader :statement_descriptor_suffix_kana
          sig { returns(String) }
          attr_reader :statement_descriptor_suffix_kanji
        end
        class Cashapp < Stripe::StripeObject
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
        class Grabpay < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Ideal < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class KakaoPay < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :capture_method
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Klarna < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Konbini < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :expires_after_days
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
          attr_reader :setup_future_usage
        end
        class Mobilepay < Stripe::StripeObject
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
          sig { returns(String) }
          attr_reader :capture_method
          sig { returns(T.nilable(String)) }
          attr_reader :preferred_locale
          sig { returns(T.nilable(String)) }
          attr_reader :reference
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
            sig { returns(T.nilable(String)) }
            attr_reader :start_date
          end
          sig { returns(MandateOptions) }
          attr_reader :mandate_options
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Pix < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :expires_after_seconds
        end
        class RevolutPay < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class SamsungPay < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :capture_method
        end
        class SepaDebit < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :reference_prefix
          end
          sig { returns(MandateOptions) }
          attr_reader :mandate_options
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Sofort < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :setup_future_usage
        end
        class Swish < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :reference
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
          sig { returns(FinancialConnections) }
          attr_reader :financial_connections
          sig { returns(String) }
          attr_reader :setup_future_usage
          sig { returns(String) }
          attr_reader :verification_method
        end
        sig { returns(AcssDebit) }
        attr_reader :acss_debit
        sig { returns(Affirm) }
        attr_reader :affirm
        sig { returns(AfterpayClearpay) }
        attr_reader :afterpay_clearpay
        sig { returns(Alipay) }
        attr_reader :alipay
        sig { returns(AmazonPay) }
        attr_reader :amazon_pay
        sig { returns(AuBecsDebit) }
        attr_reader :au_becs_debit
        sig { returns(BacsDebit) }
        attr_reader :bacs_debit
        sig { returns(Bancontact) }
        attr_reader :bancontact
        sig { returns(Boleto) }
        attr_reader :boleto
        sig { returns(Card) }
        attr_reader :card
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
        sig { returns(Grabpay) }
        attr_reader :grabpay
        sig { returns(Ideal) }
        attr_reader :ideal
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
        sig { returns(RevolutPay) }
        attr_reader :revolut_pay
        sig { returns(SamsungPay) }
        attr_reader :samsung_pay
        sig { returns(SepaDebit) }
        attr_reader :sepa_debit
        sig { returns(Sofort) }
        attr_reader :sofort
        sig { returns(Swish) }
        attr_reader :swish
        sig { returns(UsBankAccount) }
        attr_reader :us_bank_account
      end
      class Permissions < Stripe::StripeObject
        class Update < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :line_items
          sig { returns(T.nilable(String)) }
          attr_reader :shipping_details
        end
        sig { returns(T.nilable(Update)) }
        attr_reader :update
      end
      class PhoneNumberCollection < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :enabled
      end
      class SavedPaymentMethodOptions < Stripe::StripeObject
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allow_redisplay_filters
        sig { returns(T.nilable(String)) }
        attr_reader :payment_method_remove
        sig { returns(T.nilable(String)) }
        attr_reader :payment_method_save
      end
      class ShippingAddressCollection < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :allowed_countries
      end
      class ShippingCost < Stripe::StripeObject
        class Tax < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :amount
          sig { returns(Stripe::TaxRate) }
          attr_reader :rate
          sig { returns(T.nilable(String)) }
          attr_reader :taxability_reason
          sig { returns(T.nilable(Integer)) }
          attr_reader :taxable_amount
        end
        sig { returns(Integer) }
        attr_reader :amount_subtotal
        sig { returns(Integer) }
        attr_reader :amount_tax
        sig { returns(Integer) }
        attr_reader :amount_total
        sig { returns(T.nilable(T.any(String, Stripe::ShippingRate))) }
        attr_reader :shipping_rate
        sig { returns(T::Array[Tax]) }
        attr_reader :taxes
      end
      class ShippingDetails < Stripe::StripeObject
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
      class ShippingOption < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :shipping_amount
        sig { returns(T.any(String, Stripe::ShippingRate)) }
        attr_reader :shipping_rate
      end
      class TaxIdCollection < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(String) }
        attr_reader :required
      end
      class TotalDetails < Stripe::StripeObject
        class Breakdown < Stripe::StripeObject
          class Discount < Stripe::StripeObject
            sig { returns(Integer) }
            attr_reader :amount
            sig { returns(Stripe::Discount) }
            attr_reader :discount
          end
          class Tax < Stripe::StripeObject
            sig { returns(Integer) }
            attr_reader :amount
            sig { returns(Stripe::TaxRate) }
            attr_reader :rate
            sig { returns(T.nilable(String)) }
            attr_reader :taxability_reason
            sig { returns(T.nilable(Integer)) }
            attr_reader :taxable_amount
          end
          sig { returns(T::Array[Discount]) }
          attr_reader :discounts
          sig { returns(T::Array[Tax]) }
          attr_reader :taxes
        end
        sig { returns(Integer) }
        attr_reader :amount_discount
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount_shipping
        sig { returns(Integer) }
        attr_reader :amount_tax
        sig { returns(Breakdown) }
        attr_reader :breakdown
      end
      sig { returns(T.nilable(AdaptivePricing)) }
      # Settings for price localization with [Adaptive Pricing](https://docs.stripe.com/payments/checkout/adaptive-pricing).
      attr_reader :adaptive_pricing
      sig { returns(T.nilable(AfterExpiration)) }
      # When set, provides configuration for actions to take if this Checkout Session expires.
      attr_reader :after_expiration
      sig { returns(T.nilable(T::Boolean)) }
      # Enables user redeemable promotion codes.
      attr_reader :allow_promotion_codes
      sig { returns(T.nilable(Integer)) }
      # Total of all items before discounts or taxes are applied.
      attr_reader :amount_subtotal
      sig { returns(T.nilable(Integer)) }
      # Total of all items after discounts and taxes are applied.
      attr_reader :amount_total
      sig { returns(AutomaticTax) }
      # Attribute for field automatic_tax
      attr_reader :automatic_tax
      sig { returns(T.nilable(String)) }
      # Describes whether Checkout should collect the customer's billing address. Defaults to `auto`.
      attr_reader :billing_address_collection
      sig { returns(T.nilable(String)) }
      # If set, Checkout displays a back button and customers will be directed to this URL if they decide to cancel payment and return to your website.
      attr_reader :cancel_url
      sig { returns(T.nilable(String)) }
      # A unique string to reference the Checkout Session. This can be a
      # customer ID, a cart ID, or similar, and can be used to reconcile the
      # Session with your internal systems.
      attr_reader :client_reference_id
      sig { returns(T.nilable(String)) }
      # The client secret of the Session. Use this with [initCheckout](https://stripe.com/docs/js/custom_checkout/init) on your front end.
      attr_reader :client_secret
      sig { returns(T.nilable(CollectedInformation)) }
      # Information about the customer collected within the Checkout Session.
      attr_reader :collected_information
      sig { returns(T.nilable(Consent)) }
      # Results of `consent_collection` for this session.
      attr_reader :consent
      sig { returns(T.nilable(ConsentCollection)) }
      # When set, provides configuration for the Checkout Session to gather active consent from customers.
      attr_reader :consent_collection
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(T.nilable(String)) }
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      sig { returns(T.nilable(CurrencyConversion)) }
      # Currency conversion details for [Adaptive Pricing](https://docs.stripe.com/payments/checkout/adaptive-pricing) sessions
      attr_reader :currency_conversion
      sig { returns(T::Array[CustomField]) }
      # Collect additional information from your customer using custom fields. Up to 3 fields are supported.
      attr_reader :custom_fields
      sig { returns(CustomText) }
      # Attribute for field custom_text
      attr_reader :custom_text
      sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
      # The ID of the customer for this Session.
      # For Checkout Sessions in `subscription` mode or Checkout Sessions with `customer_creation` set as `always` in `payment` mode, Checkout
      # will create a new customer object based on information provided
      # during the payment flow unless an existing customer was provided when
      # the Session was created.
      attr_reader :customer
      sig { returns(T.nilable(String)) }
      # Configure whether a Checkout Session creates a Customer when the Checkout Session completes.
      attr_reader :customer_creation
      sig { returns(T.nilable(CustomerDetails)) }
      # The customer details including the customer's tax exempt status and the customer's tax IDs. Customer's address details are not present on Sessions in `setup` mode.
      attr_reader :customer_details
      sig { returns(T.nilable(String)) }
      # If provided, this value will be used when the Customer object is created.
      # If not provided, customers will be asked to enter their email address.
      # Use this parameter to prefill customer data if you already have an email
      # on file. To access information about the customer once the payment flow is
      # complete, use the `customer` attribute.
      attr_reader :customer_email
      sig { returns(Integer) }
      # The timestamp at which the Checkout Session will expire.
      attr_reader :expires_at
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
      # ID of the invoice created by the Checkout Session, if it exists.
      attr_reader :invoice
      sig { returns(T.nilable(InvoiceCreation)) }
      # Details on the state of invoice creation for the Checkout Session.
      attr_reader :invoice_creation
      sig { returns(Stripe::ListObject) }
      # The line items purchased by the customer.
      attr_reader :line_items
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T.nilable(String)) }
      # The IETF language tag of the locale Checkout is displayed in. If blank or `auto`, the browser's locale is used.
      attr_reader :locale
      sig { returns(T.nilable(T::Hash[String, String])) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # The mode of the Checkout Session.
      attr_reader :mode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
      # The ID of the PaymentIntent for Checkout Sessions in `payment` mode. You can't confirm or cancel the PaymentIntent for a Checkout Session. To cancel, [expire the Checkout Session](https://stripe.com/docs/api/checkout/sessions/expire) instead.
      attr_reader :payment_intent
      sig { returns(T.nilable(T.any(String, Stripe::PaymentLink))) }
      # The ID of the Payment Link that created this Session.
      attr_reader :payment_link
      sig { returns(T.nilable(String)) }
      # Configure whether a Checkout Session should collect a payment method. Defaults to `always`.
      attr_reader :payment_method_collection
      sig { returns(T.nilable(PaymentMethodConfigurationDetails)) }
      # Information about the payment method configuration used for this Checkout session if using dynamic payment methods.
      attr_reader :payment_method_configuration_details
      sig { returns(T.nilable(PaymentMethodOptions)) }
      # Payment-method-specific configuration for the PaymentIntent or SetupIntent of this CheckoutSession.
      attr_reader :payment_method_options
      sig { returns(T::Array[String]) }
      # A list of the types of payment methods (e.g. card) this Checkout
      # Session is allowed to accept.
      attr_reader :payment_method_types
      sig { returns(String) }
      # The payment status of the Checkout Session, one of `paid`, `unpaid`, or `no_payment_required`.
      # You can use this value to decide when to fulfill your customer's order.
      attr_reader :payment_status
      sig { returns(T.nilable(Permissions)) }
      # This property is used to set up permissions for various actions (e.g., update) on the CheckoutSession object.
      #
      # For specific permissions, please refer to their dedicated subsections, such as `permissions.update.shipping_details`.
      attr_reader :permissions
      sig { returns(PhoneNumberCollection) }
      # Attribute for field phone_number_collection
      attr_reader :phone_number_collection
      sig { returns(T.nilable(String)) }
      # The ID of the original expired Checkout Session that triggered the recovery flow.
      attr_reader :recovered_from
      sig { returns(String) }
      # This parameter applies to `ui_mode: embedded`. Learn more about the [redirect behavior](https://stripe.com/docs/payments/checkout/custom-success-page?payment-ui=embedded-form) of embedded sessions. Defaults to `always`.
      attr_reader :redirect_on_completion
      sig { returns(String) }
      # Applies to Checkout Sessions with `ui_mode: embedded` or `ui_mode: custom`. The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site.
      attr_reader :return_url
      sig { returns(T.nilable(SavedPaymentMethodOptions)) }
      # Controls saved payment method settings for the session. Only available in `payment` and `subscription` mode.
      attr_reader :saved_payment_method_options
      sig { returns(T.nilable(T.any(String, Stripe::SetupIntent))) }
      # The ID of the SetupIntent for Checkout Sessions in `setup` mode. You can't confirm or cancel the SetupIntent for a Checkout Session. To cancel, [expire the Checkout Session](https://stripe.com/docs/api/checkout/sessions/expire) instead.
      attr_reader :setup_intent
      sig { returns(T.nilable(ShippingAddressCollection)) }
      # When set, provides configuration for Checkout to collect a shipping address from a customer.
      attr_reader :shipping_address_collection
      sig { returns(T.nilable(ShippingCost)) }
      # The details of the customer cost of shipping, including the customer chosen ShippingRate.
      attr_reader :shipping_cost
      sig { returns(T.nilable(ShippingDetails)) }
      # Shipping information for this Checkout Session.
      attr_reader :shipping_details
      sig { returns(T::Array[ShippingOption]) }
      # The shipping rate options applied to this Session.
      attr_reader :shipping_options
      sig { returns(T.nilable(String)) }
      # The status of the Checkout Session, one of `open`, `complete`, or `expired`.
      attr_reader :status
      sig { returns(T.nilable(String)) }
      # Describes the type of transaction being performed by Checkout in order to customize
      # relevant text on the page, such as the submit button. `submit_type` can only be
      # specified on Checkout Sessions in `payment` mode. If blank or `auto`, `pay` is used.
      attr_reader :submit_type
      sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
      # The ID of the subscription for Checkout Sessions in `subscription` mode.
      attr_reader :subscription
      sig { returns(T.nilable(String)) }
      # The URL the customer will be directed to after the payment or
      # subscription creation is successful.
      attr_reader :success_url
      sig { returns(TaxIdCollection) }
      # Attribute for field tax_id_collection
      attr_reader :tax_id_collection
      sig { returns(T.nilable(TotalDetails)) }
      # Tax and discount details for the computed total amount.
      attr_reader :total_details
      sig { returns(T.nilable(String)) }
      # The UI mode of the Session. Defaults to `hosted`.
      attr_reader :ui_mode
      sig { returns(T.nilable(String)) }
      # The URL to the Checkout Session. Redirect customers to this URL to take them to Checkout. If you’re using [Custom Domains](https://stripe.com/docs/payments/checkout/custom-domains), the URL will use your subdomain. Otherwise, it’ll use `checkout.stripe.com.`
      # This value is only present when the session is active.
      attr_reader :url
    end
  end
end