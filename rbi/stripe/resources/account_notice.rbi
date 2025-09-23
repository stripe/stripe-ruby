# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A notice to a Connected account. Notice can be sent by Stripe on your behalf or you can opt to send the notices yourself.
  #
  # See the [guide to send notices](https://stripe.com/docs/issuing/compliance-us/issuing-regulated-customer-notices) to your connected accounts.
  class AccountNotice < APIResource
    class Email < Stripe::StripeObject
      # Content of the email in plain text. The copy must match exactly the language that Stripe Compliance has approved for use.
      sig { returns(String) }
      def plain_text; end
      # Email address of the recipient.
      sig { returns(String) }
      def recipient; end
      # Subject of the email.
      sig { returns(String) }
      def subject; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class LinkedObjects < Stripe::StripeObject
      # Associated [Capability](https://stripe.com/docs/api/capabilities)
      sig { returns(T.nilable(String)) }
      def capability; end
      # Associated [Credit Underwriting Record](https://stripe.com/docs/api/issuing/credit_underwriting_record)
      sig { returns(T.nilable(String)) }
      def issuing_credit_underwriting_record; end
      # Associated [Issuing Dispute](https://stripe.com/docs/api/issuing/disputes)
      sig { returns(T.nilable(String)) }
      def issuing_dispute; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # When present, the deadline for sending the notice to meet the relevant regulations.
    sig { returns(T.nilable(Integer)) }
    def deadline; end
    # Information about the email when sent.
    sig { returns(T.nilable(Email)) }
    def email; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # Information about objects related to the notice.
    sig { returns(T.nilable(LinkedObjects)) }
    def linked_objects; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Reason the notice is being sent. The reason determines what copy the notice must contain. See the [regulated customer notices](https://stripe.com/docs/issuing/compliance-us/issuing-regulated-customer-notices) guide. All reasons might not apply to your integration, and Stripe might add new reasons in the future, so we recommend an internal warning when you receive an unknown reason.
    sig { returns(String) }
    def reason; end
    # Date when the notice was sent. When absent, you must send the notice, update the content of the email and date when it was sent.
    sig { returns(T.nilable(Integer)) }
    def sent_at; end
    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      def ending_before; end
      sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
      def ending_before=(_ending_before); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # Set to false to only return unsent AccountNotices.
      sig { returns(T.nilable(T::Boolean)) }
      def sent; end
      sig { params(_sent: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def sent=(_sent); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), sent: T.nilable(T::Boolean), starting_after: T.nilable(String)).void
       }
      def initialize(
        ending_before: nil,
        expand: nil,
        limit: nil,
        sent: nil,
        starting_after: nil
      ); end
    end
    class UpdateParams < Stripe::RequestParams
      class Email < Stripe::RequestParams
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
      sig { returns(::Stripe::AccountNotice::UpdateParams::Email) }
      def email; end
      sig {
        params(_email: ::Stripe::AccountNotice::UpdateParams::Email).returns(::Stripe::AccountNotice::UpdateParams::Email)
       }
      def email=(_email); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
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
        params(email: ::Stripe::AccountNotice::UpdateParams::Email, expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), sent_at: Integer).void
       }
      def initialize(email: nil, expand: nil, metadata: nil, sent_at: nil); end
    end
    # Retrieves a list of AccountNotice objects. The objects are sorted in descending order by creation date, with the most-recently-created object appearing first.
    sig {
      params(params: T.any(::Stripe::AccountNotice::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Updates an AccountNotice object.
    sig {
      params(account_notice: String, params: T.any(::Stripe::AccountNotice::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::AccountNotice)
     }
    def self.update(account_notice, params = {}, opts = {}); end
  end
end