# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # As a [card issuer](https://stripe.com/docs/issuing), you can dispute transactions that the cardholder does not recognize, suspects to be fraudulent, or has other issues with.
    #
    # Related guide: [Issuing disputes](https://stripe.com/docs/issuing/purchases/disputes)
    class Dispute < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.dispute"
      def self.object_name
        "issuing.dispute"
      end

      class Evidence < Stripe::StripeObject
        class Canceled < Stripe::StripeObject
          attr_reader :additional_documentation, :canceled_at, :cancellation_policy_provided, :cancellation_reason, :expected_at, :explanation, :product_description, :product_type, :return_status, :returned_at
        end

        class Duplicate < Stripe::StripeObject
          attr_reader :additional_documentation, :card_statement, :cash_receipt, :check_image, :explanation, :original_transaction
        end

        class Fraudulent < Stripe::StripeObject
          attr_reader :additional_documentation, :explanation
        end

        class MerchandiseNotAsDescribed < Stripe::StripeObject
          attr_reader :additional_documentation, :explanation, :received_at, :return_description, :return_status, :returned_at
        end

        class NoValidAuthorization < Stripe::StripeObject
          attr_reader :additional_documentation, :explanation
        end

        class NotReceived < Stripe::StripeObject
          attr_reader :additional_documentation, :expected_at, :explanation, :product_description, :product_type
        end

        class Other < Stripe::StripeObject
          attr_reader :additional_documentation, :explanation, :product_description, :product_type
        end

        class ServiceNotAsDescribed < Stripe::StripeObject
          attr_reader :additional_documentation, :canceled_at, :cancellation_reason, :explanation, :received_at
        end
        attr_reader :canceled, :duplicate, :fraudulent, :merchandise_not_as_described, :no_valid_authorization, :not_received, :other, :reason, :service_not_as_described
      end

      class Treasury < Stripe::StripeObject
        attr_reader :debit_reversal, :received_debit
      end
      # Disputed amount in the card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). Usually the amount of the `transaction`, but can differ (usually because of currency fluctuation).
      attr_reader :amount
      # List of balance transactions associated with the dispute.
      attr_reader :balance_transactions
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The currency the `transaction` was made in.
      attr_reader :currency
      # Attribute for field evidence
      attr_reader :evidence
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # The enum that describes the dispute loss outcome. If the dispute is not lost, this field will be absent. New enum values may be added in the future, so be sure to handle unknown values.
      attr_reader :loss_reason
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Current status of the dispute.
      attr_reader :status
      # The transaction being disputed.
      attr_reader :transaction
      # [Treasury](https://stripe.com/docs/api/treasury) details related to this dispute if it was created on a [FinancialAccount](/docs/api/treasury/financial_accounts
      attr_reader :treasury

      # Creates an Issuing Dispute object. Individual pieces of evidence within the evidence object are optional at this point. Stripe only validates that required evidence is present during submission. Refer to [Dispute reasons and evidence](https://stripe.com/docs/issuing/purchases/disputes#dispute-reasons-and-evidence) for more details about evidence requirements.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/issuing/disputes",
          params: params,
          opts: opts
        )
      end

      # Returns a list of Issuing Dispute objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/disputes",
          params: filters,
          opts: opts
        )
      end

      # Submits an Issuing Dispute to the card network. Stripe validates that all evidence fields required for the dispute's reason are present. For more details, see [Dispute reasons and evidence](https://stripe.com/docs/issuing/purchases/disputes#dispute-reasons-and-evidence).
      def submit(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/disputes/%<dispute>s/submit", { dispute: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Submits an Issuing Dispute to the card network. Stripe validates that all evidence fields required for the dispute's reason are present. For more details, see [Dispute reasons and evidence](https://stripe.com/docs/issuing/purchases/disputes#dispute-reasons-and-evidence).
      def self.submit(dispute, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/disputes/%<dispute>s/submit", { dispute: CGI.escape(dispute) }),
          params: params,
          opts: opts
        )
      end

      # Updates the specified Issuing Dispute object by setting the values of the parameters passed. Any parameters not provided will be left unchanged. Properties on the evidence object can be unset by passing in an empty string.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/disputes/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
