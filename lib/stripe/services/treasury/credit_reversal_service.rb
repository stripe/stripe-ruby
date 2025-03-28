# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    class CreditReversalService < StripeService
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Returns objects associated with this FinancialAccount.
        attr_accessor :financial_account
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # Only return CreditReversals for the ReceivedCredit ID.
        attr_accessor :received_credit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # Only return CreditReversals for a given status.
        attr_accessor :status

        def initialize(
          ending_before: nil,
          expand: nil,
          financial_account: nil,
          limit: nil,
          received_credit: nil,
          starting_after: nil,
          status: nil
        )
          @ending_before = ending_before
          @expand = expand
          @financial_account = financial_account
          @limit = limit
          @received_credit = received_credit
          @starting_after = starting_after
          @status = status
        end
      end

      class CreateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The ReceivedCredit to reverse.
        attr_accessor :received_credit

        def initialize(expand: nil, metadata: nil, received_credit: nil)
          @expand = expand
          @metadata = metadata
          @received_credit = received_credit
        end
      end

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      # Reverses a ReceivedCredit and creates a CreditReversal object.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/treasury/credit_reversals",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of CreditReversals.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/treasury/credit_reversals",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of an existing CreditReversal by passing the unique CreditReversal ID from either the CreditReversal creation request or CreditReversal list
      def retrieve(credit_reversal, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/treasury/credit_reversals/%<credit_reversal>s", { credit_reversal: CGI.escape(credit_reversal) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
