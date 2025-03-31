# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A notice to a Connected account. Notice can be sent by Stripe on your behalf or you can opt to send the notices yourself.
  #
  # See the [guide to send notices](https://stripe.com/docs/issuing/compliance-us/issuing-regulated-customer-notices) to your connected accounts.
  class AccountNotice < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "account_notice"
    def self.object_name
      "account_notice"
    end

    class Email < Stripe::StripeObject
      # Content of the email in plain text. The copy must match exactly the language that Stripe Compliance has approved for use.
      attr_reader :plain_text
      # Email address of the recipient.
      attr_reader :recipient
      # Subject of the email.
      attr_reader :subject
    end

    class LinkedObjects < Stripe::StripeObject
      # Associated [Capability](https://stripe.com/docs/api/capabilities)
      attr_reader :capability
      # Associated [Credit Underwriting Record](https://stripe.com/docs/api/issuing/credit_underwriting_record)
      attr_reader :issuing_credit_underwriting_record
      # Associated [Issuing Dispute](https://stripe.com/docs/api/issuing/disputes)
      attr_reader :issuing_dispute
    end

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
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # When present, the deadline for sending the notice to meet the relevant regulations.
    attr_reader :deadline
    # Information about the email when sent.
    attr_reader :email
    # Unique identifier for the object.
    attr_reader :id
    # Information about objects related to the notice.
    attr_reader :linked_objects
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Reason the notice is being sent. The reason determines what copy the notice must contain. See the [regulated customer notices](https://stripe.com/docs/issuing/compliance-us/issuing-regulated-customer-notices) guide. All reasons might not apply to your integration, and Stripe might add new reasons in the future, so we recommend an internal warning when you receive an unknown reason.
    attr_reader :reason
    # Date when the notice was sent. When absent, you must send the notice, update the content of the email and date when it was sent.
    attr_reader :sent_at

    # Retrieves a list of AccountNotice objects. The objects are sorted in descending order by creation date, with the most-recently-created object appearing first.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/account_notices", params: params, opts: opts)
    end

    # Updates an AccountNotice object.
    def self.update(account_notice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/account_notices/%<account_notice>s", { account_notice: CGI.escape(account_notice) }),
        params: params,
        opts: opts
      )
    end
  end
end
