# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
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

        class ProductRemoval < ::Stripe::RequestParams
          # The timestamp when the prohibited items were removed.
          attr_accessor :items_removed_at

          def initialize(items_removed_at: nil)
            @items_removed_at = items_removed_at
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
          # The purpose of the transaction.
          attr_accessor :purpose
          # The connected account's relationship to the sender. Optional.
          attr_accessor :sender_relationship
          # Where the funds for the transaction came from.
          attr_accessor :source_of_funds
          # How the funds from the transaction will be used.
          attr_accessor :use_of_funds

          def initialize(
            purpose: nil,
            sender_relationship: nil,
            source_of_funds: nil,
            use_of_funds: nil
          )
            @purpose = purpose
            @sender_relationship = sender_relationship
            @source_of_funds = source_of_funds
            @use_of_funds = use_of_funds
          end
        end
        # Provide this for appeal inquiries.
        attr_accessor :appeal
        # Provide this for authorization_documents inquiries.
        attr_accessor :authorization_documents
        # Provide this for product_removal inquiries.
        attr_accessor :product_removal
        # Provide this for self_funding_context inquiries.
        attr_accessor :self_funding_context
        # Provide this for transaction_context inquiries.
        attr_accessor :transaction_context

        def initialize(
          appeal: nil,
          authorization_documents: nil,
          product_removal: nil,
          self_funding_context: nil,
          transaction_context: nil
        )
          @appeal = appeal
          @authorization_documents = authorization_documents
          @product_removal = product_removal
          @self_funding_context = self_funding_context
          @transaction_context = transaction_context
        end
      end
    end
  end
end
