# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    class DisputeService < StripeService
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lte
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Only return Issuing disputes that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Issuing::DisputeService::ListParams::Created, Integer)))
         }
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # Select Issuing disputes with the given status.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        # Select the Issuing dispute for the given transaction.
        sig { returns(T.nilable(String)) }
        attr_accessor :transaction
        sig {
          params(created: T.nilable(T.any(::Stripe::Issuing::DisputeService::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String), transaction: T.nilable(String)).void
         }
        def initialize(
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil,
          transaction: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class Evidence < Stripe::RequestParams
          class Canceled < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            sig { returns(T.nilable(String)) }
            attr_accessor :additional_documentation
            # Date when order was canceled.
            sig { returns(T.nilable(T.any(String, Integer))) }
            attr_accessor :canceled_at
            # Whether the cardholder was provided with a cancellation policy.
            sig { returns(T.nilable(T.any(String, T::Boolean))) }
            attr_accessor :cancellation_policy_provided
            # Reason for canceling the order.
            sig { returns(T.nilable(String)) }
            attr_accessor :cancellation_reason
            # Date when the cardholder expected to receive the product.
            sig { returns(T.nilable(T.any(String, Integer))) }
            attr_accessor :expected_at
            # Explanation of why the cardholder is disputing this transaction.
            sig { returns(T.nilable(String)) }
            attr_accessor :explanation
            # Description of the merchandise or service that was purchased.
            sig { returns(T.nilable(String)) }
            attr_accessor :product_description
            # Whether the product was a merchandise or service.
            sig { returns(T.nilable(T.any(String, String))) }
            attr_accessor :product_type
            # Result of cardholder's attempt to return the product.
            sig { returns(T.nilable(T.any(String, String))) }
            attr_accessor :return_status
            # Date when the product was returned or attempted to be returned.
            sig { returns(T.nilable(T.any(String, Integer))) }
            attr_accessor :returned_at
            sig {
              params(additional_documentation: T.nilable(String), canceled_at: T.nilable(T.any(String, Integer)), cancellation_policy_provided: T.nilable(T.any(String, T::Boolean)), cancellation_reason: T.nilable(String), expected_at: T.nilable(T.any(String, Integer)), explanation: T.nilable(String), product_description: T.nilable(String), product_type: T.nilable(T.any(String, String)), return_status: T.nilable(T.any(String, String)), returned_at: T.nilable(T.any(String, Integer))).void
             }
            def initialize(
              additional_documentation: nil,
              canceled_at: nil,
              cancellation_policy_provided: nil,
              cancellation_reason: nil,
              expected_at: nil,
              explanation: nil,
              product_description: nil,
              product_type: nil,
              return_status: nil,
              returned_at: nil
            ); end
          end
          class Duplicate < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            sig { returns(T.nilable(String)) }
            attr_accessor :additional_documentation
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Copy of the card statement showing that the product had already been paid for.
            sig { returns(T.nilable(String)) }
            attr_accessor :card_statement
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Copy of the receipt showing that the product had been paid for in cash.
            sig { returns(T.nilable(String)) }
            attr_accessor :cash_receipt
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Image of the front and back of the check that was used to pay for the product.
            sig { returns(T.nilable(String)) }
            attr_accessor :check_image
            # Explanation of why the cardholder is disputing this transaction.
            sig { returns(T.nilable(String)) }
            attr_accessor :explanation
            # Transaction (e.g., ipi_...) that the disputed transaction is a duplicate of. Of the two or more transactions that are copies of each other, this is original undisputed one.
            sig { returns(T.nilable(String)) }
            attr_accessor :original_transaction
            sig {
              params(additional_documentation: T.nilable(String), card_statement: T.nilable(String), cash_receipt: T.nilable(String), check_image: T.nilable(String), explanation: T.nilable(String), original_transaction: T.nilable(String)).void
             }
            def initialize(
              additional_documentation: nil,
              card_statement: nil,
              cash_receipt: nil,
              check_image: nil,
              explanation: nil,
              original_transaction: nil
            ); end
          end
          class Fraudulent < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            sig { returns(T.nilable(String)) }
            attr_accessor :additional_documentation
            # Explanation of why the cardholder is disputing this transaction.
            sig { returns(T.nilable(String)) }
            attr_accessor :explanation
            sig {
              params(additional_documentation: T.nilable(String), explanation: T.nilable(String)).void
             }
            def initialize(additional_documentation: nil, explanation: nil); end
          end
          class MerchandiseNotAsDescribed < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            sig { returns(T.nilable(String)) }
            attr_accessor :additional_documentation
            # Explanation of why the cardholder is disputing this transaction.
            sig { returns(T.nilable(String)) }
            attr_accessor :explanation
            # Date when the product was received.
            sig { returns(T.nilable(T.any(String, Integer))) }
            attr_accessor :received_at
            # Description of the cardholder's attempt to return the product.
            sig { returns(T.nilable(String)) }
            attr_accessor :return_description
            # Result of cardholder's attempt to return the product.
            sig { returns(T.nilable(T.any(String, String))) }
            attr_accessor :return_status
            # Date when the product was returned or attempted to be returned.
            sig { returns(T.nilable(T.any(String, Integer))) }
            attr_accessor :returned_at
            sig {
              params(additional_documentation: T.nilable(String), explanation: T.nilable(String), received_at: T.nilable(T.any(String, Integer)), return_description: T.nilable(String), return_status: T.nilable(T.any(String, String)), returned_at: T.nilable(T.any(String, Integer))).void
             }
            def initialize(
              additional_documentation: nil,
              explanation: nil,
              received_at: nil,
              return_description: nil,
              return_status: nil,
              returned_at: nil
            ); end
          end
          class NoValidAuthorization < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            sig { returns(T.nilable(String)) }
            attr_accessor :additional_documentation
            # Explanation of why the cardholder is disputing this transaction.
            sig { returns(T.nilable(String)) }
            attr_accessor :explanation
            sig {
              params(additional_documentation: T.nilable(String), explanation: T.nilable(String)).void
             }
            def initialize(additional_documentation: nil, explanation: nil); end
          end
          class NotReceived < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            sig { returns(T.nilable(String)) }
            attr_accessor :additional_documentation
            # Date when the cardholder expected to receive the product.
            sig { returns(T.nilable(T.any(String, Integer))) }
            attr_accessor :expected_at
            # Explanation of why the cardholder is disputing this transaction.
            sig { returns(T.nilable(String)) }
            attr_accessor :explanation
            # Description of the merchandise or service that was purchased.
            sig { returns(T.nilable(String)) }
            attr_accessor :product_description
            # Whether the product was a merchandise or service.
            sig { returns(T.nilable(T.any(String, String))) }
            attr_accessor :product_type
            sig {
              params(additional_documentation: T.nilable(String), expected_at: T.nilable(T.any(String, Integer)), explanation: T.nilable(String), product_description: T.nilable(String), product_type: T.nilable(T.any(String, String))).void
             }
            def initialize(
              additional_documentation: nil,
              expected_at: nil,
              explanation: nil,
              product_description: nil,
              product_type: nil
            ); end
          end
          class Other < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            sig { returns(T.nilable(String)) }
            attr_accessor :additional_documentation
            # Explanation of why the cardholder is disputing this transaction.
            sig { returns(T.nilable(String)) }
            attr_accessor :explanation
            # Description of the merchandise or service that was purchased.
            sig { returns(T.nilable(String)) }
            attr_accessor :product_description
            # Whether the product was a merchandise or service.
            sig { returns(T.nilable(T.any(String, String))) }
            attr_accessor :product_type
            sig {
              params(additional_documentation: T.nilable(String), explanation: T.nilable(String), product_description: T.nilable(String), product_type: T.nilable(T.any(String, String))).void
             }
            def initialize(
              additional_documentation: nil,
              explanation: nil,
              product_description: nil,
              product_type: nil
            ); end
          end
          class ServiceNotAsDescribed < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            sig { returns(T.nilable(String)) }
            attr_accessor :additional_documentation
            # Date when order was canceled.
            sig { returns(T.nilable(T.any(String, Integer))) }
            attr_accessor :canceled_at
            # Reason for canceling the order.
            sig { returns(T.nilable(String)) }
            attr_accessor :cancellation_reason
            # Explanation of why the cardholder is disputing this transaction.
            sig { returns(T.nilable(String)) }
            attr_accessor :explanation
            # Date when the product was received.
            sig { returns(T.nilable(T.any(String, Integer))) }
            attr_accessor :received_at
            sig {
              params(additional_documentation: T.nilable(String), canceled_at: T.nilable(T.any(String, Integer)), cancellation_reason: T.nilable(String), explanation: T.nilable(String), received_at: T.nilable(T.any(String, Integer))).void
             }
            def initialize(
              additional_documentation: nil,
              canceled_at: nil,
              cancellation_reason: nil,
              explanation: nil,
              received_at: nil
            ); end
          end
          # Evidence provided when `reason` is 'canceled'.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::CreateParams::Evidence::Canceled)))
           }
          attr_accessor :canceled
          # Evidence provided when `reason` is 'duplicate'.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::CreateParams::Evidence::Duplicate)))
           }
          attr_accessor :duplicate
          # Evidence provided when `reason` is 'fraudulent'.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::CreateParams::Evidence::Fraudulent)))
           }
          attr_accessor :fraudulent
          # Evidence provided when `reason` is 'merchandise_not_as_described'.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::CreateParams::Evidence::MerchandiseNotAsDescribed)))
           }
          attr_accessor :merchandise_not_as_described
          # Evidence provided when `reason` is 'no_valid_authorization'.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::CreateParams::Evidence::NoValidAuthorization)))
           }
          attr_accessor :no_valid_authorization
          # Evidence provided when `reason` is 'not_received'.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::CreateParams::Evidence::NotReceived)))
           }
          attr_accessor :not_received
          # Evidence provided when `reason` is 'other'.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::CreateParams::Evidence::Other)))
           }
          attr_accessor :other
          # The reason for filing the dispute. The evidence should be submitted in the field of the same name.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason
          # Evidence provided when `reason` is 'service_not_as_described'.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::CreateParams::Evidence::ServiceNotAsDescribed)))
           }
          attr_accessor :service_not_as_described
          sig {
            params(canceled: T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::CreateParams::Evidence::Canceled)), duplicate: T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::CreateParams::Evidence::Duplicate)), fraudulent: T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::CreateParams::Evidence::Fraudulent)), merchandise_not_as_described: T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::CreateParams::Evidence::MerchandiseNotAsDescribed)), no_valid_authorization: T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::CreateParams::Evidence::NoValidAuthorization)), not_received: T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::CreateParams::Evidence::NotReceived)), other: T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::CreateParams::Evidence::Other)), reason: T.nilable(String), service_not_as_described: T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::CreateParams::Evidence::ServiceNotAsDescribed))).void
           }
          def initialize(
            canceled: nil,
            duplicate: nil,
            fraudulent: nil,
            merchandise_not_as_described: nil,
            no_valid_authorization: nil,
            not_received: nil,
            other: nil,
            reason: nil,
            service_not_as_described: nil
          ); end
        end
        class Treasury < Stripe::RequestParams
          # The ID of the ReceivedDebit to initiate an Issuings dispute for.
          sig { returns(String) }
          attr_accessor :received_debit
          sig { params(received_debit: String).void }
          def initialize(received_debit: nil); end
        end
        # The dispute amount in the card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). If not set, defaults to the full transaction amount.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # Evidence provided for the dispute.
        sig { returns(T.nilable(::Stripe::Issuing::DisputeService::CreateParams::Evidence)) }
        attr_accessor :evidence
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The ID of the issuing transaction to create a dispute for. For transaction on Treasury FinancialAccounts, use `treasury.received_debit`.
        sig { returns(T.nilable(String)) }
        attr_accessor :transaction
        # Params for disputes related to Treasury FinancialAccounts
        sig { returns(T.nilable(::Stripe::Issuing::DisputeService::CreateParams::Treasury)) }
        attr_accessor :treasury
        sig {
          params(amount: T.nilable(Integer), evidence: T.nilable(::Stripe::Issuing::DisputeService::CreateParams::Evidence), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), transaction: T.nilable(String), treasury: T.nilable(::Stripe::Issuing::DisputeService::CreateParams::Treasury)).void
         }
        def initialize(
          amount: nil,
          evidence: nil,
          expand: nil,
          metadata: nil,
          transaction: nil,
          treasury: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        class Evidence < Stripe::RequestParams
          class Canceled < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            sig { returns(T.nilable(String)) }
            attr_accessor :additional_documentation
            # Date when order was canceled.
            sig { returns(T.nilable(T.any(String, Integer))) }
            attr_accessor :canceled_at
            # Whether the cardholder was provided with a cancellation policy.
            sig { returns(T.nilable(T.any(String, T::Boolean))) }
            attr_accessor :cancellation_policy_provided
            # Reason for canceling the order.
            sig { returns(T.nilable(String)) }
            attr_accessor :cancellation_reason
            # Date when the cardholder expected to receive the product.
            sig { returns(T.nilable(T.any(String, Integer))) }
            attr_accessor :expected_at
            # Explanation of why the cardholder is disputing this transaction.
            sig { returns(T.nilable(String)) }
            attr_accessor :explanation
            # Description of the merchandise or service that was purchased.
            sig { returns(T.nilable(String)) }
            attr_accessor :product_description
            # Whether the product was a merchandise or service.
            sig { returns(T.nilable(T.any(String, String))) }
            attr_accessor :product_type
            # Result of cardholder's attempt to return the product.
            sig { returns(T.nilable(T.any(String, String))) }
            attr_accessor :return_status
            # Date when the product was returned or attempted to be returned.
            sig { returns(T.nilable(T.any(String, Integer))) }
            attr_accessor :returned_at
            sig {
              params(additional_documentation: T.nilable(String), canceled_at: T.nilable(T.any(String, Integer)), cancellation_policy_provided: T.nilable(T.any(String, T::Boolean)), cancellation_reason: T.nilable(String), expected_at: T.nilable(T.any(String, Integer)), explanation: T.nilable(String), product_description: T.nilable(String), product_type: T.nilable(T.any(String, String)), return_status: T.nilable(T.any(String, String)), returned_at: T.nilable(T.any(String, Integer))).void
             }
            def initialize(
              additional_documentation: nil,
              canceled_at: nil,
              cancellation_policy_provided: nil,
              cancellation_reason: nil,
              expected_at: nil,
              explanation: nil,
              product_description: nil,
              product_type: nil,
              return_status: nil,
              returned_at: nil
            ); end
          end
          class Duplicate < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            sig { returns(T.nilable(String)) }
            attr_accessor :additional_documentation
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Copy of the card statement showing that the product had already been paid for.
            sig { returns(T.nilable(String)) }
            attr_accessor :card_statement
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Copy of the receipt showing that the product had been paid for in cash.
            sig { returns(T.nilable(String)) }
            attr_accessor :cash_receipt
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Image of the front and back of the check that was used to pay for the product.
            sig { returns(T.nilable(String)) }
            attr_accessor :check_image
            # Explanation of why the cardholder is disputing this transaction.
            sig { returns(T.nilable(String)) }
            attr_accessor :explanation
            # Transaction (e.g., ipi_...) that the disputed transaction is a duplicate of. Of the two or more transactions that are copies of each other, this is original undisputed one.
            sig { returns(T.nilable(String)) }
            attr_accessor :original_transaction
            sig {
              params(additional_documentation: T.nilable(String), card_statement: T.nilable(String), cash_receipt: T.nilable(String), check_image: T.nilable(String), explanation: T.nilable(String), original_transaction: T.nilable(String)).void
             }
            def initialize(
              additional_documentation: nil,
              card_statement: nil,
              cash_receipt: nil,
              check_image: nil,
              explanation: nil,
              original_transaction: nil
            ); end
          end
          class Fraudulent < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            sig { returns(T.nilable(String)) }
            attr_accessor :additional_documentation
            # Explanation of why the cardholder is disputing this transaction.
            sig { returns(T.nilable(String)) }
            attr_accessor :explanation
            sig {
              params(additional_documentation: T.nilable(String), explanation: T.nilable(String)).void
             }
            def initialize(additional_documentation: nil, explanation: nil); end
          end
          class MerchandiseNotAsDescribed < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            sig { returns(T.nilable(String)) }
            attr_accessor :additional_documentation
            # Explanation of why the cardholder is disputing this transaction.
            sig { returns(T.nilable(String)) }
            attr_accessor :explanation
            # Date when the product was received.
            sig { returns(T.nilable(T.any(String, Integer))) }
            attr_accessor :received_at
            # Description of the cardholder's attempt to return the product.
            sig { returns(T.nilable(String)) }
            attr_accessor :return_description
            # Result of cardholder's attempt to return the product.
            sig { returns(T.nilable(T.any(String, String))) }
            attr_accessor :return_status
            # Date when the product was returned or attempted to be returned.
            sig { returns(T.nilable(T.any(String, Integer))) }
            attr_accessor :returned_at
            sig {
              params(additional_documentation: T.nilable(String), explanation: T.nilable(String), received_at: T.nilable(T.any(String, Integer)), return_description: T.nilable(String), return_status: T.nilable(T.any(String, String)), returned_at: T.nilable(T.any(String, Integer))).void
             }
            def initialize(
              additional_documentation: nil,
              explanation: nil,
              received_at: nil,
              return_description: nil,
              return_status: nil,
              returned_at: nil
            ); end
          end
          class NoValidAuthorization < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            sig { returns(T.nilable(String)) }
            attr_accessor :additional_documentation
            # Explanation of why the cardholder is disputing this transaction.
            sig { returns(T.nilable(String)) }
            attr_accessor :explanation
            sig {
              params(additional_documentation: T.nilable(String), explanation: T.nilable(String)).void
             }
            def initialize(additional_documentation: nil, explanation: nil); end
          end
          class NotReceived < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            sig { returns(T.nilable(String)) }
            attr_accessor :additional_documentation
            # Date when the cardholder expected to receive the product.
            sig { returns(T.nilable(T.any(String, Integer))) }
            attr_accessor :expected_at
            # Explanation of why the cardholder is disputing this transaction.
            sig { returns(T.nilable(String)) }
            attr_accessor :explanation
            # Description of the merchandise or service that was purchased.
            sig { returns(T.nilable(String)) }
            attr_accessor :product_description
            # Whether the product was a merchandise or service.
            sig { returns(T.nilable(T.any(String, String))) }
            attr_accessor :product_type
            sig {
              params(additional_documentation: T.nilable(String), expected_at: T.nilable(T.any(String, Integer)), explanation: T.nilable(String), product_description: T.nilable(String), product_type: T.nilable(T.any(String, String))).void
             }
            def initialize(
              additional_documentation: nil,
              expected_at: nil,
              explanation: nil,
              product_description: nil,
              product_type: nil
            ); end
          end
          class Other < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            sig { returns(T.nilable(String)) }
            attr_accessor :additional_documentation
            # Explanation of why the cardholder is disputing this transaction.
            sig { returns(T.nilable(String)) }
            attr_accessor :explanation
            # Description of the merchandise or service that was purchased.
            sig { returns(T.nilable(String)) }
            attr_accessor :product_description
            # Whether the product was a merchandise or service.
            sig { returns(T.nilable(T.any(String, String))) }
            attr_accessor :product_type
            sig {
              params(additional_documentation: T.nilable(String), explanation: T.nilable(String), product_description: T.nilable(String), product_type: T.nilable(T.any(String, String))).void
             }
            def initialize(
              additional_documentation: nil,
              explanation: nil,
              product_description: nil,
              product_type: nil
            ); end
          end
          class ServiceNotAsDescribed < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            sig { returns(T.nilable(String)) }
            attr_accessor :additional_documentation
            # Date when order was canceled.
            sig { returns(T.nilable(T.any(String, Integer))) }
            attr_accessor :canceled_at
            # Reason for canceling the order.
            sig { returns(T.nilable(String)) }
            attr_accessor :cancellation_reason
            # Explanation of why the cardholder is disputing this transaction.
            sig { returns(T.nilable(String)) }
            attr_accessor :explanation
            # Date when the product was received.
            sig { returns(T.nilable(T.any(String, Integer))) }
            attr_accessor :received_at
            sig {
              params(additional_documentation: T.nilable(String), canceled_at: T.nilable(T.any(String, Integer)), cancellation_reason: T.nilable(String), explanation: T.nilable(String), received_at: T.nilable(T.any(String, Integer))).void
             }
            def initialize(
              additional_documentation: nil,
              canceled_at: nil,
              cancellation_reason: nil,
              explanation: nil,
              received_at: nil
            ); end
          end
          # Evidence provided when `reason` is 'canceled'.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::UpdateParams::Evidence::Canceled)))
           }
          attr_accessor :canceled
          # Evidence provided when `reason` is 'duplicate'.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::UpdateParams::Evidence::Duplicate)))
           }
          attr_accessor :duplicate
          # Evidence provided when `reason` is 'fraudulent'.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::UpdateParams::Evidence::Fraudulent)))
           }
          attr_accessor :fraudulent
          # Evidence provided when `reason` is 'merchandise_not_as_described'.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::UpdateParams::Evidence::MerchandiseNotAsDescribed)))
           }
          attr_accessor :merchandise_not_as_described
          # Evidence provided when `reason` is 'no_valid_authorization'.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::UpdateParams::Evidence::NoValidAuthorization)))
           }
          attr_accessor :no_valid_authorization
          # Evidence provided when `reason` is 'not_received'.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::UpdateParams::Evidence::NotReceived)))
           }
          attr_accessor :not_received
          # Evidence provided when `reason` is 'other'.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::UpdateParams::Evidence::Other)))
           }
          attr_accessor :other
          # The reason for filing the dispute. The evidence should be submitted in the field of the same name.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason
          # Evidence provided when `reason` is 'service_not_as_described'.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::UpdateParams::Evidence::ServiceNotAsDescribed)))
           }
          attr_accessor :service_not_as_described
          sig {
            params(canceled: T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::UpdateParams::Evidence::Canceled)), duplicate: T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::UpdateParams::Evidence::Duplicate)), fraudulent: T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::UpdateParams::Evidence::Fraudulent)), merchandise_not_as_described: T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::UpdateParams::Evidence::MerchandiseNotAsDescribed)), no_valid_authorization: T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::UpdateParams::Evidence::NoValidAuthorization)), not_received: T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::UpdateParams::Evidence::NotReceived)), other: T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::UpdateParams::Evidence::Other)), reason: T.nilable(String), service_not_as_described: T.nilable(T.any(String, ::Stripe::Issuing::DisputeService::UpdateParams::Evidence::ServiceNotAsDescribed))).void
           }
          def initialize(
            canceled: nil,
            duplicate: nil,
            fraudulent: nil,
            merchandise_not_as_described: nil,
            no_valid_authorization: nil,
            not_received: nil,
            other: nil,
            reason: nil,
            service_not_as_described: nil
          ); end
        end
        # The dispute amount in the card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # Evidence provided for the dispute.
        sig { returns(T.nilable(::Stripe::Issuing::DisputeService::UpdateParams::Evidence)) }
        attr_accessor :evidence
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        attr_accessor :metadata
        sig {
          params(amount: T.nilable(Integer), evidence: T.nilable(::Stripe::Issuing::DisputeService::UpdateParams::Evidence), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
         }
        def initialize(amount: nil, evidence: nil, expand: nil, metadata: nil); end
      end
      class SubmitParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        attr_accessor :metadata
        sig {
          params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
         }
        def initialize(expand: nil, metadata: nil); end
      end
      # Creates an Issuing Dispute object. Individual pieces of evidence within the evidence object are optional at this point. Stripe only validates that required evidence is present during submission. Refer to [Dispute reasons and evidence](https://docs.stripe.com/docs/issuing/purchases/disputes#dispute-reasons-and-evidence) for more details about evidence requirements.
      sig {
        params(params: T.any(::Stripe::Issuing::DisputeService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Dispute)
       }
      def create(params = {}, opts = {}); end

      # Returns a list of Issuing Dispute objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::DisputeService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves an Issuing Dispute object.
      sig {
        params(dispute: String, params: T.any(::Stripe::Issuing::DisputeService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Dispute)
       }
      def retrieve(dispute, params = {}, opts = {}); end

      # Submits an Issuing Dispute to the card network. Stripe validates that all evidence fields required for the dispute's reason are present. For more details, see [Dispute reasons and evidence](https://docs.stripe.com/docs/issuing/purchases/disputes#dispute-reasons-and-evidence).
      sig {
        params(dispute: String, params: T.any(::Stripe::Issuing::DisputeService::SubmitParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Dispute)
       }
      def submit(dispute, params = {}, opts = {}); end

      # Updates the specified Issuing Dispute object by setting the values of the parameters passed. Any parameters not provided will be left unchanged. Properties on the evidence object can be unset by passing in an empty string.
      sig {
        params(dispute: String, params: T.any(::Stripe::Issuing::DisputeService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Dispute)
       }
      def update(dispute, params = {}, opts = {}); end
    end
  end
end