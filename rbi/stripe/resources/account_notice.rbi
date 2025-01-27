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
      attr_reader :plain_text
      # Email address of the recipient.
      sig { returns(String) }
      attr_reader :recipient
      # Subject of the email.
      sig { returns(String) }
      attr_reader :subject
    end
    class LinkedObjects < Stripe::StripeObject
      # Associated [Capability](https://stripe.com/docs/api/capabilities)
      sig { returns(T.nilable(String)) }
      attr_reader :capability
      # Associated [Credit Underwriting Record](https://stripe.com/docs/api/issuing/credit_underwriting_record)
      sig { returns(T.nilable(String)) }
      attr_reader :issuing_credit_underwriting_record
      # Associated [Issuing Dispute](https://stripe.com/docs/api/issuing/disputes)
      sig { returns(T.nilable(String)) }
      attr_reader :issuing_dispute
    end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # When present, the deadline for sending the notice to meet the relevant regulations.
    sig { returns(T.nilable(Integer)) }
    attr_reader :deadline
    # Information about the email when sent.
    sig { returns(T.nilable(Email)) }
    attr_reader :email
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Information about objects related to the notice.
    sig { returns(T.nilable(LinkedObjects)) }
    attr_reader :linked_objects
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Reason the notice is being sent. The reason determines what copy the notice must contain. See the [regulated customer notices](https://stripe.com/docs/issuing/compliance-us/issuing-regulated-customer-notices) guide. All reasons might not apply to your integration, and Stripe might add new reasons in the future, so we recommend an internal warning when you receive an unknown reason.
    sig { returns(String) }
    attr_reader :reason
    # Date when the notice was sent. When absent, you must send the notice, update the content of the email and date when it was sent.
    sig { returns(T.nilable(Integer)) }
    attr_reader :sent_at
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
      sig { returns(::Stripe::AccountNotice::UpdateParams::Email) }
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
        params(email: ::Stripe::AccountNotice::UpdateParams::Email, expand: T::Array[String], metadata: T::Hash[String, String], sent_at: Integer).void
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