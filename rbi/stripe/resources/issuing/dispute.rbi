# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # As a [card issuer](https://stripe.com/docs/issuing), you can dispute transactions that the cardholder does not recognize, suspects to be fraudulent, or has other issues with.
    #
    # Related guide: [Issuing disputes](https://stripe.com/docs/issuing/purchases/disputes)
    class Dispute < APIResource
      class Evidence < Stripe::StripeObject
        class Canceled < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation
          sig { returns(T.nilable(Integer)) }
          attr_reader :canceled_at
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :cancellation_policy_provided
          sig { returns(T.nilable(String)) }
          attr_reader :cancellation_reason
          sig { returns(T.nilable(Integer)) }
          attr_reader :expected_at
          sig { returns(T.nilable(String)) }
          attr_reader :explanation
          sig { returns(T.nilable(String)) }
          attr_reader :product_description
          sig { returns(T.nilable(String)) }
          attr_reader :product_type
          sig { returns(T.nilable(String)) }
          attr_reader :return_status
          sig { returns(T.nilable(Integer)) }
          attr_reader :returned_at
        end
        class Duplicate < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :card_statement
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :cash_receipt
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :check_image
          sig { returns(T.nilable(String)) }
          attr_reader :explanation
          sig { returns(T.nilable(String)) }
          attr_reader :original_transaction
        end
        class Fraudulent < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation
          sig { returns(T.nilable(String)) }
          attr_reader :explanation
        end
        class MerchandiseNotAsDescribed < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation
          sig { returns(T.nilable(String)) }
          attr_reader :explanation
          sig { returns(T.nilable(Integer)) }
          attr_reader :received_at
          sig { returns(T.nilable(String)) }
          attr_reader :return_description
          sig { returns(T.nilable(String)) }
          attr_reader :return_status
          sig { returns(T.nilable(Integer)) }
          attr_reader :returned_at
        end
        class NoValidAuthorization < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation
          sig { returns(T.nilable(String)) }
          attr_reader :explanation
        end
        class NotReceived < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation
          sig { returns(T.nilable(Integer)) }
          attr_reader :expected_at
          sig { returns(T.nilable(String)) }
          attr_reader :explanation
          sig { returns(T.nilable(String)) }
          attr_reader :product_description
          sig { returns(T.nilable(String)) }
          attr_reader :product_type
        end
        class Other < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation
          sig { returns(T.nilable(String)) }
          attr_reader :explanation
          sig { returns(T.nilable(String)) }
          attr_reader :product_description
          sig { returns(T.nilable(String)) }
          attr_reader :product_type
        end
        class ServiceNotAsDescribed < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation
          sig { returns(T.nilable(Integer)) }
          attr_reader :canceled_at
          sig { returns(T.nilable(String)) }
          attr_reader :cancellation_reason
          sig { returns(T.nilable(String)) }
          attr_reader :explanation
          sig { returns(T.nilable(Integer)) }
          attr_reader :received_at
        end
        sig { returns(Canceled) }
        attr_reader :canceled
        sig { returns(Duplicate) }
        attr_reader :duplicate
        sig { returns(Fraudulent) }
        attr_reader :fraudulent
        sig { returns(MerchandiseNotAsDescribed) }
        attr_reader :merchandise_not_as_described
        sig { returns(NoValidAuthorization) }
        attr_reader :no_valid_authorization
        sig { returns(NotReceived) }
        attr_reader :not_received
        sig { returns(Other) }
        attr_reader :other
        sig { returns(String) }
        attr_reader :reason
        sig { returns(ServiceNotAsDescribed) }
        attr_reader :service_not_as_described
      end
      class Treasury < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :debit_reversal
        sig { returns(String) }
        attr_reader :received_debit
      end
      sig { returns(Integer) }
      # Disputed amount in the card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). Usually the amount of the `transaction`, but can differ (usually because of currency fluctuation).
      attr_reader :amount
      sig { returns(T.nilable(T::Array[Stripe::BalanceTransaction])) }
      # List of balance transactions associated with the dispute.
      attr_reader :balance_transactions
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # The currency the `transaction` was made in.
      attr_reader :currency
      sig { returns(Evidence) }
      # Attribute for field evidence
      attr_reader :evidence
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # The enum that describes the dispute loss outcome. If the dispute is not lost, this field will be absent. New enum values may be added in the future, so be sure to handle unknown values.
      attr_reader :loss_reason
      sig { returns(T::Hash[String, String]) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # Current status of the dispute.
      attr_reader :status
      sig { returns(T.any(String, Stripe::Issuing::Transaction)) }
      # The transaction being disputed.
      attr_reader :transaction
      sig { returns(T.nilable(Treasury)) }
      # [Treasury](https://stripe.com/docs/api/treasury) details related to this dispute if it was created on a [FinancialAccount](/docs/api/treasury/financial_accounts
      attr_reader :treasury
    end
  end
end