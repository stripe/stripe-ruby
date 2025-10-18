# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountNoticeUpdateParams < ::Stripe::RequestParams
    class Email < ::Stripe::RequestParams
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
end
