# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Refund objects allow you to refund a previously created charge that isn't
  # refunded yet. Funds are refunded to the credit or debit card that's
  # initially charged.
  #
  # Related guide: [Refunds](https://stripe.com/docs/refunds)
  class Refund < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "refund"
    def self.object_name
      "refund"
    end

    class DestinationDetails < Stripe::StripeObject
      class Affirm < Stripe::StripeObject; end
      class AfterpayClearpay < Stripe::StripeObject; end
      class Alipay < Stripe::StripeObject; end
      class Alma < Stripe::StripeObject; end
      class AmazonPay < Stripe::StripeObject; end
      class AuBankTransfer < Stripe::StripeObject; end

      class Blik < Stripe::StripeObject
        attr_reader :network_decline_code, :reference, :reference_status
      end

      class BrBankTransfer < Stripe::StripeObject
        attr_reader :reference, :reference_status
      end

      class Card < Stripe::StripeObject
        attr_reader :reference, :reference_status, :reference_type, :type
      end

      class Cashapp < Stripe::StripeObject; end
      class CustomerCashBalance < Stripe::StripeObject; end
      class Eps < Stripe::StripeObject; end

      class EuBankTransfer < Stripe::StripeObject
        attr_reader :reference, :reference_status
      end

      class GbBankTransfer < Stripe::StripeObject
        attr_reader :reference, :reference_status
      end

      class Giropay < Stripe::StripeObject; end
      class Grabpay < Stripe::StripeObject; end

      class IdBankTransfer < Stripe::StripeObject
        attr_reader :reference, :reference_status
      end

      class JpBankTransfer < Stripe::StripeObject
        attr_reader :reference, :reference_status
      end

      class Klarna < Stripe::StripeObject; end

      class Multibanco < Stripe::StripeObject
        attr_reader :reference, :reference_status
      end

      class MxBankTransfer < Stripe::StripeObject
        attr_reader :reference, :reference_status
      end

      class P24 < Stripe::StripeObject
        attr_reader :reference, :reference_status
      end

      class Paynow < Stripe::StripeObject; end
      class Paypal < Stripe::StripeObject; end
      class Pix < Stripe::StripeObject; end
      class Revolut < Stripe::StripeObject; end
      class Sofort < Stripe::StripeObject; end

      class Swish < Stripe::StripeObject
        attr_reader :network_decline_code, :reference, :reference_status
      end

      class ThBankTransfer < Stripe::StripeObject
        attr_reader :reference, :reference_status
      end

      class UsBankTransfer < Stripe::StripeObject
        attr_reader :reference, :reference_status
      end

      class WechatPay < Stripe::StripeObject; end
      class Zip < Stripe::StripeObject; end
      attr_reader :affirm, :afterpay_clearpay, :alipay, :alma, :amazon_pay, :au_bank_transfer, :blik, :br_bank_transfer, :card, :cashapp, :customer_cash_balance, :eps, :eu_bank_transfer, :gb_bank_transfer, :giropay, :grabpay, :id_bank_transfer, :jp_bank_transfer, :klarna, :multibanco, :mx_bank_transfer, :p24, :paynow, :paypal, :pix, :revolut, :sofort, :swish, :th_bank_transfer, :type, :us_bank_transfer, :wechat_pay, :zip
    end

    class NextAction < Stripe::StripeObject
      class DisplayDetails < Stripe::StripeObject
        class EmailSent < Stripe::StripeObject
          attr_reader :email_sent_at, :email_sent_to
        end
        attr_reader :email_sent, :expires_at
      end
      attr_reader :display_details, :type
    end
    # Amount, in cents (or local equivalent).
    attr_reader :amount
    # Balance transaction that describes the impact on your account balance.
    attr_reader :balance_transaction
    # ID of the charge that's refunded.
    attr_reader :charge
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # An arbitrary string attached to the object. You can use this for displaying to users (available on non-card refunds only).
    attr_reader :description
    # Attribute for field destination_details
    attr_reader :destination_details
    # After the refund fails, this balance transaction describes the adjustment made on your account balance that reverses the initial balance transaction.
    attr_reader :failure_balance_transaction
    # Provides the reason for the refund failure. Possible values are: `lost_or_stolen_card`, `expired_or_canceled_card`, `charge_for_pending_refund_disputed`, `insufficient_funds`, `declined`, `merchant_request`, or `unknown`.
    attr_reader :failure_reason
    # Unique identifier for the object.
    attr_reader :id
    # For payment methods without native refund support (for example, Konbini, PromptPay), provide an email address for the customer to receive refund instructions.
    attr_reader :instructions_email
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # Attribute for field next_action
    attr_reader :next_action
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # ID of the PaymentIntent that's refunded.
    attr_reader :payment_intent
    # Reason for the refund, which is either user-provided (`duplicate`, `fraudulent`, or `requested_by_customer`) or generated by Stripe internally (`expired_uncaptured_charge`).
    attr_reader :reason
    # This is the transaction number that appears on email receipts sent for this refund.
    attr_reader :receipt_number
    # The transfer reversal that's associated with the refund. Only present if the charge came from another Stripe account.
    attr_reader :source_transfer_reversal
    # Status of the refund. This can be `pending`, `requires_action`, `succeeded`, `failed`, or `canceled`. Learn more about [failed refunds](https://stripe.com/docs/refunds#failed-refunds).
    attr_reader :status
    # This refers to the transfer reversal object if the accompanying transfer reverses. This is only applicable if the charge was created using the destination parameter.
    attr_reader :transfer_reversal

    # Cancels a refund with a status of requires_action.
    #
    # You can't cancel refunds in other states. Only refunds for payment methods that require customer action can enter the requires_action state.
    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/refunds/%<refund>s/cancel", { refund: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Cancels a refund with a status of requires_action.
    #
    # You can't cancel refunds in other states. Only refunds for payment methods that require customer action can enter the requires_action state.
    def self.cancel(refund, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/refunds/%<refund>s/cancel", { refund: CGI.escape(refund) }),
        params: params,
        opts: opts
      )
    end

    # When you create a new refund, you must specify a Charge or a PaymentIntent object on which to create it.
    #
    # Creating a new refund will refund a charge that has previously been created but not yet refunded.
    # Funds will be refunded to the credit or debit card that was originally charged.
    #
    # You can optionally refund only part of a charge.
    # You can do so multiple times, until the entire charge has been refunded.
    #
    # Once entirely refunded, a charge can't be refunded again.
    # This method will raise an error when called on an already-refunded charge,
    # or when trying to refund more money than is left on a charge.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/refunds", params: params, opts: opts)
    end

    # Returns a list of all refunds you created. We return the refunds in sorted order, with the most recent refunds appearing first. The 10 most recent refunds are always available by default on the Charge object.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/refunds", params: params, opts: opts)
    end

    # Updates the refund that you specify by setting the values of the passed parameters. Any parameters that you don't provide remain unchanged.
    #
    # This request only accepts metadata as an argument.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/refunds/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    def test_helpers
      TestHelpers.new(self)
    end

    class TestHelpers < APIResourceTestHelpers
      RESOURCE_CLASS = Refund
      def self.resource_class
        "Refund"
      end

      # Expire a refund with a status of requires_action.
      def self.expire(refund, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/test_helpers/refunds/%<refund>s/expire", { refund: CGI.escape(refund) }),
          params: params,
          opts: opts
        )
      end

      # Expire a refund with a status of requires_action.
      def expire(params = {}, opts = {})
        @resource.request_stripe_object(
          method: :post,
          path: format("/v1/test_helpers/refunds/%<refund>s/expire", { refund: CGI.escape(@resource["id"]) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
