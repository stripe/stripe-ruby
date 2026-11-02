# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module Contracts
        class TermService < StripeService
          attr_reader :quantity_changes
          # List the terms on a contract, optionally filtered by type.
          sig {
            params(contract_id: String, params: T.any(::Stripe::V2::Billing::Contracts::TermListContractTermsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
           }
          def list_contract_terms(contract_id, params = {}, opts = {}); end

          # Retrieve a term on a contract.
          sig {
            params(contract_id: String, id: String, params: T.any(::Stripe::V2::Billing::Contracts::TermRetrieveContractTermParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::ContractTerm)
           }
          def retrieve_contract_term(contract_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end