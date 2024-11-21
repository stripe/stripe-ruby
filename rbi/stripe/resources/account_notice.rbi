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
  end
end