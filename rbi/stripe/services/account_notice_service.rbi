# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class AccountNoticeService < StripeService
    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(String) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # Set to false to only return unsent AccountNotices.
      sig { returns(T::Boolean) }
      attr_accessor :sent
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(String) }
      attr_accessor :starting_after
      sig {
        params(ending_before: String, expand: T::Array[String], limit: Integer, sent: T::Boolean, starting_after: String).void
       }
      def initialize(
        ending_before: nil,
        expand: nil,
        limit: nil,
        sent: nil,
        starting_after: nil
      ); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class Email < Stripe::RequestParams
        # Content of the email in plain text. The copy must match exactly the language that Stripe Compliance has approved for use.
        sig { returns(String) }
        attr_accessor :plain_text
        # Email address of the recipient.
        sig { returns(String) }
        attr_accessor :recipient
        # Subject of the email.
        sig { returns(String) }
        attr_accessor :subject
        sig { params(plain_text: String, recipient: String, subject: String).void }
        def initialize(plain_text: nil, recipient: nil, subject: nil); end
      end
      # Information about the email you sent.
      sig { returns(::Stripe::AccountNoticeService::UpdateParams::Email) }
      attr_accessor :email
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata
      # Date when you sent the notice.
      sig { returns(Integer) }
      attr_accessor :sent_at
      sig {
        params(email: ::Stripe::AccountNoticeService::UpdateParams::Email, expand: T::Array[String], metadata: T::Hash[String, String], sent_at: Integer).void
       }
      def initialize(email: nil, expand: nil, metadata: nil, sent_at: nil); end
    end
    # Retrieves a list of AccountNotice objects. The objects are sorted in descending order by creation date, with the most-recently-created object appearing first.
    sig {
      params(params: T.any(::Stripe::AccountNoticeService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves an AccountNotice object.
    sig {
      params(account_notice: String, params: T.any(::Stripe::AccountNoticeService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::AccountNotice)
     }
    def retrieve(account_notice, params = {}, opts = {}); end

    # Updates an AccountNotice object.
    sig {
      params(account_notice: String, params: T.any(::Stripe::AccountNoticeService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::AccountNotice)
     }
    def update(account_notice, params = {}, opts = {}); end
  end
end