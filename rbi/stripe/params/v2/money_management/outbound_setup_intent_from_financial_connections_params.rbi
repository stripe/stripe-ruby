# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class OutboundSetupIntentFromFinancialConnectionsParams < ::Stripe::RequestParams
        # Used to create a US Bank Account directly from a Financial Connections Account.
        sig { returns(T.nilable(String)) }
        def financial_connections_account; end
        sig { params(_financial_connections_account: T.nilable(String)).returns(T.nilable(String)) }
        def financial_connections_account=(_financial_connections_account); end
        # Used to create a US Bank Account from the internal-only "payment account" associated with a Financial Connections
        # Session. Only useful when the Session completed with manual entry (i.e. there is no Financial Connections Account).
        sig { returns(T.nilable(String)) }
        def financial_connections_session; end
        sig { params(_financial_connections_session: T.nilable(String)).returns(T.nilable(String)) }
        def financial_connections_session=(_financial_connections_session); end
        # Specify which type of outbound money movement this credential should be set up for (payment | transfer).
        # If not provided, defaults to payment.
        sig { returns(T.nilable(String)) }
        def usage_intent; end
        sig { params(_usage_intent: T.nilable(String)).returns(T.nilable(String)) }
        def usage_intent=(_usage_intent); end
        sig {
          params(financial_connections_account: T.nilable(String), financial_connections_session: T.nilable(String), usage_intent: T.nilable(String)).void
         }
        def initialize(
          financial_connections_account: nil,
          financial_connections_session: nil,
          usage_intent: nil
        ); end
      end
    end
  end
end