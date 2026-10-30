# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module Contracts
        class TermService < StripeService
          attr_reader :quantity_changes

          def initialize(requestor)
            super
            @quantity_changes = Stripe::V2::Billing::Contracts::Terms::QuantityChangeService
                                .new(@requestor)
          end

          # List the terms on a contract, optionally filtered by type.
          def list_contract_terms(contract_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/contracts/%<contract_id>s/terms", { contract_id: CGI.escape(contract_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve a term on a contract.
          def retrieve_contract_term(contract_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/contracts/%<contract_id>s/terms/%<id>s", { contract_id: CGI.escape(contract_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end
        end
      end
    end
  end
end
