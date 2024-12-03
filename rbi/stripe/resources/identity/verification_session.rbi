# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
        # A short machine-readable string giving the reason for the verification or user-session failure.
        sig { returns(T.nilable(String)) }
        attr_reader :code
        # A message that explains the reason for verification or user-session failure.
        sig { returns(T.nilable(String)) }
        attr_reader :reason
      end
      class Options < Stripe::StripeObject
        class Document < Stripe::StripeObject
          # Array of strings of allowed identity document types. If the provided identity document isn’t one of the allowed types, the verification check will fail with a document_type_not_allowed error code.
          sig { returns(T::Array[String]) }
          attr_reader :allowed_types
          # Collect an ID number and perform an [ID number check](https://stripe.com/docs/identity/verification-checks?type=id-number) with the document’s extracted name and date of birth.
          sig { returns(T::Boolean) }
          attr_reader :require_id_number
          # Disable image uploads, identity document images have to be captured using the device’s camera.
          sig { returns(T::Boolean) }
          attr_reader :require_live_capture
          # Capture a face image and perform a [selfie check](https://stripe.com/docs/identity/verification-checks?type=selfie) comparing a photo ID and a picture of your user’s face. [Learn more](https://stripe.com/docs/identity/selfie).
          sig { returns(T::Boolean) }
          attr_reader :require_matching_selfie
        end
        class Email < Stripe::StripeObject
          # Request one time password verification of `provided_details.email`.
          sig { returns(T::Boolean) }
          attr_reader :require_verification
        end
        class IdNumber < Stripe::StripeObject; end
        class Phone < Stripe::StripeObject
          # Request one time password verification of `provided_details.phone`.
          sig { returns(T::Boolean) }
          attr_reader :require_verification
        end
        # Attribute for field document
        sig { returns(Document) }
        attr_reader :document
        # Attribute for field email
        sig { returns(Email) }
        attr_reader :email
        # Attribute for field id_number
        sig { returns(IdNumber) }
        attr_reader :id_number
        # Attribute for field phone
        sig { returns(Phone) }
        attr_reader :phone
      end
      class ProvidedDetails < Stripe::StripeObject
        # Email of user being verified
        sig { returns(String) }
        attr_reader :email
        # Phone number of user being verified
        sig { returns(String) }
        attr_reader :phone
      end
      class Redaction < Stripe::StripeObject
        # Indicates whether this object and its related objects have been redacted or not.
        sig { returns(String) }
        attr_reader :status
      end
      class VerifiedOutputs < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          attr_reader :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          attr_reader :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          attr_reader :line2
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          attr_reader :state
        end
        class Dob < Stripe::StripeObject
          # Numerical day between 1 and 31.
          sig { returns(T.nilable(Integer)) }
          attr_reader :day
          # Numerical month between 1 and 12.
          sig { returns(T.nilable(Integer)) }
          attr_reader :month
          # The four-digit year.
          sig { returns(T.nilable(Integer)) }
          attr_reader :year
        end
        # The user's verified address.
        sig { returns(T.nilable(Address)) }
        attr_reader :address
        # The user’s verified date of birth.
        sig { returns(T.nilable(Dob)) }
        attr_reader :dob
        # The user's verified email address
        sig { returns(T.nilable(String)) }
        attr_reader :email
        # The user's verified first name.
        sig { returns(T.nilable(String)) }
        attr_reader :first_name
        # The user's verified id number.
        sig { returns(T.nilable(String)) }
        attr_reader :id_number
        # The user's verified id number type.
        sig { returns(T.nilable(String)) }
        attr_reader :id_number_type
        # The user's verified last name.
        sig { returns(T.nilable(String)) }
        attr_reader :last_name
        # The user's verified phone number
        sig { returns(T.nilable(String)) }
        attr_reader :phone
      end
      # A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
      sig { returns(T.nilable(String)) }
      attr_reader :client_reference_id

      # The short-lived client secret used by Stripe.js to [show a verification modal](https://stripe.com/docs/js/identity/modal) inside your app. This client secret expires after 24 hours and can only be used once. Don’t store it, log it, embed it in a URL, or expose it to anyone other than the user. Make sure that you have TLS enabled on any page that includes the client secret. Refer to our docs on [passing the client secret to the frontend](https://stripe.com/docs/identity/verification-sessions#client-secret) to learn more.
      sig { returns(T.nilable(String)) }
      attr_reader :client_secret

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # If present, this property tells you the last error encountered when processing the verification.
      sig { returns(T.nilable(LastError)) }
      attr_reader :last_error

      # ID of the most recent VerificationReport. [Learn more about accessing detailed verification results.](https://stripe.com/docs/identity/verification-sessions#results)
      sig { returns(T.nilable(T.any(String, Stripe::Identity::VerificationReport))) }
      attr_reader :last_verification_report

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # A set of options for the session’s verification checks.
      sig { returns(T.nilable(Options)) }
      attr_reader :options

      # Details provided about the user being verified. These details may be shown to the user.
      sig { returns(T.nilable(ProvidedDetails)) }
      attr_reader :provided_details

      # Redaction status of this VerificationSession. If the VerificationSession is not redacted, this field will be null.
      sig { returns(T.nilable(Redaction)) }
      attr_reader :redaction

      # Token referencing a Customer resource.
      sig { returns(T.nilable(String)) }
      attr_reader :related_customer

      # Status of this VerificationSession. [Learn more about the lifecycle of sessions](https://stripe.com/docs/identity/how-sessions-work).
      sig { returns(String) }
      attr_reader :status

      # The type of [verification check](https://stripe.com/docs/identity/verification-checks) to be performed.
      sig { returns(String) }
      attr_reader :type

      # The short-lived URL that you use to redirect a user to Stripe to submit their identity information. This URL expires after 48 hours and can only be used once. Don’t store it, log it, send it in emails or expose it to anyone other than the user. Refer to our docs on [verifying identity documents](https://stripe.com/docs/identity/verify-identity-documents?platform=web&type=redirect) to learn how to redirect users to Stripe.
      sig { returns(T.nilable(String)) }
      attr_reader :url

      # The configuration token of a verification flow from the dashboard.
      sig { returns(String) }
      attr_reader :verification_flow

      # The user’s verified data.
      sig { returns(T.nilable(VerifiedOutputs)) }
      attr_reader :verified_outputs
    end
  end
end