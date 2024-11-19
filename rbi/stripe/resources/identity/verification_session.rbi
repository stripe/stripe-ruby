# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Identity
    # A VerificationSession guides you through the process of collecting and verifying the identities
    # of your users. It contains details about the type of verification, such as what [verification
    # check](https://stripe.com/docs/identity/verification-checks) to perform. Only create one VerificationSession for
    # each verification in your system.
    #
    # A VerificationSession transitions through [multiple
    # statuses](https://stripe.com/docs/identity/how-sessions-work) throughout its lifetime as it progresses through
    # the verification flow. The VerificationSession contains the user's verified data after
    # verification checks are complete.
    #
    # Related guide: [The Verification Sessions API](https://stripe.com/docs/identity/verification-sessions)
    class VerificationSession < APIResource
      class LastError < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :code
        sig { returns(T.nilable(String)) }
        attr_reader :reason
      end
      class Options < Stripe::StripeObject
        class Document < Stripe::StripeObject
          sig { returns(T::Array[String]) }
          attr_reader :allowed_types
          sig { returns(T::Boolean) }
          attr_reader :require_id_number
          sig { returns(T::Boolean) }
          attr_reader :require_live_capture
          sig { returns(T::Boolean) }
          attr_reader :require_matching_selfie
        end
        class Email < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :require_verification
        end
        class IdNumber < Stripe::StripeObject; end
        class Phone < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :require_verification
        end
        sig { returns(Document) }
        attr_reader :document
        sig { returns(Email) }
        attr_reader :email
        sig { returns(IdNumber) }
        attr_reader :id_number
        sig { returns(Phone) }
        attr_reader :phone
      end
      class ProvidedDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :email
        sig { returns(String) }
        attr_reader :phone
      end
      class Redaction < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :status
      end
      class VerifiedOutputs < Stripe::StripeObject
        class Address < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :city
          sig { returns(T.nilable(String)) }
          attr_reader :country
          sig { returns(T.nilable(String)) }
          attr_reader :line1
          sig { returns(T.nilable(String)) }
          attr_reader :line2
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code
          sig { returns(T.nilable(String)) }
          attr_reader :state
        end
        class Dob < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :day
          sig { returns(T.nilable(Integer)) }
          attr_reader :month
          sig { returns(T.nilable(Integer)) }
          attr_reader :year
        end
        sig { returns(T.nilable(Address)) }
        attr_reader :address
        sig { returns(T.nilable(Dob)) }
        attr_reader :dob
        sig { returns(T.nilable(String)) }
        attr_reader :email
        sig { returns(T.nilable(String)) }
        attr_reader :first_name
        sig { returns(T.nilable(String)) }
        attr_reader :id_number
        sig { returns(T.nilable(String)) }
        attr_reader :id_number_type
        sig { returns(T.nilable(String)) }
        attr_reader :last_name
        sig { returns(T.nilable(String)) }
        attr_reader :phone
      end
      sig { returns(T.nilable(String)) }
      # A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
      attr_reader :client_reference_id
      sig { returns(T.nilable(String)) }
      # The short-lived client secret used by Stripe.js to [show a verification modal](https://stripe.com/docs/js/identity/modal) inside your app. This client secret expires after 24 hours and can only be used once. Don’t store it, log it, embed it in a URL, or expose it to anyone other than the user. Make sure that you have TLS enabled on any page that includes the client secret. Refer to our docs on [passing the client secret to the frontend](https://stripe.com/docs/identity/verification-sessions#client-secret) to learn more.
      attr_reader :client_secret
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T.nilable(LastError)) }
      # If present, this property tells you the last error encountered when processing the verification.
      attr_reader :last_error
      sig { returns(T.nilable(T.any(String, Stripe::Identity::VerificationReport))) }
      # ID of the most recent VerificationReport. [Learn more about accessing detailed verification results.](https://stripe.com/docs/identity/verification-sessions#results)
      attr_reader :last_verification_report
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T::Hash[String, String]) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(Options)) }
      # A set of options for the session’s verification checks.
      attr_reader :options
      sig { returns(T.nilable(ProvidedDetails)) }
      # Details provided about the user being verified. These details may be shown to the user.
      attr_reader :provided_details
      sig { returns(T.nilable(Redaction)) }
      # Redaction status of this VerificationSession. If the VerificationSession is not redacted, this field will be null.
      attr_reader :redaction
      sig { returns(T.nilable(String)) }
      # Token referencing a Customer resource.
      attr_reader :related_customer
      sig { returns(String) }
      # Status of this VerificationSession. [Learn more about the lifecycle of sessions](https://stripe.com/docs/identity/how-sessions-work).
      attr_reader :status
      sig { returns(String) }
      # The type of [verification check](https://stripe.com/docs/identity/verification-checks) to be performed.
      attr_reader :type
      sig { returns(T.nilable(String)) }
      # The short-lived URL that you use to redirect a user to Stripe to submit their identity information. This URL expires after 48 hours and can only be used once. Don’t store it, log it, send it in emails or expose it to anyone other than the user. Refer to our docs on [verifying identity documents](https://stripe.com/docs/identity/verify-identity-documents?platform=web&type=redirect) to learn how to redirect users to Stripe.
      attr_reader :url
      sig { returns(String) }
      # The configuration token of a verification flow from the dashboard.
      attr_reader :verification_flow
      sig { returns(T.nilable(VerifiedOutputs)) }
      # The user’s verified data.
      attr_reader :verified_outputs
    end
  end
end