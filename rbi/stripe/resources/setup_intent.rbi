# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A SetupIntent guides you through the process of setting up and saving a customer's payment credentials for future payments.
  # For example, you can use a SetupIntent to set up and save your customer's card without immediately collecting a payment.
  # Later, you can use [PaymentIntents](https://stripe.com/docs/api#payment_intents) to drive the payment flow.
  #
  # Create a SetupIntent when you're ready to collect your customer's payment credentials.
  # Don't maintain long-lived, unconfirmed SetupIntents because they might not be valid.
  # The SetupIntent transitions through multiple [statuses](https://docs.stripe.com/payments/intents#intent-statuses) as it guides
  # you through the setup process.
  #
  # Successful SetupIntents result in payment credentials that are optimized for future payments.
  # For example, cardholders in [certain regions](https://stripe.com/guides/strong-customer-authentication) might need to be run through
  # [Strong Customer Authentication](https://docs.stripe.com/strong-customer-authentication) during payment method collection
  # to streamline later [off-session payments](https://docs.stripe.com/payments/setup-intents).
  # If you use the SetupIntent with a [Customer](https://stripe.com/docs/api#setup_intent_object-customer),
  # it automatically attaches the resulting payment method to that Customer after successful setup.
  # We recommend using SetupIntents or [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) on
  # PaymentIntents to save payment methods to prevent saving invalid or unoptimized payment methods.
  #
  # By using SetupIntents, you can reduce friction for your customers, even as regulations change over time.
  #
  # Related guide: [Setup Intents API](https://docs.stripe.com/payments/setup-intents)
  class SetupIntent < APIResource
    class AutomaticPaymentMethods < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :allow_redirects
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enabled
    end
    class LastSetupError < Stripe::StripeObject
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
      class RedirectToUrl < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :return_url
        sig { returns(T.nilable(String)) }
        attr_reader :url
      end
      class VerifyWithMicrodeposits < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :arrival_date
        sig { returns(String) }
        attr_reader :hosted_verification_url
        sig { returns(T.nilable(String)) }
        attr_reader :microdeposit_type
      end
      sig { returns(CashappHandleRedirectOrDisplayQrCode) }
      attr_reader :cashapp_handle_redirect_or_display_qr_code
      sig { returns(RedirectToUrl) }
      attr_reader :redirect_to_url
      sig { returns(String) }
      attr_reader :type
      sig { returns(T::Hash[String, T.untyped]) }
      attr_reader :use_stripe_sdk
      sig { returns(VerifyWithMicrodeposits) }
      attr_reader :verify_with_microdeposits
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
        sig { returns(T.nilable(String)) }
        attr_reader :currency
        sig { returns(MandateOptions) }
        attr_reader :mandate_options
        sig { returns(String) }
        attr_reader :verification_method
      end
      class AmazonPay < Stripe::StripeObject; end
      class BacsDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject; end
        sig { returns(MandateOptions) }
        attr_reader :mandate_options
      end
      class Card < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :amount
          sig { returns(String) }
          attr_reader :amount_type
          sig { returns(String) }
          attr_reader :currency
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
        sig { returns(T.nilable(MandateOptions)) }
        attr_reader :mandate_options
        sig { returns(T.nilable(String)) }
        attr_reader :network
        sig { returns(T.nilable(String)) }
        attr_reader :request_three_d_secure
      end
      class CardPresent < Stripe::StripeObject; end
      class Link < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :persistent_token
      end
      class Paypal < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :billing_agreement_id
        sig { returns(T.nilable(String)) }
        attr_reader :currency
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
      end
      class SepaDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject; end
        sig { returns(MandateOptions) }
        attr_reader :mandate_options
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
        attr_reader :verification_method
      end
      sig { returns(AcssDebit) }
      attr_reader :acss_debit
      sig { returns(AmazonPay) }
      attr_reader :amazon_pay
      sig { returns(BacsDebit) }
      attr_reader :bacs_debit
      sig { returns(Card) }
      attr_reader :card
      sig { returns(CardPresent) }
      attr_reader :card_present
      sig { returns(Link) }
      attr_reader :link
      sig { returns(Paypal) }
      attr_reader :paypal
      sig { returns(Payto) }
      attr_reader :payto
      sig { returns(SepaDebit) }
      attr_reader :sepa_debit
      sig { returns(UsBankAccount) }
      attr_reader :us_bank_account
    end
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    # ID of the Connect application that created the SetupIntent.
    attr_reader :application
    sig { returns(T::Boolean) }
    # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
    #
    # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
    attr_reader :attach_to_self
    sig { returns(T.nilable(AutomaticPaymentMethods)) }
    # Settings for dynamic payment methods compatible with this Setup Intent
    attr_reader :automatic_payment_methods
    sig { returns(T.nilable(String)) }
    # Reason for cancellation of this SetupIntent, one of `abandoned`, `requested_by_customer`, or `duplicate`.
    attr_reader :cancellation_reason
    sig { returns(T.nilable(String)) }
    # The client secret of this SetupIntent. Used for client-side retrieval using a publishable key.
    #
    # The client secret can be used to complete payment setup from your frontend. It should not be stored, logged, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
    attr_reader :client_secret
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    # ID of the Customer this SetupIntent belongs to, if one exists.
    #
    # If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
    attr_reader :customer
    sig { returns(T.nilable(String)) }
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    sig { returns(T.nilable(T::Array[String])) }
    # Indicates the directions of money movement for which this payment method is intended to be used.
    #
    # Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
    attr_reader :flow_directions
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.nilable(LastSetupError)) }
    # The error encountered in the previous SetupIntent confirmation.
    attr_reader :last_setup_error
    sig { returns(T.nilable(T.any(String, Stripe::SetupAttempt))) }
    # The most recent SetupAttempt for this SetupIntent.
    attr_reader :latest_attempt
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
    # ID of the multi use Mandate generated by the SetupIntent.
    attr_reader :mandate
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(T.nilable(NextAction)) }
    # If present, this property tells you what actions you need to take in order for your customer to continue payment setup.
    attr_reader :next_action
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    # The account (if any) for which the setup is intended.
    attr_reader :on_behalf_of
    sig { returns(T.nilable(T.any(String, Stripe::PaymentMethod))) }
    # ID of the payment method used with this SetupIntent. If the payment method is `card_present` and isn't a digital wallet, then the [generated_card](https://docs.stripe.com/api/setup_attempts/object#setup_attempt_object-payment_method_details-card_present-generated_card) associated with the `latest_attempt` is attached to the Customer instead.
    attr_reader :payment_method
    sig { returns(T.nilable(PaymentMethodConfigurationDetails)) }
    # Information about the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) used for this Setup Intent.
    attr_reader :payment_method_configuration_details
    sig { returns(T.nilable(PaymentMethodOptions)) }
    # Payment method-specific configuration for this SetupIntent.
    attr_reader :payment_method_options
    sig { returns(T::Array[String]) }
    # The list of payment method types (e.g. card) that this SetupIntent is allowed to set up.
    attr_reader :payment_method_types
    sig { returns(T.nilable(T.any(String, Stripe::Mandate))) }
    # ID of the single_use Mandate generated by the SetupIntent.
    attr_reader :single_use_mandate
    sig { returns(String) }
    # [Status](https://stripe.com/docs/payments/intents#intent-statuses) of this SetupIntent, one of `requires_payment_method`, `requires_confirmation`, `requires_action`, `processing`, `canceled`, or `succeeded`.
    attr_reader :status
    sig { returns(String) }
    # Indicates how the payment method is intended to be used in the future.
    #
    # Use `on_session` if you intend to only reuse the payment method when the customer is in your checkout flow. Use `off_session` if your customer may or may not be in your checkout flow. If not provided, this value defaults to `off_session`.
    attr_reader :usage
  end
end