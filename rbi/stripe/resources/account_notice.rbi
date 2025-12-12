# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A notice to a Connected account. Notice can be sent by Stripe on your behalf or you can opt to send the notices yourself.
  #
  # See the [guide to send notices](https://docs.stripe.com/issuing/compliance-us/issuing-regulated-customer-notices) to your connected accounts.
  class AccountNotice < APIResource
    class Email < ::Stripe::StripeObject
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
    class LinkedObjects < ::Stripe::StripeObject
      # Associated [Capability](https://docs.stripe.com/api/capabilities)
      sig { returns(T.nilable(String)) }
      def capability; end
      # Associated [Credit Underwriting Record](https://docs.stripe.com/api/issuing/credit_underwriting_record)
      sig { returns(T.nilable(String)) }
      def issuing_credit_underwriting_record; end
      # Associated [Issuing Dispute](https://docs.stripe.com/api/issuing/disputes)
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
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Reason the notice is being sent. The reason determines what copy the notice must contain. See the [regulated customer notices](https://docs.stripe.com/issuing/compliance-us/issuing-regulated-customer-notices) guide. All reasons might not apply to your integration, and Stripe might add new reasons in the future, so we recommend an internal warning when you receive an unknown reason.
    sig { returns(String) }
    def reason; end
    # Date when the notice was sent. When absent, you must send the notice, update the content of the email and date when it was sent.
    sig { returns(T.nilable(Integer)) }
    def sent_at; end
    # Retrieves a list of AccountNotice objects. The objects are sorted in descending order by creation date, with the most-recently-created object appearing first.
    sig {
      params(params: T.any(::Stripe::AccountNoticeListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Updates an AccountNotice object.
    sig {
      params(account_notice: String, params: T.any(::Stripe::AccountNoticeUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::AccountNotice)
     }
    def self.update(account_notice, params = {}, opts = {}); end
  end
end