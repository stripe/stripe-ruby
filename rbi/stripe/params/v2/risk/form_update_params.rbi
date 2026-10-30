# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Risk
      class FormUpdateParams < ::Stripe::RequestParams
        class Appeal < ::Stripe::RequestParams
          # A text explanation for the appeal.
          sig { returns(String) }
          def explanation; end
          sig { params(_explanation: String).returns(String) }
          def explanation=(_explanation); end
          sig { params(explanation: String).void }
          def initialize(explanation: nil); end
        end
        class AuthorizationDocuments < ::Stripe::RequestParams
          # IDs of uploaded files to attach as authorization documents.
          sig { returns(T::Array[String]) }
          def files; end
          sig { params(_files: T::Array[String]).returns(T::Array[String]) }
          def files=(_files); end
          sig { params(files: T::Array[String]).void }
          def initialize(files: nil); end
        end
        class ProductRemoval < ::Stripe::RequestParams
          # The timestamp when the prohibited items were removed.
          sig { returns(String) }
          def items_removed_at; end
          sig { params(_items_removed_at: String).returns(String) }
          def items_removed_at=(_items_removed_at); end
          sig { params(items_removed_at: String).void }
          def initialize(items_removed_at: nil); end
        end
        class SelfFundingContext < ::Stripe::RequestParams
          class SourceOfWealth < ::Stripe::RequestParams
            # A text explanation of the connected account's source of wealth.
            sig { returns(String) }
            def description; end
            sig { params(_description: String).returns(String) }
            def description=(_description); end
            # IDs of uploaded files evidencing the source of wealth.
            sig { returns(T::Array[String]) }
            def files; end
            sig { params(_files: T::Array[String]).returns(T::Array[String]) }
            def files=(_files); end
            sig { params(description: String, files: T::Array[String]).void }
            def initialize(description: nil, files: nil); end
          end
          # The connected account's source of wealth.
          sig {
            returns(T.nilable(::Stripe::V2::Risk::FormUpdateParams::SelfFundingContext::SourceOfWealth))
           }
          def source_of_wealth; end
          sig {
            params(_source_of_wealth: T.nilable(::Stripe::V2::Risk::FormUpdateParams::SelfFundingContext::SourceOfWealth)).returns(T.nilable(::Stripe::V2::Risk::FormUpdateParams::SelfFundingContext::SourceOfWealth))
           }
          def source_of_wealth=(_source_of_wealth); end
          sig {
            params(source_of_wealth: T.nilable(::Stripe::V2::Risk::FormUpdateParams::SelfFundingContext::SourceOfWealth)).void
           }
          def initialize(source_of_wealth: nil); end
        end
        class TransactionContext < ::Stripe::RequestParams
          class SourceOfFunds < ::Stripe::RequestParams
            # A text explanation of where the funds for the transaction came from.
            sig { returns(String) }
            def description; end
            sig { params(_description: String).returns(String) }
            def description=(_description); end
            # IDs of uploaded files evidencing the source of funds.
            sig { returns(T::Array[String]) }
            def files; end
            sig { params(_files: T::Array[String]).returns(T::Array[String]) }
            def files=(_files); end
            sig { params(description: String, files: T::Array[String]).void }
            def initialize(description: nil, files: nil); end
          end
          # The purpose of the transaction.
          sig { returns(String) }
          def purpose; end
          sig { params(_purpose: String).returns(String) }
          def purpose=(_purpose); end
          # The connected account's relationship to the sender. Optional.
          sig { returns(T.nilable(String)) }
          def sender_relationship; end
          sig { params(_sender_relationship: T.nilable(String)).returns(T.nilable(String)) }
          def sender_relationship=(_sender_relationship); end
          # Where the funds for the transaction came from.
          sig {
            returns(T.nilable(::Stripe::V2::Risk::FormUpdateParams::TransactionContext::SourceOfFunds))
           }
          def source_of_funds; end
          sig {
            params(_source_of_funds: T.nilable(::Stripe::V2::Risk::FormUpdateParams::TransactionContext::SourceOfFunds)).returns(T.nilable(::Stripe::V2::Risk::FormUpdateParams::TransactionContext::SourceOfFunds))
           }
          def source_of_funds=(_source_of_funds); end
          # How the funds from the transaction will be used.
          sig { returns(String) }
          def use_of_funds; end
          sig { params(_use_of_funds: String).returns(String) }
          def use_of_funds=(_use_of_funds); end
          sig {
            params(purpose: String, sender_relationship: T.nilable(String), source_of_funds: T.nilable(::Stripe::V2::Risk::FormUpdateParams::TransactionContext::SourceOfFunds), use_of_funds: String).void
           }
          def initialize(
            purpose: nil,
            sender_relationship: nil,
            source_of_funds: nil,
            use_of_funds: nil
          ); end
        end
        # Provide this for appeal inquiries.
        sig { returns(T.nilable(::Stripe::V2::Risk::FormUpdateParams::Appeal)) }
        def appeal; end
        sig {
          params(_appeal: T.nilable(::Stripe::V2::Risk::FormUpdateParams::Appeal)).returns(T.nilable(::Stripe::V2::Risk::FormUpdateParams::Appeal))
         }
        def appeal=(_appeal); end
        # Provide this for authorization_documents inquiries.
        sig { returns(T.nilable(::Stripe::V2::Risk::FormUpdateParams::AuthorizationDocuments)) }
        def authorization_documents; end
        sig {
          params(_authorization_documents: T.nilable(::Stripe::V2::Risk::FormUpdateParams::AuthorizationDocuments)).returns(T.nilable(::Stripe::V2::Risk::FormUpdateParams::AuthorizationDocuments))
         }
        def authorization_documents=(_authorization_documents); end
        # Provide this for product_removal inquiries.
        sig { returns(T.nilable(::Stripe::V2::Risk::FormUpdateParams::ProductRemoval)) }
        def product_removal; end
        sig {
          params(_product_removal: T.nilable(::Stripe::V2::Risk::FormUpdateParams::ProductRemoval)).returns(T.nilable(::Stripe::V2::Risk::FormUpdateParams::ProductRemoval))
         }
        def product_removal=(_product_removal); end
        # Provide this for self_funding_context inquiries.
        sig { returns(T.nilable(::Stripe::V2::Risk::FormUpdateParams::SelfFundingContext)) }
        def self_funding_context; end
        sig {
          params(_self_funding_context: T.nilable(::Stripe::V2::Risk::FormUpdateParams::SelfFundingContext)).returns(T.nilable(::Stripe::V2::Risk::FormUpdateParams::SelfFundingContext))
         }
        def self_funding_context=(_self_funding_context); end
        # Provide this for transaction_context inquiries.
        sig { returns(T.nilable(::Stripe::V2::Risk::FormUpdateParams::TransactionContext)) }
        def transaction_context; end
        sig {
          params(_transaction_context: T.nilable(::Stripe::V2::Risk::FormUpdateParams::TransactionContext)).returns(T.nilable(::Stripe::V2::Risk::FormUpdateParams::TransactionContext))
         }
        def transaction_context=(_transaction_context); end
        sig {
          params(appeal: T.nilable(::Stripe::V2::Risk::FormUpdateParams::Appeal), authorization_documents: T.nilable(::Stripe::V2::Risk::FormUpdateParams::AuthorizationDocuments), product_removal: T.nilable(::Stripe::V2::Risk::FormUpdateParams::ProductRemoval), self_funding_context: T.nilable(::Stripe::V2::Risk::FormUpdateParams::SelfFundingContext), transaction_context: T.nilable(::Stripe::V2::Risk::FormUpdateParams::TransactionContext)).void
         }
        def initialize(
          appeal: nil,
          authorization_documents: nil,
          product_removal: nil,
          self_funding_context: nil,
          transaction_context: nil
        ); end
      end
    end
  end
end