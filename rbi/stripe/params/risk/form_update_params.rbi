# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
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
      class PaymentProcessing < ::Stripe::RequestParams
        class MultiProcessor < ::Stripe::RequestParams
          class File < ::Stripe::RequestParams
            # ID of the uploaded file. Upload using /v1/files before referencing it here.
            sig { returns(String) }
            def file; end
            sig { params(_file: String).returns(String) }
            def file=(_file); end
            # What kind of document this is. One of alt_financial_statements, recent_bank_statements, or payment_receipt.
            sig { returns(T.nilable(String)) }
            def tag; end
            sig { params(_tag: T.nilable(String)).returns(T.nilable(String)) }
            def tag=(_tag); end
            sig { params(file: String, tag: T.nilable(String)).void }
            def initialize(file: nil, tag: nil); end
          end
          # Files evidencing payments accepted outside Stripe. Each entry carries a tag naming the document type so a reviewer can distinguish statement types without opening the file.
          sig {
            returns(T.nilable(T::Array[::Stripe::Risk::FormUpdateParams::PaymentProcessing::MultiProcessor::File]))
           }
          def files; end
          sig {
            params(_files: T.nilable(T::Array[::Stripe::Risk::FormUpdateParams::PaymentProcessing::MultiProcessor::File])).returns(T.nilable(T::Array[::Stripe::Risk::FormUpdateParams::PaymentProcessing::MultiProcessor::File]))
           }
          def files=(_files); end
          # Whether the connected account accepts payments outside Stripe.
          sig { returns(T.nilable(String)) }
          def value; end
          sig { params(_value: T.nilable(String)).returns(T.nilable(String)) }
          def value=(_value); end
          sig {
            params(files: T.nilable(T::Array[::Stripe::Risk::FormUpdateParams::PaymentProcessing::MultiProcessor::File]), value: T.nilable(String)).void
           }
          def initialize(files: nil, value: nil); end
        end
        # Payments the connected account accepts outside Stripe.
        sig {
          returns(T.nilable(::Stripe::Risk::FormUpdateParams::PaymentProcessing::MultiProcessor))
         }
        def multi_processor; end
        sig {
          params(_multi_processor: T.nilable(::Stripe::Risk::FormUpdateParams::PaymentProcessing::MultiProcessor)).returns(T.nilable(::Stripe::Risk::FormUpdateParams::PaymentProcessing::MultiProcessor))
         }
        def multi_processor=(_multi_processor); end
        # How the connected account uses Stripe.
        sig { returns(T.nilable(String)) }
        def purpose; end
        sig { params(_purpose: T.nilable(String)).returns(T.nilable(String)) }
        def purpose=(_purpose); end
        # Why the connected account chose Stripe.
        sig { returns(T.nilable(String)) }
        def stripe_selection_rationale; end
        sig { params(_stripe_selection_rationale: T.nilable(String)).returns(T.nilable(String)) }
        def stripe_selection_rationale=(_stripe_selection_rationale); end
        sig {
          params(multi_processor: T.nilable(::Stripe::Risk::FormUpdateParams::PaymentProcessing::MultiProcessor), purpose: T.nilable(String), stripe_selection_rationale: T.nilable(String)).void
         }
        def initialize(multi_processor: nil, purpose: nil, stripe_selection_rationale: nil); end
      end
      class ProductRemoval < ::Stripe::RequestParams
        # The Unix timestamp when the prohibited items were removed.
        sig { returns(Integer) }
        def items_removed_at; end
        sig { params(_items_removed_at: Integer).returns(Integer) }
        def items_removed_at=(_items_removed_at); end
        sig { params(items_removed_at: Integer).void }
        def initialize(items_removed_at: nil); end
      end
      class ReviewedFields < ::Stripe::RequestParams
        class Attestation < ::Stripe::RequestParams
          # The Unix timestamp when the connected account attested to these fields.
          sig { returns(T.nilable(Integer)) }
          def attested_at; end
          sig { params(_attested_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def attested_at=(_attested_at); end
          # Account field paths in the currently accepted v2 Accounts API format, for example `defaults.profile.product_description`.
          sig { returns(T.nilable(T::Array[String])) }
          def fields; end
          sig { params(_fields: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def fields=(_fields); end
          sig { params(attested_at: T.nilable(Integer), fields: T.nilable(T::Array[String])).void }
          def initialize(attested_at: nil, fields: nil); end
        end
        # The connected account's attestation that the named account field values are accurate. Update inaccurate values through the Accounts API before attesting.
        sig { returns(::Stripe::Risk::FormUpdateParams::ReviewedFields::Attestation) }
        def attestation; end
        sig {
          params(_attestation: ::Stripe::Risk::FormUpdateParams::ReviewedFields::Attestation).returns(::Stripe::Risk::FormUpdateParams::ReviewedFields::Attestation)
         }
        def attestation=(_attestation); end
        sig {
          params(attestation: ::Stripe::Risk::FormUpdateParams::ReviewedFields::Attestation).void
         }
        def initialize(attestation: nil); end
      end
      class SelfFundingContext < ::Stripe::RequestParams
        class SourceOfWealth < ::Stripe::RequestParams
          # A text explanation of the connected account's source of wealth.
          sig { returns(T.nilable(String)) }
          def description; end
          sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_description); end
          # IDs of uploaded files evidencing the source of wealth.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(description: T.nilable(String), files: T.nilable(T::Array[String])).void }
          def initialize(description: nil, files: nil); end
        end
        # The connected account's source of wealth.
        sig {
          returns(T.nilable(::Stripe::Risk::FormUpdateParams::SelfFundingContext::SourceOfWealth))
         }
        def source_of_wealth; end
        sig {
          params(_source_of_wealth: T.nilable(::Stripe::Risk::FormUpdateParams::SelfFundingContext::SourceOfWealth)).returns(T.nilable(::Stripe::Risk::FormUpdateParams::SelfFundingContext::SourceOfWealth))
         }
        def source_of_wealth=(_source_of_wealth); end
        sig {
          params(source_of_wealth: T.nilable(::Stripe::Risk::FormUpdateParams::SelfFundingContext::SourceOfWealth)).void
         }
        def initialize(source_of_wealth: nil); end
      end
      class TransactionContext < ::Stripe::RequestParams
        class SourceOfFunds < ::Stripe::RequestParams
          # A text explanation of where the funds for the transaction came from.
          sig { returns(T.nilable(String)) }
          def description; end
          sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_description); end
          # IDs of uploaded files evidencing the source of funds.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(description: T.nilable(String), files: T.nilable(T::Array[String])).void }
          def initialize(description: nil, files: nil); end
        end
        # How often the connected account expects transactions like this one. One of one_time_payment, recurring_subscription, repeat_customer, split_payment, or something_else.
        sig { returns(T.nilable(String)) }
        def frequency; end
        sig { params(_frequency: T.nilable(String)).returns(T.nilable(String)) }
        def frequency=(_frequency); end
        # The purpose of the transaction.
        sig { returns(T.nilable(String)) }
        def purpose; end
        sig { params(_purpose: T.nilable(String)).returns(T.nilable(String)) }
        def purpose=(_purpose); end
        # IDs of uploaded files evidencing the purpose of the transaction.
        sig { returns(T.nilable(T::Array[String])) }
        def purpose_files; end
        sig {
          params(_purpose_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def purpose_files=(_purpose_files); end
        # The connected account's relationship to the sender.
        sig { returns(T.nilable(String)) }
        def sender_relationship; end
        sig { params(_sender_relationship: T.nilable(String)).returns(T.nilable(String)) }
        def sender_relationship=(_sender_relationship); end
        # Where the funds for the transaction came from.
        sig {
          returns(T.nilable(::Stripe::Risk::FormUpdateParams::TransactionContext::SourceOfFunds))
         }
        def source_of_funds; end
        sig {
          params(_source_of_funds: T.nilable(::Stripe::Risk::FormUpdateParams::TransactionContext::SourceOfFunds)).returns(T.nilable(::Stripe::Risk::FormUpdateParams::TransactionContext::SourceOfFunds))
         }
        def source_of_funds=(_source_of_funds); end
        # How the funds from the transaction will be used.
        sig { returns(T.nilable(String)) }
        def use_of_funds; end
        sig { params(_use_of_funds: T.nilable(String)).returns(T.nilable(String)) }
        def use_of_funds=(_use_of_funds); end
        sig {
          params(frequency: T.nilable(String), purpose: T.nilable(String), purpose_files: T.nilable(T::Array[String]), sender_relationship: T.nilable(String), source_of_funds: T.nilable(::Stripe::Risk::FormUpdateParams::TransactionContext::SourceOfFunds), use_of_funds: T.nilable(String)).void
         }
        def initialize(
          frequency: nil,
          purpose: nil,
          purpose_files: nil,
          sender_relationship: nil,
          source_of_funds: nil,
          use_of_funds: nil
        ); end
      end
      # Provide this for Forms of type `appeal`.
      sig { returns(T.nilable(::Stripe::Risk::FormUpdateParams::Appeal)) }
      def appeal; end
      sig {
        params(_appeal: T.nilable(::Stripe::Risk::FormUpdateParams::Appeal)).returns(T.nilable(::Stripe::Risk::FormUpdateParams::Appeal))
       }
      def appeal=(_appeal); end
      # Provide this for Forms of type `authorization_documents`.
      sig { returns(T.nilable(::Stripe::Risk::FormUpdateParams::AuthorizationDocuments)) }
      def authorization_documents; end
      sig {
        params(_authorization_documents: T.nilable(::Stripe::Risk::FormUpdateParams::AuthorizationDocuments)).returns(T.nilable(::Stripe::Risk::FormUpdateParams::AuthorizationDocuments))
       }
      def authorization_documents=(_authorization_documents); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Provide this for Forms of type `payment_processing`.
      sig { returns(T.nilable(::Stripe::Risk::FormUpdateParams::PaymentProcessing)) }
      def payment_processing; end
      sig {
        params(_payment_processing: T.nilable(::Stripe::Risk::FormUpdateParams::PaymentProcessing)).returns(T.nilable(::Stripe::Risk::FormUpdateParams::PaymentProcessing))
       }
      def payment_processing=(_payment_processing); end
      # Provide this for Forms of type `product_removal`.
      sig { returns(T.nilable(::Stripe::Risk::FormUpdateParams::ProductRemoval)) }
      def product_removal; end
      sig {
        params(_product_removal: T.nilable(::Stripe::Risk::FormUpdateParams::ProductRemoval)).returns(T.nilable(::Stripe::Risk::FormUpdateParams::ProductRemoval))
       }
      def product_removal=(_product_removal); end
      # Provide this for Forms of type `reviewed_fields`.
      sig { returns(T.nilable(::Stripe::Risk::FormUpdateParams::ReviewedFields)) }
      def reviewed_fields; end
      sig {
        params(_reviewed_fields: T.nilable(::Stripe::Risk::FormUpdateParams::ReviewedFields)).returns(T.nilable(::Stripe::Risk::FormUpdateParams::ReviewedFields))
       }
      def reviewed_fields=(_reviewed_fields); end
      # Provide this for Forms of type `self_funding_context`.
      sig { returns(T.nilable(::Stripe::Risk::FormUpdateParams::SelfFundingContext)) }
      def self_funding_context; end
      sig {
        params(_self_funding_context: T.nilable(::Stripe::Risk::FormUpdateParams::SelfFundingContext)).returns(T.nilable(::Stripe::Risk::FormUpdateParams::SelfFundingContext))
       }
      def self_funding_context=(_self_funding_context); end
      # Provide this for Forms of type `transaction_context`.
      sig { returns(T.nilable(::Stripe::Risk::FormUpdateParams::TransactionContext)) }
      def transaction_context; end
      sig {
        params(_transaction_context: T.nilable(::Stripe::Risk::FormUpdateParams::TransactionContext)).returns(T.nilable(::Stripe::Risk::FormUpdateParams::TransactionContext))
       }
      def transaction_context=(_transaction_context); end
      sig {
        params(appeal: T.nilable(::Stripe::Risk::FormUpdateParams::Appeal), authorization_documents: T.nilable(::Stripe::Risk::FormUpdateParams::AuthorizationDocuments), expand: T.nilable(T::Array[String]), payment_processing: T.nilable(::Stripe::Risk::FormUpdateParams::PaymentProcessing), product_removal: T.nilable(::Stripe::Risk::FormUpdateParams::ProductRemoval), reviewed_fields: T.nilable(::Stripe::Risk::FormUpdateParams::ReviewedFields), self_funding_context: T.nilable(::Stripe::Risk::FormUpdateParams::SelfFundingContext), transaction_context: T.nilable(::Stripe::Risk::FormUpdateParams::TransactionContext)).void
       }
      def initialize(
        appeal: nil,
        authorization_documents: nil,
        expand: nil,
        payment_processing: nil,
        product_removal: nil,
        reviewed_fields: nil,
        self_funding_context: nil,
        transaction_context: nil
      ); end
    end
  end
end