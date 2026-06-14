# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class DebitDisputeCreateParams < ::Stripe::RequestParams
        class BankTransfer < ::Stripe::RequestParams
          # The reason for the dispute.
          sig { returns(T.nilable(String)) }
          def reason; end
          sig { params(_reason: T.nilable(String)).returns(T.nilable(String)) }
          def reason=(_reason); end
          sig { params(reason: T.nilable(String)).void }
          def initialize(reason: nil); end
        end
        # Parameters for bank transfer disputes.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::DebitDisputeCreateParams::BankTransfer))
         }
        def bank_transfer; end
        sig {
          params(_bank_transfer: T.nilable(::Stripe::V2::MoneyManagement::DebitDisputeCreateParams::BankTransfer)).returns(T.nilable(::Stripe::V2::MoneyManagement::DebitDisputeCreateParams::BankTransfer))
         }
        def bank_transfer=(_bank_transfer); end
        # The ID of the ReceivedDebit to dispute.
        sig { returns(String) }
        def received_debit; end
        sig { params(_received_debit: String).returns(String) }
        def received_debit=(_received_debit); end
        sig {
          params(bank_transfer: T.nilable(::Stripe::V2::MoneyManagement::DebitDisputeCreateParams::BankTransfer), received_debit: String).void
         }
        def initialize(bank_transfer: nil, received_debit: nil); end
      end
    end
  end
end