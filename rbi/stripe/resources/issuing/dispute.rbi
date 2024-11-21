# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # As a [card issuer](https://stripe.com/docs/issuing), you can dispute transactions that the cardholder does not recognize, suspects to be fraudulent, or has other issues with.
    #
    # Related guide: [Issuing disputes](https://stripe.com/docs/issuing/purchases/disputes)
    class Dispute < APIResource
      class Evidence < Stripe::StripeObject
        class Canceled < Stripe::StripeObject
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation
          # Date when order was canceled.
          sig { returns(T.nilable(Integer)) }
          attr_reader :canceled_at
          # Whether the cardholder was provided with a cancellation policy.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :cancellation_policy_provided
          # Reason for canceling the order.
          sig { returns(T.nilable(String)) }
          attr_reader :cancellation_reason
          # Date when the cardholder expected to receive the product.
          sig { returns(T.nilable(Integer)) }
          attr_reader :expected_at
          # Explanation of why the cardholder is disputing this transaction.
          sig { returns(T.nilable(String)) }
          attr_reader :explanation
          # Description of the merchandise or service that was purchased.
          sig { returns(T.nilable(String)) }
          attr_reader :product_description
          # Whether the product was a merchandise or service.
          sig { returns(T.nilable(String)) }
          attr_reader :product_type
          # Result of cardholder's attempt to return the product.
          sig { returns(T.nilable(String)) }
          attr_reader :return_status
          # Date when the product was returned or attempted to be returned.
          sig { returns(T.nilable(Integer)) }
          attr_reader :returned_at
        end
        class Duplicate < Stripe::StripeObject
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Copy of the card statement showing that the product had already been paid for.
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :card_statement
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Copy of the receipt showing that the product had been paid for in cash.
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :cash_receipt
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Image of the front and back of the check that was used to pay for the product.
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :check_image
          # Explanation of why the cardholder is disputing this transaction.
          sig { returns(T.nilable(String)) }
          attr_reader :explanation
          # Transaction (e.g., ipi_...) that the disputed transaction is a duplicate of. Of the two or more transactions that are copies of each other, this is original undisputed one.
          sig { returns(T.nilable(String)) }
          attr_reader :original_transaction
        end
        class Fraudulent < Stripe::StripeObject
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation
          # Explanation of why the cardholder is disputing this transaction.
          sig { returns(T.nilable(String)) }
          attr_reader :explanation
        end
        class MerchandiseNotAsDescribed < Stripe::StripeObject
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation
          # Explanation of why the cardholder is disputing this transaction.
          sig { returns(T.nilable(String)) }
          attr_reader :explanation
          # Date when the product was received.
          sig { returns(T.nilable(Integer)) }
          attr_reader :received_at
          # Description of the cardholder's attempt to return the product.
          sig { returns(T.nilable(String)) }
          attr_reader :return_description
          # Result of cardholder's attempt to return the product.
          sig { returns(T.nilable(String)) }
          attr_reader :return_status
          # Date when the product was returned or attempted to be returned.
          sig { returns(T.nilable(Integer)) }
          attr_reader :returned_at
        end
        class NoValidAuthorization < Stripe::StripeObject
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation
          # Explanation of why the cardholder is disputing this transaction.
          sig { returns(T.nilable(String)) }
          attr_reader :explanation
        end
        class NotReceived < Stripe::StripeObject
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation
          # Date when the cardholder expected to receive the product.
          sig { returns(T.nilable(Integer)) }
          attr_reader :expected_at
          # Explanation of why the cardholder is disputing this transaction.
          sig { returns(T.nilable(String)) }
          attr_reader :explanation
          # Description of the merchandise or service that was purchased.
          sig { returns(T.nilable(String)) }
          attr_reader :product_description
          # Whether the product was a merchandise or service.
          sig { returns(T.nilable(String)) }
          attr_reader :product_type
        end
        class Other < Stripe::StripeObject
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation
          # Explanation of why the cardholder is disputing this transaction.
          sig { returns(T.nilable(String)) }
          attr_reader :explanation
          # Description of the merchandise or service that was purchased.
          sig { returns(T.nilable(String)) }
          attr_reader :product_description
          # Whether the product was a merchandise or service.
          sig { returns(T.nilable(String)) }
          attr_reader :product_type
        end
        class ServiceNotAsDescribed < Stripe::StripeObject
          # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
          sig { returns(T.nilable(T.any(String, Stripe::File))) }
          attr_reader :additional_documentation
          # Date when order was canceled.
          sig { returns(T.nilable(Integer)) }
          attr_reader :canceled_at
          # Reason for canceling the order.
          sig { returns(T.nilable(String)) }
          attr_reader :cancellation_reason
          # Explanation of why the cardholder is disputing this transaction.
          sig { returns(T.nilable(String)) }
          attr_reader :explanation
          # Date when the product was received.
          sig { returns(T.nilable(Integer)) }
          attr_reader :received_at
        end
        # Attribute for field canceled
        sig { returns(Canceled) }
        attr_reader :canceled
        # Attribute for field duplicate
        sig { returns(Duplicate) }
        attr_reader :duplicate
        # Attribute for field fraudulent
        sig { returns(Fraudulent) }
        attr_reader :fraudulent
        # Attribute for field merchandise_not_as_described
        sig { returns(MerchandiseNotAsDescribed) }
        attr_reader :merchandise_not_as_described
        # Attribute for field no_valid_authorization
        sig { returns(NoValidAuthorization) }
        attr_reader :no_valid_authorization
        # Attribute for field not_received
        sig { returns(NotReceived) }
        attr_reader :not_received
        # Attribute for field other
        sig { returns(Other) }
        attr_reader :other
        # The reason for filing the dispute. Its value will match the field containing the evidence.
        sig { returns(String) }
        attr_reader :reason
        # Attribute for field service_not_as_described
        sig { returns(ServiceNotAsDescribed) }
        attr_reader :service_not_as_described
      end
      class Treasury < Stripe::StripeObject
        # The Treasury [DebitReversal](https://stripe.com/docs/api/treasury/debit_reversals) representing this Issuing dispute
        sig { returns(T.nilable(String)) }
        attr_reader :debit_reversal
        # The Treasury [ReceivedDebit](https://stripe.com/docs/api/treasury/received_debits) that is being disputed.
        sig { returns(String) }
        attr_reader :received_debit
      end
      # Disputed amount in the card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). Usually the amount of the `transaction`, but can differ (usually because of currency fluctuation).
      sig { returns(Integer) }
      attr_reader :amount

      # List of balance transactions associated with the dispute.
      sig { returns(T.nilable(T::Array[Stripe::BalanceTransaction])) }
      attr_reader :balance_transactions

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # The currency the `transaction` was made in.
      sig { returns(String) }
      attr_reader :currency

      # Attribute for field evidence
      sig { returns(Evidence) }
      attr_reader :evidence

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # The enum that describes the dispute loss outcome. If the dispute is not lost, this field will be absent. New enum values may be added in the future, so be sure to handle unknown values.
      sig { returns(String) }
      attr_reader :loss_reason

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # Current status of the dispute.
      sig { returns(String) }
      attr_reader :status

      # The transaction being disputed.
      sig { returns(T.any(String, Stripe::Issuing::Transaction)) }
      attr_reader :transaction

      # [Treasury](https://stripe.com/docs/api/treasury) details related to this dispute if it was created on a [FinancialAccount](/docs/api/treasury/financial_accounts
      sig { returns(T.nilable(Treasury)) }
      attr_reader :treasury
    end
  end
end