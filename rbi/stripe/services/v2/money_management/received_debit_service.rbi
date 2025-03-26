# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class ReceivedDebitService < StripeService
        class ListParams < Stripe::RequestParams
          # The page limit.
          sig { returns(Integer) }
          attr_accessor :limit
          sig { params(limit: Integer).void }
          def initialize(limit: nil); end
        end
        class RetrieveParams < Stripe::RequestParams

        end
        # Retrieves a list of ReceivedDebits, given the selected filters.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::ReceivedDebitService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves a single ReceivedDebit by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::ReceivedDebitService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ReceivedDebit)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end