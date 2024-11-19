# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A notice to a Connected account. Notice can be sent by Stripe on your behalf or you can opt to send the notices yourself.
  #
  # See the [guide to send notices](https://stripe.com/docs/issuing/compliance-us/issuing-regulated-customer-notices) to your connected accounts.
  class AccountNotice < APIResource
    class Email < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :plain_text
      sig { returns(String) }
      attr_reader :recipient
      sig { returns(String) }
      attr_reader :subject
    end
    class LinkedObjects < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :capability
      sig { returns(T.nilable(String)) }
      attr_reader :issuing_credit_underwriting_record
      sig { returns(T.nilable(String)) }
      attr_reader :issuing_dispute
    end
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(Integer)) }
    # When present, the deadline for sending the notice to meet the relevant regulations.
    attr_reader :deadline
    sig { returns(T.nilable(Email)) }
    # Information about the email when sent.
    attr_reader :email
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.nilable(LinkedObjects)) }
    # Information about objects related to the notice.
    attr_reader :linked_objects
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(String) }
    # Reason the notice is being sent. The reason determines what copy the notice must contain. See the [regulated customer notices](https://stripe.com/docs/issuing/compliance-us/issuing-regulated-customer-notices) guide. All reasons might not apply to your integration, and Stripe might add new reasons in the future, so we recommend an internal warning when you receive an unknown reason.
    attr_reader :reason
    sig { returns(T.nilable(Integer)) }
    # Date when the notice was sent. When absent, you must send the notice, update the content of the email and date when it was sent.
    attr_reader :sent_at
  end
end