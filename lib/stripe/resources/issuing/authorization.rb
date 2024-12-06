# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # When an [issued card](https://stripe.com/docs/issuing) is used to make a purchase, an Issuing `Authorization`
    # object is created. [Authorizations](https://stripe.com/docs/issuing/purchases/authorizations) must be approved for the
    # purchase to be completed successfully.
    #
    # Related guide: [Issued card authorizations](https://stripe.com/docs/issuing/purchases/authorizations)
    class Authorization < APIResource
      extend Gem::Deprecate
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.authorization"
      def self.object_name
        "issuing.authorization"
      end

      class AmountDetails < Stripe::StripeObject
        attr_reader :atm_fee, :cashback_amount
      end

      class Fleet < Stripe::StripeObject
        class CardholderPromptData < Stripe::StripeObject
          attr_reader :alphanumeric_id, :driver_id, :odometer, :unspecified_id, :user_id, :vehicle_number
        end

        class ReportedBreakdown < Stripe::StripeObject
          class Fuel < Stripe::StripeObject
            attr_reader :gross_amount_decimal
          end

          class NonFuel < Stripe::StripeObject
            attr_reader :gross_amount_decimal
          end

          class Tax < Stripe::StripeObject
            attr_reader :local_amount_decimal, :national_amount_decimal
          end
          attr_reader :fuel, :non_fuel, :tax
        end
        attr_reader :cardholder_prompt_data, :purchase_type, :reported_breakdown, :service_type
      end

      class FraudChallenge < Stripe::StripeObject
        attr_reader :channel, :status, :undeliverable_reason
      end

      class Fuel < Stripe::StripeObject
        attr_reader :industry_product_code, :quantity_decimal, :type, :unit, :unit_cost_decimal
      end

      class MerchantData < Stripe::StripeObject
        attr_reader :category, :category_code, :city, :country, :name, :network_id, :postal_code, :state, :tax_id, :terminal_id, :url
      end

      class NetworkData < Stripe::StripeObject
        attr_reader :acquiring_institution_id, :system_trace_audit_number, :transaction_id
      end

      class PendingRequest < Stripe::StripeObject
        class AmountDetails < Stripe::StripeObject
          attr_reader :atm_fee, :cashback_amount
        end
        attr_reader :amount, :amount_details, :currency, :is_amount_controllable, :merchant_amount, :merchant_currency, :network_risk_score
      end

      class RequestHistory < Stripe::StripeObject
        class AmountDetails < Stripe::StripeObject
          attr_reader :atm_fee, :cashback_amount
        end
        attr_reader :amount, :amount_details, :approved, :authorization_code, :created, :currency, :merchant_amount, :merchant_currency, :network_risk_score, :reason, :reason_message, :requested_at
      end

      class Treasury < Stripe::StripeObject
        attr_reader :received_credits, :received_debits, :transaction
      end

      class VerificationData < Stripe::StripeObject
        class AuthenticationExemption < Stripe::StripeObject
          attr_reader :claimed_by, :type
        end

        class ThreeDSecure < Stripe::StripeObject
          attr_reader :result
        end
        attr_reader :address_line1_check, :address_postal_code_check, :authentication_exemption, :cvc_check, :expiry_check, :postal_code, :three_d_secure
      end
      # The total amount that was authorized or rejected. This amount is in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). `amount` should be the same as `merchant_amount`, unless `currency` and `merchant_currency` are different.
      attr_reader :amount
      # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      attr_reader :amount_details
      # Whether the authorization has been approved.
      attr_reader :approved
      # How the card details were provided.
      attr_reader :authorization_method
      # List of balance transactions associated with this authorization.
      attr_reader :balance_transactions
      # You can [create physical or virtual cards](https://stripe.com/docs/issuing) that are issued to cardholders.
      attr_reader :card
      # The cardholder to whom this authorization belongs.
      attr_reader :cardholder
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The currency of the cardholder. This currency can be different from the currency presented at authorization and the `merchant_currency` field on this authorization. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # Fleet-specific information for authorizations using Fleet cards.
      attr_reader :fleet
      # Fraud challenges sent to the cardholder, if this authorization was declined for fraud risk reasons.
      attr_reader :fraud_challenges
      # Information about fuel that was purchased with this transaction. Typically this information is received from the merchant after the authorization has been approved and the fuel dispensed.
      attr_reader :fuel
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # The total amount that was authorized or rejected. This amount is in the `merchant_currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). `merchant_amount` should be the same as `amount`, unless `merchant_currency` and `currency` are different.
      attr_reader :merchant_amount
      # The local currency that was presented to the cardholder for the authorization. This currency can be different from the cardholder currency and the `currency` field on this authorization. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :merchant_currency
      # Attribute for field merchant_data
      attr_reader :merchant_data
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # Details about the authorization, such as identifiers, set by the card network.
      attr_reader :network_data
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The pending authorization request. This field will only be non-null during an `issuing_authorization.request` webhook.
      attr_reader :pending_request
      # History of every time a `pending_request` authorization was approved/declined, either by you directly or by Stripe (e.g. based on your spending_controls). If the merchant changes the authorization by performing an incremental authorization, you can look at this field to see the previous requests for the authorization. This field can be helpful in determining why a given authorization was approved/declined.
      attr_reader :request_history
      # The current status of the authorization in its lifecycle.
      attr_reader :status
      # [Token](https://stripe.com/docs/api/issuing/tokens/object) object used for this authorization. If a network token was not used for this authorization, this field will be null.
      attr_reader :token
      # List of [transactions](https://stripe.com/docs/api/issuing/transactions) associated with this authorization.
      attr_reader :transactions
      # [Treasury](https://stripe.com/docs/api/treasury) details related to this authorization if it was created on a [FinancialAccount](https://stripe.com/docs/api/treasury/financial_accounts).
      attr_reader :treasury
      # Attribute for field verification_data
      attr_reader :verification_data
      # Whether the authorization bypassed fraud risk checks because the cardholder has previously completed a fraud challenge on a similar high-risk authorization from the same merchant.
      attr_reader :verified_by_fraud_challenge
      # The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`. Will populate as `null` when no digital wallet was utilized.
      attr_reader :wallet

      # [Deprecated] Approves a pending Issuing Authorization object. This request should be made within the timeout window of the [real-time authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to approve an authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      def approve(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/authorizations/%<authorization>s/approve", { authorization: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end
      deprecate :approve, :none, 2024, 3

      # [Deprecated] Approves a pending Issuing Authorization object. This request should be made within the timeout window of the [real-time authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to approve an authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      def self.approve(authorization, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/authorizations/%<authorization>s/approve", { authorization: CGI.escape(authorization) }),
          params: params,
          opts: opts
        )
      end
      class << self
        extend Gem::Deprecate
        deprecate :approve, :none, 2024, 3
      end

      # [Deprecated] Declines a pending Issuing Authorization object. This request should be made within the timeout window of the [real time authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to decline an authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      def decline(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/authorizations/%<authorization>s/decline", { authorization: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end
      deprecate :decline, :none, 2024, 3

      # [Deprecated] Declines a pending Issuing Authorization object. This request should be made within the timeout window of the [real time authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to decline an authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      def self.decline(authorization, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/authorizations/%<authorization>s/decline", { authorization: CGI.escape(authorization) }),
          params: params,
          opts: opts
        )
      end
      class << self
        extend Gem::Deprecate
        deprecate :decline, :none, 2024, 3
      end

      # Returns a list of Issuing Authorization objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/authorizations",
          params: filters,
          opts: opts
        )
      end

      # Updates the specified Issuing Authorization object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/authorizations/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = Authorization
        def self.resource_class
          "Authorization"
        end

        # Capture a test-mode authorization.
        def self.capture(authorization, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/capture", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts
          )
        end

        # Capture a test-mode authorization.
        def capture(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/capture", { authorization: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Create a test-mode authorization.
        def self.create(params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: "/v1/test_helpers/issuing/authorizations",
            params: params,
            opts: opts
          )
        end

        # Expire a test-mode Authorization.
        def self.expire(authorization, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/expire", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts
          )
        end

        # Expire a test-mode Authorization.
        def expire(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/expire", { authorization: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Finalize the amount on an Authorization prior to capture, when the initial authorization was for an estimated amount.
        def self.finalize_amount(authorization, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/finalize_amount", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts
          )
        end

        # Finalize the amount on an Authorization prior to capture, when the initial authorization was for an estimated amount.
        def finalize_amount(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/finalize_amount", { authorization: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Increment a test-mode Authorization.
        def self.increment(authorization, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/increment", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts
          )
        end

        # Increment a test-mode Authorization.
        def increment(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/increment", { authorization: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Respond to a fraud challenge on a testmode Issuing authorization, simulating either a confirmation of fraud or a correction of legitimacy.
        def self.respond(authorization, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/fraud_challenges/respond", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts
          )
        end

        # Respond to a fraud challenge on a testmode Issuing authorization, simulating either a confirmation of fraud or a correction of legitimacy.
        def respond(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/fraud_challenges/respond", { authorization: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Reverse a test-mode Authorization.
        def self.reverse(authorization, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/reverse", { authorization: CGI.escape(authorization) }),
            params: params,
            opts: opts
          )
        end

        # Reverse a test-mode Authorization.
        def reverse(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/authorizations/%<authorization>s/reverse", { authorization: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
