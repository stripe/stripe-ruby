# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    class DisputeService < StripeService
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # Only return Issuing disputes that were created during the given date interval.
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # Select Issuing disputes with the given status.
        attr_accessor :status
        # Select the Issuing dispute for the given transaction.
        attr_accessor :transaction

        def initialize(
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil,
          transaction: nil
        )
          @created = created
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
          @status = status
          @transaction = transaction
        end
      end

      class CreateParams < Stripe::RequestParams
        class Evidence < Stripe::RequestParams
          class Canceled < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            attr_accessor :additional_documentation
            # Date when order was canceled.
            attr_accessor :canceled_at
            # Whether the cardholder was provided with a cancellation policy.
            attr_accessor :cancellation_policy_provided
            # Reason for canceling the order.
            attr_accessor :cancellation_reason
            # Date when the cardholder expected to receive the product.
            attr_accessor :expected_at
            # Explanation of why the cardholder is disputing this transaction.
            attr_accessor :explanation
            # Description of the merchandise or service that was purchased.
            attr_accessor :product_description
            # Whether the product was a merchandise or service.
            attr_accessor :product_type
            # Result of cardholder's attempt to return the product.
            attr_accessor :return_status
            # Date when the product was returned or attempted to be returned.
            attr_accessor :returned_at

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
            )
              @additional_documentation = additional_documentation
              @canceled_at = canceled_at
              @cancellation_policy_provided = cancellation_policy_provided
              @cancellation_reason = cancellation_reason
              @expected_at = expected_at
              @explanation = explanation
              @product_description = product_description
              @product_type = product_type
              @return_status = return_status
              @returned_at = returned_at
            end
          end

          class Duplicate < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            attr_accessor :additional_documentation
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Copy of the card statement showing that the product had already been paid for.
            attr_accessor :card_statement
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Copy of the receipt showing that the product had been paid for in cash.
            attr_accessor :cash_receipt
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Image of the front and back of the check that was used to pay for the product.
            attr_accessor :check_image
            # Explanation of why the cardholder is disputing this transaction.
            attr_accessor :explanation
            # Transaction (e.g., ipi_...) that the disputed transaction is a duplicate of. Of the two or more transactions that are copies of each other, this is original undisputed one.
            attr_accessor :original_transaction

            def initialize(
              additional_documentation: nil,
              card_statement: nil,
              cash_receipt: nil,
              check_image: nil,
              explanation: nil,
              original_transaction: nil
            )
              @additional_documentation = additional_documentation
              @card_statement = card_statement
              @cash_receipt = cash_receipt
              @check_image = check_image
              @explanation = explanation
              @original_transaction = original_transaction
            end
          end

          class Fraudulent < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            attr_accessor :additional_documentation
            # Explanation of why the cardholder is disputing this transaction.
            attr_accessor :explanation

            def initialize(additional_documentation: nil, explanation: nil)
              @additional_documentation = additional_documentation
              @explanation = explanation
            end
          end

          class MerchandiseNotAsDescribed < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            attr_accessor :additional_documentation
            # Explanation of why the cardholder is disputing this transaction.
            attr_accessor :explanation
            # Date when the product was received.
            attr_accessor :received_at
            # Description of the cardholder's attempt to return the product.
            attr_accessor :return_description
            # Result of cardholder's attempt to return the product.
            attr_accessor :return_status
            # Date when the product was returned or attempted to be returned.
            attr_accessor :returned_at

            def initialize(
              additional_documentation: nil,
              explanation: nil,
              received_at: nil,
              return_description: nil,
              return_status: nil,
              returned_at: nil
            )
              @additional_documentation = additional_documentation
              @explanation = explanation
              @received_at = received_at
              @return_description = return_description
              @return_status = return_status
              @returned_at = returned_at
            end
          end

          class NoValidAuthorization < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            attr_accessor :additional_documentation
            # Explanation of why the cardholder is disputing this transaction.
            attr_accessor :explanation

            def initialize(additional_documentation: nil, explanation: nil)
              @additional_documentation = additional_documentation
              @explanation = explanation
            end
          end

          class NotReceived < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            attr_accessor :additional_documentation
            # Date when the cardholder expected to receive the product.
            attr_accessor :expected_at
            # Explanation of why the cardholder is disputing this transaction.
            attr_accessor :explanation
            # Description of the merchandise or service that was purchased.
            attr_accessor :product_description
            # Whether the product was a merchandise or service.
            attr_accessor :product_type

            def initialize(
              additional_documentation: nil,
              expected_at: nil,
              explanation: nil,
              product_description: nil,
              product_type: nil
            )
              @additional_documentation = additional_documentation
              @expected_at = expected_at
              @explanation = explanation
              @product_description = product_description
              @product_type = product_type
            end
          end

          class Other < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            attr_accessor :additional_documentation
            # Explanation of why the cardholder is disputing this transaction.
            attr_accessor :explanation
            # Description of the merchandise or service that was purchased.
            attr_accessor :product_description
            # Whether the product was a merchandise or service.
            attr_accessor :product_type

            def initialize(
              additional_documentation: nil,
              explanation: nil,
              product_description: nil,
              product_type: nil
            )
              @additional_documentation = additional_documentation
              @explanation = explanation
              @product_description = product_description
              @product_type = product_type
            end
          end

          class ServiceNotAsDescribed < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            attr_accessor :additional_documentation
            # Date when order was canceled.
            attr_accessor :canceled_at
            # Reason for canceling the order.
            attr_accessor :cancellation_reason
            # Explanation of why the cardholder is disputing this transaction.
            attr_accessor :explanation
            # Date when the product was received.
            attr_accessor :received_at

            def initialize(
              additional_documentation: nil,
              canceled_at: nil,
              cancellation_reason: nil,
              explanation: nil,
              received_at: nil
            )
              @additional_documentation = additional_documentation
              @canceled_at = canceled_at
              @cancellation_reason = cancellation_reason
              @explanation = explanation
              @received_at = received_at
            end
          end
          # Evidence provided when `reason` is 'canceled'.
          attr_accessor :canceled
          # Evidence provided when `reason` is 'duplicate'.
          attr_accessor :duplicate
          # Evidence provided when `reason` is 'fraudulent'.
          attr_accessor :fraudulent
          # Evidence provided when `reason` is 'merchandise_not_as_described'.
          attr_accessor :merchandise_not_as_described
          # Evidence provided when `reason` is 'no_valid_authorization'.
          attr_accessor :no_valid_authorization
          # Evidence provided when `reason` is 'not_received'.
          attr_accessor :not_received
          # Evidence provided when `reason` is 'other'.
          attr_accessor :other
          # The reason for filing the dispute. The evidence should be submitted in the field of the same name.
          attr_accessor :reason
          # Evidence provided when `reason` is 'service_not_as_described'.
          attr_accessor :service_not_as_described

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
          )
            @canceled = canceled
            @duplicate = duplicate
            @fraudulent = fraudulent
            @merchandise_not_as_described = merchandise_not_as_described
            @no_valid_authorization = no_valid_authorization
            @not_received = not_received
            @other = other
            @reason = reason
            @service_not_as_described = service_not_as_described
          end
        end

        class Treasury < Stripe::RequestParams
          # The ID of the ReceivedDebit to initiate an Issuings dispute for.
          attr_accessor :received_debit

          def initialize(received_debit: nil)
            @received_debit = received_debit
          end
        end
        # The dispute amount in the card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). If not set, defaults to the full transaction amount.
        attr_accessor :amount
        # Evidence provided for the dispute.
        attr_accessor :evidence
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The ID of the issuing transaction to create a dispute for. For transaction on Treasury FinancialAccounts, use `treasury.received_debit`.
        attr_accessor :transaction
        # Params for disputes related to Treasury FinancialAccounts
        attr_accessor :treasury

        def initialize(
          amount: nil,
          evidence: nil,
          expand: nil,
          metadata: nil,
          transaction: nil,
          treasury: nil
        )
          @amount = amount
          @evidence = evidence
          @expand = expand
          @metadata = metadata
          @transaction = transaction
          @treasury = treasury
        end
      end

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class UpdateParams < Stripe::RequestParams
        class Evidence < Stripe::RequestParams
          class Canceled < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            attr_accessor :additional_documentation
            # Date when order was canceled.
            attr_accessor :canceled_at
            # Whether the cardholder was provided with a cancellation policy.
            attr_accessor :cancellation_policy_provided
            # Reason for canceling the order.
            attr_accessor :cancellation_reason
            # Date when the cardholder expected to receive the product.
            attr_accessor :expected_at
            # Explanation of why the cardholder is disputing this transaction.
            attr_accessor :explanation
            # Description of the merchandise or service that was purchased.
            attr_accessor :product_description
            # Whether the product was a merchandise or service.
            attr_accessor :product_type
            # Result of cardholder's attempt to return the product.
            attr_accessor :return_status
            # Date when the product was returned or attempted to be returned.
            attr_accessor :returned_at

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
            )
              @additional_documentation = additional_documentation
              @canceled_at = canceled_at
              @cancellation_policy_provided = cancellation_policy_provided
              @cancellation_reason = cancellation_reason
              @expected_at = expected_at
              @explanation = explanation
              @product_description = product_description
              @product_type = product_type
              @return_status = return_status
              @returned_at = returned_at
            end
          end

          class Duplicate < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            attr_accessor :additional_documentation
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Copy of the card statement showing that the product had already been paid for.
            attr_accessor :card_statement
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Copy of the receipt showing that the product had been paid for in cash.
            attr_accessor :cash_receipt
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Image of the front and back of the check that was used to pay for the product.
            attr_accessor :check_image
            # Explanation of why the cardholder is disputing this transaction.
            attr_accessor :explanation
            # Transaction (e.g., ipi_...) that the disputed transaction is a duplicate of. Of the two or more transactions that are copies of each other, this is original undisputed one.
            attr_accessor :original_transaction

            def initialize(
              additional_documentation: nil,
              card_statement: nil,
              cash_receipt: nil,
              check_image: nil,
              explanation: nil,
              original_transaction: nil
            )
              @additional_documentation = additional_documentation
              @card_statement = card_statement
              @cash_receipt = cash_receipt
              @check_image = check_image
              @explanation = explanation
              @original_transaction = original_transaction
            end
          end

          class Fraudulent < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            attr_accessor :additional_documentation
            # Explanation of why the cardholder is disputing this transaction.
            attr_accessor :explanation

            def initialize(additional_documentation: nil, explanation: nil)
              @additional_documentation = additional_documentation
              @explanation = explanation
            end
          end

          class MerchandiseNotAsDescribed < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            attr_accessor :additional_documentation
            # Explanation of why the cardholder is disputing this transaction.
            attr_accessor :explanation
            # Date when the product was received.
            attr_accessor :received_at
            # Description of the cardholder's attempt to return the product.
            attr_accessor :return_description
            # Result of cardholder's attempt to return the product.
            attr_accessor :return_status
            # Date when the product was returned or attempted to be returned.
            attr_accessor :returned_at

            def initialize(
              additional_documentation: nil,
              explanation: nil,
              received_at: nil,
              return_description: nil,
              return_status: nil,
              returned_at: nil
            )
              @additional_documentation = additional_documentation
              @explanation = explanation
              @received_at = received_at
              @return_description = return_description
              @return_status = return_status
              @returned_at = returned_at
            end
          end

          class NoValidAuthorization < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            attr_accessor :additional_documentation
            # Explanation of why the cardholder is disputing this transaction.
            attr_accessor :explanation

            def initialize(additional_documentation: nil, explanation: nil)
              @additional_documentation = additional_documentation
              @explanation = explanation
            end
          end

          class NotReceived < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            attr_accessor :additional_documentation
            # Date when the cardholder expected to receive the product.
            attr_accessor :expected_at
            # Explanation of why the cardholder is disputing this transaction.
            attr_accessor :explanation
            # Description of the merchandise or service that was purchased.
            attr_accessor :product_description
            # Whether the product was a merchandise or service.
            attr_accessor :product_type

            def initialize(
              additional_documentation: nil,
              expected_at: nil,
              explanation: nil,
              product_description: nil,
              product_type: nil
            )
              @additional_documentation = additional_documentation
              @expected_at = expected_at
              @explanation = explanation
              @product_description = product_description
              @product_type = product_type
            end
          end

          class Other < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            attr_accessor :additional_documentation
            # Explanation of why the cardholder is disputing this transaction.
            attr_accessor :explanation
            # Description of the merchandise or service that was purchased.
            attr_accessor :product_description
            # Whether the product was a merchandise or service.
            attr_accessor :product_type

            def initialize(
              additional_documentation: nil,
              explanation: nil,
              product_description: nil,
              product_type: nil
            )
              @additional_documentation = additional_documentation
              @explanation = explanation
              @product_description = product_description
              @product_type = product_type
            end
          end

          class ServiceNotAsDescribed < Stripe::RequestParams
            # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
            attr_accessor :additional_documentation
            # Date when order was canceled.
            attr_accessor :canceled_at
            # Reason for canceling the order.
            attr_accessor :cancellation_reason
            # Explanation of why the cardholder is disputing this transaction.
            attr_accessor :explanation
            # Date when the product was received.
            attr_accessor :received_at

            def initialize(
              additional_documentation: nil,
              canceled_at: nil,
              cancellation_reason: nil,
              explanation: nil,
              received_at: nil
            )
              @additional_documentation = additional_documentation
              @canceled_at = canceled_at
              @cancellation_reason = cancellation_reason
              @explanation = explanation
              @received_at = received_at
            end
          end
          # Evidence provided when `reason` is 'canceled'.
          attr_accessor :canceled
          # Evidence provided when `reason` is 'duplicate'.
          attr_accessor :duplicate
          # Evidence provided when `reason` is 'fraudulent'.
          attr_accessor :fraudulent
          # Evidence provided when `reason` is 'merchandise_not_as_described'.
          attr_accessor :merchandise_not_as_described
          # Evidence provided when `reason` is 'no_valid_authorization'.
          attr_accessor :no_valid_authorization
          # Evidence provided when `reason` is 'not_received'.
          attr_accessor :not_received
          # Evidence provided when `reason` is 'other'.
          attr_accessor :other
          # The reason for filing the dispute. The evidence should be submitted in the field of the same name.
          attr_accessor :reason
          # Evidence provided when `reason` is 'service_not_as_described'.
          attr_accessor :service_not_as_described

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
          )
            @canceled = canceled
            @duplicate = duplicate
            @fraudulent = fraudulent
            @merchandise_not_as_described = merchandise_not_as_described
            @no_valid_authorization = no_valid_authorization
            @not_received = not_received
            @other = other
            @reason = reason
            @service_not_as_described = service_not_as_described
          end
        end
        # The dispute amount in the card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        attr_accessor :amount
        # Evidence provided for the dispute.
        attr_accessor :evidence
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata

        def initialize(amount: nil, evidence: nil, expand: nil, metadata: nil)
          @amount = amount
          @evidence = evidence
          @expand = expand
          @metadata = metadata
        end
      end

      class SubmitParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata

        def initialize(expand: nil, metadata: nil)
          @expand = expand
          @metadata = metadata
        end
      end

      # Creates an Issuing Dispute object. Individual pieces of evidence within the evidence object are optional at this point. Stripe only validates that required evidence is present during submission. Refer to [Dispute reasons and evidence](https://stripe.com/docs/issuing/purchases/disputes#dispute-reasons-and-evidence) for more details about evidence requirements.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/issuing/disputes",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of Issuing Dispute objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/issuing/disputes",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves an Issuing Dispute object.
      def retrieve(dispute, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/issuing/disputes/%<dispute>s", { dispute: CGI.escape(dispute) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Submits an Issuing Dispute to the card network. Stripe validates that all evidence fields required for the dispute's reason are present. For more details, see [Dispute reasons and evidence](https://stripe.com/docs/issuing/purchases/disputes#dispute-reasons-and-evidence).
      def submit(dispute, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/issuing/disputes/%<dispute>s/submit", { dispute: CGI.escape(dispute) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates the specified Issuing Dispute object by setting the values of the parameters passed. Any parameters not provided will be left unchanged. Properties on the evidence object can be unset by passing in an empty string.
      def update(dispute, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/issuing/disputes/%<dispute>s", { dispute: CGI.escape(dispute) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
