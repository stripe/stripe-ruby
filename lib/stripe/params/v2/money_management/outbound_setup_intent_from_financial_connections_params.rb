# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class OutboundSetupIntentFromFinancialConnectionsParams < ::Stripe::RequestParams
        # Used to create a US Bank Account directly from a Financial Connections Account.
        attr_accessor :financial_connections_account
        # Used to create a US Bank Account from the internal-only "payment account" associated with a Financial Connections
        # Session. Only useful when the Session completed with manual entry (i.e. there is no Financial Connections Account).
        attr_accessor :financial_connections_session
        # Specify which type of outbound money movement this credential should be set up for (payment | transfer).
        # If not provided, defaults to payment.
        attr_accessor :usage_intent

        def initialize(
          financial_connections_account: nil,
          financial_connections_session: nil,
          usage_intent: nil
        )
          @financial_connections_account = financial_connections_account
          @financial_connections_session = financial_connections_session
          @usage_intent = usage_intent
        end
      end
    end
  end
end
