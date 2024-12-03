# File generated from our OpenAPI spec
# frozen_string_literal: true

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
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "setup_intent"
    def self.object_name
      "setup_intent"
    end

    class AutomaticPaymentMethods < Stripe::StripeObject
      attr_reader :allow_redirects, :enabled
    end

    class LastSetupError < Stripe::StripeObject
      attr_reader :charge, :code, :decline_code, :doc_url, :message, :network_advice_code, :network_decline_code, :param, :payment_intent, :payment_method, :payment_method_type, :request_log_url, :setup_intent, :source, :type
    end

    class NextAction < Stripe::StripeObject
      class CashappHandleRedirectOrDisplayQrCode < Stripe::StripeObject
        class QrCode < Stripe::StripeObject
          attr_reader :expires_at, :image_url_png, :image_url_svg
        end
        attr_reader :hosted_instructions_url, :mobile_auth_url, :qr_code
      end

      class RedirectToUrl < Stripe::StripeObject
        attr_reader :return_url, :url
      end

      class VerifyWithMicrodeposits < Stripe::StripeObject
        attr_reader :arrival_date, :hosted_verification_url, :microdeposit_type
      end
      attr_reader :cashapp_handle_redirect_or_display_qr_code, :redirect_to_url, :type, :use_stripe_sdk, :verify_with_microdeposits
    end

    class PaymentMethodConfigurationDetails < Stripe::StripeObject
      attr_reader :id, :parent
    end

    class PaymentMethodOptions < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          attr_reader :custom_mandate_url, :default_for, :interval_description, :payment_schedule, :transaction_type
        end
        attr_reader :currency, :mandate_options, :verification_method
      end

      class AmazonPay < Stripe::StripeObject; end

      class BacsDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject; end
        attr_reader :mandate_options
      end

      class Card < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          attr_reader :amount, :amount_type, :currency, :description, :end_date, :interval, :interval_count, :reference, :start_date, :supported_types
        end
        attr_reader :mandate_options, :network, :request_three_d_secure
      end

      class CardPresent < Stripe::StripeObject; end

      class Link < Stripe::StripeObject
        attr_reader :persistent_token
      end

      class Paypal < Stripe::StripeObject
        attr_reader :billing_agreement_id, :currency, :subsellers
      end

      class Payto < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          attr_reader :amount, :amount_type, :end_date, :payment_schedule, :payments_per_period, :purpose, :start_date
        end
        attr_reader :mandate_options
      end

      class SepaDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject; end
        attr_reader :mandate_options
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
        attr_reader :financial_connections, :mandate_options, :verification_method
      end
      attr_reader :acss_debit, :amazon_pay, :bacs_debit, :card, :card_present, :link, :paypal, :payto, :sepa_debit, :us_bank_account
    end
    # ID of the Connect application that created the SetupIntent.
    attr_reader :application
    # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
    #
    # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
    attr_reader :attach_to_self
    # Settings for dynamic payment methods compatible with this Setup Intent
    attr_reader :automatic_payment_methods
    # Reason for cancellation of this SetupIntent, one of `abandoned`, `requested_by_customer`, or `duplicate`.
    attr_reader :cancellation_reason
    # The client secret of this SetupIntent. Used for client-side retrieval using a publishable key.
    #
    # The client secret can be used to complete payment setup from your frontend. It should not be stored, logged, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
    attr_reader :client_secret
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # ID of the Customer this SetupIntent belongs to, if one exists.
    #
    # If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
    attr_reader :customer
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    # Indicates the directions of money movement for which this payment method is intended to be used.
    #
    # Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
    attr_reader :flow_directions
    # Unique identifier for the object.
    attr_reader :id
    # The error encountered in the previous SetupIntent confirmation.
    attr_reader :last_setup_error
    # The most recent SetupAttempt for this SetupIntent.
    attr_reader :latest_attempt
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # ID of the multi use Mandate generated by the SetupIntent.
    attr_reader :mandate
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # If present, this property tells you what actions you need to take in order for your customer to continue payment setup.
    attr_reader :next_action
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The account (if any) for which the setup is intended.
    attr_reader :on_behalf_of
    # ID of the payment method used with this SetupIntent. If the payment method is `card_present` and isn't a digital wallet, then the [generated_card](https://docs.stripe.com/api/setup_attempts/object#setup_attempt_object-payment_method_details-card_present-generated_card) associated with the `latest_attempt` is attached to the Customer instead.
    attr_reader :payment_method
    # Information about the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) used for this Setup Intent.
    attr_reader :payment_method_configuration_details
    # Payment method-specific configuration for this SetupIntent.
    attr_reader :payment_method_options
    # The list of payment method types (e.g. card) that this SetupIntent is allowed to set up.
    attr_reader :payment_method_types
    # ID of the single_use Mandate generated by the SetupIntent.
    attr_reader :single_use_mandate
    # [Status](https://stripe.com/docs/payments/intents#intent-statuses) of this SetupIntent, one of `requires_payment_method`, `requires_confirmation`, `requires_action`, `processing`, `canceled`, or `succeeded`.
    attr_reader :status
    # Indicates how the payment method is intended to be used in the future.
    #
    # Use `on_session` if you intend to only reuse the payment method when the customer is in your checkout flow. Use `off_session` if your customer may or may not be in your checkout flow. If not provided, this value defaults to `off_session`.
    attr_reader :usage

    # You can cancel a SetupIntent object when it's in one of these statuses: requires_payment_method, requires_confirmation, or requires_action.
    #
    # After you cancel it, setup is abandoned and any operations on the SetupIntent fail with an error. You can't cancel the SetupIntent for a Checkout Session. [Expire the Checkout Session](https://stripe.com/docs/api/checkout/sessions/expire) instead.
    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/cancel", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # You can cancel a SetupIntent object when it's in one of these statuses: requires_payment_method, requires_confirmation, or requires_action.
    #
    # After you cancel it, setup is abandoned and any operations on the SetupIntent fail with an error. You can't cancel the SetupIntent for a Checkout Session. [Expire the Checkout Session](https://stripe.com/docs/api/checkout/sessions/expire) instead.
    def self.cancel(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/cancel", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # Confirm that your customer intends to set up the current or
    # provided payment method. For example, you would confirm a SetupIntent
    # when a customer hits the “Save” button on a payment method management
    # page on your website.
    #
    # If the selected payment method does not require any additional
    # steps from the customer, the SetupIntent will transition to the
    # succeeded status.
    #
    # Otherwise, it will transition to the requires_action status and
    # suggest additional actions via next_action. If setup fails,
    # the SetupIntent will transition to the
    # requires_payment_method status or the canceled status if the
    # confirmation limit is reached.
    def confirm(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/confirm", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Confirm that your customer intends to set up the current or
    # provided payment method. For example, you would confirm a SetupIntent
    # when a customer hits the “Save” button on a payment method management
    # page on your website.
    #
    # If the selected payment method does not require any additional
    # steps from the customer, the SetupIntent will transition to the
    # succeeded status.
    #
    # Otherwise, it will transition to the requires_action status and
    # suggest additional actions via next_action. If setup fails,
    # the SetupIntent will transition to the
    # requires_payment_method status or the canceled status if the
    # confirmation limit is reached.
    def self.confirm(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/confirm", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # Creates a SetupIntent object.
    #
    # After you create the SetupIntent, attach a payment method and [confirm](https://stripe.com/docs/api/setup_intents/confirm)
    # it to collect any required permissions to charge the payment method later.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/setup_intents", params: params, opts: opts)
    end

    # Returns a list of SetupIntents.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/setup_intents", params: filters, opts: opts)
    end

    # Updates a SetupIntent object.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Verifies microdeposits on a SetupIntent object.
    def verify_microdeposits(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/verify_microdeposits", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Verifies microdeposits on a SetupIntent object.
    def self.verify_microdeposits(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/verify_microdeposits", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end
  end
end
