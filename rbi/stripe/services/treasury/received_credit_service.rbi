# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    class ReceivedCreditService < StripeService
      class ListParams < Stripe::RequestParams
        class LinkedFlows < Stripe::RequestParams
          # The source flow type.
          sig { returns(String) }
          attr_accessor :source_flow_type
          sig { params(source_flow_type: String).void }
          def initialize(source_flow_type: nil); end
        end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(String) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # The FinancialAccount that received the funds.
        sig { returns(String) }
        attr_accessor :financial_account
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(Integer) }
        attr_accessor :limit
        # Only return ReceivedCredits described by the flow.
        sig { returns(::Stripe::Treasury::ReceivedCreditService::ListParams::LinkedFlows) }
        attr_accessor :linked_flows
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(String) }
        attr_accessor :starting_after
        # Only return ReceivedCredits that have the given status: `succeeded` or `failed`.
        sig { returns(String) }
        attr_accessor :status
        sig {
          params(ending_before: String, expand: T::Array[String], financial_account: String, limit: Integer, linked_flows: ::Stripe::Treasury::ReceivedCreditService::ListParams::LinkedFlows, starting_after: String, status: String).void
         }
        def initialize(
          ending_before: nil,
          expand: nil,
          financial_account: nil,
          limit: nil,
          linked_flows: nil,
          starting_after: nil,
          status: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      # Returns a list of ReceivedCredits.
      sig {
        params(params: T.any(::Stripe::Treasury::ReceivedCreditService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves the details of an existing ReceivedCredit by passing the unique ReceivedCredit ID from the ReceivedCredit list.
      sig {
        params(id: String, params: T.any(::Stripe::Treasury::ReceivedCreditService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::ReceivedCredit)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end