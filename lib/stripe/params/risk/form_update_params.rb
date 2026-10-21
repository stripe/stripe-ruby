# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Risk
    class FormUpdateParams < ::Stripe::RequestParams
      class Appeal < ::Stripe::RequestParams
        # A text explanation for the appeal.
        attr_accessor :explanation

        def initialize(explanation: nil)
          @explanation = explanation
        end
      end

      class AuthorizationDocuments < ::Stripe::RequestParams
        # IDs of uploaded files to attach as authorization documents.
        attr_accessor :files

        def initialize(files: nil)
          @files = files
        end
      end

      class PaymentProcessing < ::Stripe::RequestParams
        class MultiProcessor < ::Stripe::RequestParams
          class File < ::Stripe::RequestParams
            # ID of the uploaded file. Upload using /v1/files before referencing it here.
            attr_accessor :file
            # What kind of document this is. One of alt_financial_statements, recent_bank_statements, or payment_receipt.
            attr_accessor :tag

            def initialize(file: nil, tag: nil)
              @file = file
              @tag = tag
            end
          end
          # Files evidencing payments accepted outside Stripe. Each entry carries a tag naming the document type so a reviewer can distinguish statement types without opening the file.
          attr_accessor :files
          # Whether the connected account accepts payments outside Stripe.
          attr_accessor :value

          def initialize(files: nil, value: nil)
            @files = files
            @value = value
          end
        end
        # Payments the connected account accepts outside Stripe.
        attr_accessor :multi_processor
        # How the connected account uses Stripe.
        attr_accessor :purpose
        # Why the connected account chose Stripe.
        attr_accessor :stripe_selection_rationale

        def initialize(multi_processor: nil, purpose: nil, stripe_selection_rationale: nil)
          @multi_processor = multi_processor
          @purpose = purpose
          @stripe_selection_rationale = stripe_selection_rationale
        end
      end

      class ProductRemoval < ::Stripe::RequestParams
        # The Unix timestamp when the prohibited items were removed.
        attr_accessor :items_removed_at

        def initialize(items_removed_at: nil)
          @items_removed_at = items_removed_at
        end
      end

      class ReviewedFields < ::Stripe::RequestParams
        class Attestation < ::Stripe::RequestParams
          # The Unix timestamp when the connected account attested to these fields.
          attr_accessor :attested_at
          # Account field paths in the currently accepted v2 Accounts API format, for example `defaults.profile.product_description`.
          attr_accessor :fields

          def initialize(attested_at: nil, fields: nil)
            @attested_at = attested_at
            @fields = fields
          end
        end
        # The connected account's attestation that the named account field values are accurate. Update inaccurate values through the Accounts API before attesting.
        attr_accessor :attestation

        def initialize(attestation: nil)
          @attestation = attestation
        end
      end

      class SelfFundingContext < ::Stripe::RequestParams
        class SourceOfWealth < ::Stripe::RequestParams
          # A text explanation of the connected account's source of wealth.
          attr_accessor :description
          # IDs of uploaded files evidencing the source of wealth.
          attr_accessor :files

          def initialize(description: nil, files: nil)
            @description = description
            @files = files
          end
        end
        # The connected account's source of wealth.
        attr_accessor :source_of_wealth

        def initialize(source_of_wealth: nil)
          @source_of_wealth = source_of_wealth
        end
      end

      class TransactionContext < ::Stripe::RequestParams
        class SourceOfFunds < ::Stripe::RequestParams
          # A text explanation of where the funds for the transaction came from.
          attr_accessor :description
          # IDs of uploaded files evidencing the source of funds.
          attr_accessor :files

          def initialize(description: nil, files: nil)
            @description = description
            @files = files
          end
        end
        # How often the connected account expects transactions like this one. One of one_time_payment, recurring_subscription, repeat_customer, split_payment, or something_else.
        attr_accessor :frequency
        # The purpose of the transaction.
        attr_accessor :purpose
        # IDs of uploaded files evidencing the purpose of the transaction.
        attr_accessor :purpose_files
        # The connected account's relationship to the sender.
        attr_accessor :sender_relationship
        # Where the funds for the transaction came from.
        attr_accessor :source_of_funds
        # How the funds from the transaction will be used.
        attr_accessor :use_of_funds

        def initialize(
          frequency: nil,
          purpose: nil,
          purpose_files: nil,
          sender_relationship: nil,
          source_of_funds: nil,
          use_of_funds: nil
        )
          @frequency = frequency
          @purpose = purpose
          @purpose_files = purpose_files
          @sender_relationship = sender_relationship
          @source_of_funds = source_of_funds
          @use_of_funds = use_of_funds
        end
      end
      # Provide this for Forms of type `appeal`.
      attr_accessor :appeal
      # Provide this for Forms of type `authorization_documents`.
      attr_accessor :authorization_documents
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Provide this for Forms of type `payment_processing`.
      attr_accessor :payment_processing
      # Provide this for Forms of type `product_removal`.
      attr_accessor :product_removal
      # Provide this for Forms of type `reviewed_fields`.
      attr_accessor :reviewed_fields
      # Provide this for Forms of type `self_funding_context`.
      attr_accessor :self_funding_context
      # Provide this for Forms of type `transaction_context`.
      attr_accessor :transaction_context

      def initialize(
        appeal: nil,
        authorization_documents: nil,
        expand: nil,
        payment_processing: nil,
        product_removal: nil,
        reviewed_fields: nil,
        self_funding_context: nil,
        transaction_context: nil
      )
        @appeal = appeal
        @authorization_documents = authorization_documents
        @expand = expand
        @payment_processing = payment_processing
        @product_removal = product_removal
        @reviewed_fields = reviewed_fields
        @self_funding_context = self_funding_context
        @transaction_context = transaction_context
      end
    end
  end
end
