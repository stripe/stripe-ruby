# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountNoticeService < StripeService
    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Set to false to only return unsent AccountNotices.
      attr_accessor :sent
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(ending_before: nil, expand: nil, limit: nil, sent: nil, starting_after: nil)
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @sent = sent
        @starting_after = starting_after
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateParams < Stripe::RequestParams
      class Email < Stripe::RequestParams
        # Content of the email in plain text. The copy must match exactly the language that Stripe Compliance has approved for use.
        attr_accessor :plain_text
        # Email address of the recipient.
        attr_accessor :recipient
        # Subject of the email.
        attr_accessor :subject

        def initialize(plain_text: nil, recipient: nil, subject: nil)
          @plain_text = plain_text
          @recipient = recipient
          @subject = subject
        end
      end
      # Information about the email you sent.
      attr_accessor :email
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Date when you sent the notice.
      attr_accessor :sent_at

      def initialize(email: nil, expand: nil, metadata: nil, sent_at: nil)
        @email = email
        @expand = expand
        @metadata = metadata
        @sent_at = sent_at
      end
    end

    # Retrieves a list of AccountNotice objects. The objects are sorted in descending order by creation date, with the most-recently-created object appearing first.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/account_notices",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves an AccountNotice object.
    def retrieve(account_notice, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/account_notices/%<account_notice>s", { account_notice: CGI.escape(account_notice) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates an AccountNotice object.
    def update(account_notice, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/account_notices/%<account_notice>s", { account_notice: CGI.escape(account_notice) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
