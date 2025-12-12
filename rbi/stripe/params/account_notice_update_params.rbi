# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class AccountNoticeUpdateParams < ::Stripe::RequestParams
    class Email < ::Stripe::RequestParams
      # Content of the email in plain text. The copy must match exactly the language that Stripe Compliance has approved for use.
      sig { returns(String) }
      def plain_text; end
      sig { params(_plain_text: String).returns(String) }
      def plain_text=(_plain_text); end
      # Email address of the recipient.
      sig { returns(String) }
      def recipient; end
      sig { params(_recipient: String).returns(String) }
      def recipient=(_recipient); end
      # Subject of the email.
      sig { returns(String) }
      def subject; end
      sig { params(_subject: String).returns(String) }
      def subject=(_subject); end
      sig { params(plain_text: String, recipient: String, subject: String).void }
      def initialize(plain_text: nil, recipient: nil, subject: nil); end
    end
    # Information about the email you sent.
    sig { returns(AccountNoticeUpdateParams::Email) }
    def email; end
    sig {
      params(_email: AccountNoticeUpdateParams::Email).returns(AccountNoticeUpdateParams::Email)
     }
    def email=(_email); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
     }
    def metadata=(_metadata); end
    # Date when you sent the notice.
    sig { returns(Integer) }
    def sent_at; end
    sig { params(_sent_at: Integer).returns(Integer) }
    def sent_at=(_sent_at); end
    sig {
      params(email: AccountNoticeUpdateParams::Email, expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), sent_at: Integer).void
     }
    def initialize(email: nil, expand: nil, metadata: nil, sent_at: nil); end
  end
end