# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Identity
    # A VerificationSession guides you through the process of collecting and verifying the identities
    # of your users. It contains details about the type of verification, such as what [verification
    # check](https://docs.stripe.com/docs/identity/verification-checks) to perform. Only create one VerificationSession for
    # each verification in your system.
    #
    # A VerificationSession transitions through [multiple
    # statuses](https://docs.stripe.com/docs/identity/how-sessions-work) throughout its lifetime as it progresses through
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
        class Matching < Stripe::StripeObject
          # Strictness of the DOB matching policy to apply.
          sig { returns(String) }
          attr_reader :dob
          # Strictness of the name matching policy to apply.
          sig { returns(String) }
          attr_reader :name
        end
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
        # Attribute for field matching
        sig { returns(Matching) }
        attr_reader :matching
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
      class RelatedPerson < Stripe::StripeObject
        # Token referencing the associated Account of the related Person resource.
        sig { returns(String) }
        attr_reader :account
        # Token referencing the related Person resource.
        sig { returns(String) }
        attr_reader :person
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
        # The user's verified sex.
        sig { returns(T.nilable(String)) }
        attr_reader :sex
        # The user's verified place of birth as it appears in the document.
        sig { returns(T.nilable(String)) }
        attr_reader :unparsed_place_of_birth
        # The user's verified sex as it appears in the document.
        sig { returns(T.nilable(String)) }
        attr_reader :unparsed_sex
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
      # Customer ID
      sig { returns(T.nilable(String)) }
      attr_reader :related_customer
      # Attribute for field related_person
      sig { returns(RelatedPerson) }
      attr_reader :related_person
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
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lte
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
        sig { returns(T.nilable(String)) }
        attr_accessor :client_reference_id
        # Only return VerificationSessions that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Identity::VerificationSession::ListParams::Created, Integer)))
         }
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # Attribute for param field related_customer
        sig { returns(T.nilable(String)) }
        attr_accessor :related_customer
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # Only return VerificationSessions with this status. [Learn more about the lifecycle of sessions](https://stripe.com/docs/identity/how-sessions-work).
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        sig {
          params(client_reference_id: T.nilable(String), created: T.nilable(T.any(::Stripe::Identity::VerificationSession::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), related_customer: T.nilable(String), starting_after: T.nilable(String), status: T.nilable(String)).void
         }
        def initialize(
          client_reference_id: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          related_customer: nil,
          starting_after: nil,
          status: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class Options < Stripe::RequestParams
          class Document < Stripe::RequestParams
            # Array of strings of allowed identity document types. If the provided identity document isn’t one of the allowed types, the verification check will fail with a document_type_not_allowed error code.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :allowed_types
            # Collect an ID number and perform an [ID number check](https://stripe.com/docs/identity/verification-checks?type=id-number) with the document’s extracted name and date of birth.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :require_id_number
            # Disable image uploads, identity document images have to be captured using the device’s camera.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :require_live_capture
            # Capture a face image and perform a [selfie check](https://stripe.com/docs/identity/verification-checks?type=selfie) comparing a photo ID and a picture of your user’s face. [Learn more](https://stripe.com/docs/identity/selfie).
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :require_matching_selfie
            sig {
              params(allowed_types: T.nilable(T::Array[String]), require_id_number: T.nilable(T::Boolean), require_live_capture: T.nilable(T::Boolean), require_matching_selfie: T.nilable(T::Boolean)).void
             }
            def initialize(
              allowed_types: nil,
              require_id_number: nil,
              require_live_capture: nil,
              require_matching_selfie: nil
            ); end
          end
          # Options that apply to the [document check](https://stripe.com/docs/identity/verification-checks?type=document).
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Identity::VerificationSession::CreateParams::Options::Document)))
           }
          attr_accessor :document
          sig {
            params(document: T.nilable(T.any(String, ::Stripe::Identity::VerificationSession::CreateParams::Options::Document))).void
           }
          def initialize(document: nil); end
        end
        class ProvidedDetails < Stripe::RequestParams
          # Email of user being verified
          sig { returns(T.nilable(String)) }
          attr_accessor :email
          # Phone number of user being verified
          sig { returns(T.nilable(String)) }
          attr_accessor :phone
          sig { params(email: T.nilable(String), phone: T.nilable(String)).void }
          def initialize(email: nil, phone: nil); end
        end
        class RelatedPerson < Stripe::RequestParams
          # A token representing a connected account. If provided, the person parameter is also required and must be associated with the account.
          sig { returns(String) }
          attr_accessor :account
          # A token referencing a Person resource that this verification is being used to verify.
          sig { returns(String) }
          attr_accessor :person
          sig { params(account: String, person: String).void }
          def initialize(account: nil, person: nil); end
        end
        # A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
        sig { returns(T.nilable(String)) }
        attr_accessor :client_reference_id
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # A set of options for the session’s verification checks.
        sig { returns(T.nilable(::Stripe::Identity::VerificationSession::CreateParams::Options)) }
        attr_accessor :options
        # Details provided about the user being verified. These details may be shown to the user.
        sig {
          returns(T.nilable(::Stripe::Identity::VerificationSession::CreateParams::ProvidedDetails))
         }
        attr_accessor :provided_details
        # Customer ID
        sig { returns(T.nilable(String)) }
        attr_accessor :related_customer
        # Tokens referencing a Person resource and it's associated account.
        sig {
          returns(T.nilable(::Stripe::Identity::VerificationSession::CreateParams::RelatedPerson))
         }
        attr_accessor :related_person
        # The URL that the user will be redirected to upon completing the verification flow.
        sig { returns(T.nilable(String)) }
        attr_accessor :return_url
        # The type of [verification check](https://stripe.com/docs/identity/verification-checks) to be performed. You must provide a `type` if not passing `verification_flow`.
        sig { returns(T.nilable(String)) }
        attr_accessor :type
        # The ID of a verification flow from the Dashboard. See https://docs.stripe.com/identity/verification-flows.
        sig { returns(T.nilable(String)) }
        attr_accessor :verification_flow
        sig {
          params(client_reference_id: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), options: T.nilable(::Stripe::Identity::VerificationSession::CreateParams::Options), provided_details: T.nilable(::Stripe::Identity::VerificationSession::CreateParams::ProvidedDetails), related_customer: T.nilable(String), related_person: T.nilable(::Stripe::Identity::VerificationSession::CreateParams::RelatedPerson), return_url: T.nilable(String), type: T.nilable(String), verification_flow: T.nilable(String)).void
         }
        def initialize(
          client_reference_id: nil,
          expand: nil,
          metadata: nil,
          options: nil,
          provided_details: nil,
          related_customer: nil,
          related_person: nil,
          return_url: nil,
          type: nil,
          verification_flow: nil
        ); end
      end
      class UpdateParams < Stripe::RequestParams
        class Options < Stripe::RequestParams
          class Document < Stripe::RequestParams
            # Array of strings of allowed identity document types. If the provided identity document isn’t one of the allowed types, the verification check will fail with a document_type_not_allowed error code.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :allowed_types
            # Collect an ID number and perform an [ID number check](https://stripe.com/docs/identity/verification-checks?type=id-number) with the document’s extracted name and date of birth.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :require_id_number
            # Disable image uploads, identity document images have to be captured using the device’s camera.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :require_live_capture
            # Capture a face image and perform a [selfie check](https://stripe.com/docs/identity/verification-checks?type=selfie) comparing a photo ID and a picture of your user’s face. [Learn more](https://stripe.com/docs/identity/selfie).
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :require_matching_selfie
            sig {
              params(allowed_types: T.nilable(T::Array[String]), require_id_number: T.nilable(T::Boolean), require_live_capture: T.nilable(T::Boolean), require_matching_selfie: T.nilable(T::Boolean)).void
             }
            def initialize(
              allowed_types: nil,
              require_id_number: nil,
              require_live_capture: nil,
              require_matching_selfie: nil
            ); end
          end
          # Options that apply to the [document check](https://stripe.com/docs/identity/verification-checks?type=document).
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Identity::VerificationSession::UpdateParams::Options::Document)))
           }
          attr_accessor :document
          sig {
            params(document: T.nilable(T.any(String, ::Stripe::Identity::VerificationSession::UpdateParams::Options::Document))).void
           }
          def initialize(document: nil); end
        end
        class ProvidedDetails < Stripe::RequestParams
          # Email of user being verified
          sig { returns(T.nilable(String)) }
          attr_accessor :email
          # Phone number of user being verified
          sig { returns(T.nilable(String)) }
          attr_accessor :phone
          sig { params(email: T.nilable(String), phone: T.nilable(String)).void }
          def initialize(email: nil, phone: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # A set of options for the session’s verification checks.
        sig { returns(T.nilable(::Stripe::Identity::VerificationSession::UpdateParams::Options)) }
        attr_accessor :options
        # Details provided about the user being verified. These details may be shown to the user.
        sig {
          returns(T.nilable(::Stripe::Identity::VerificationSession::UpdateParams::ProvidedDetails))
         }
        attr_accessor :provided_details
        # The type of [verification check](https://stripe.com/docs/identity/verification-checks) to be performed.
        sig { returns(T.nilable(String)) }
        attr_accessor :type
        sig {
          params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), options: T.nilable(::Stripe::Identity::VerificationSession::UpdateParams::Options), provided_details: T.nilable(::Stripe::Identity::VerificationSession::UpdateParams::ProvidedDetails), type: T.nilable(String)).void
         }
        def initialize(
          expand: nil,
          metadata: nil,
          options: nil,
          provided_details: nil,
          type: nil
        ); end
      end
      class CancelParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class RedactParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # A VerificationSession object can be canceled when it is in requires_input [status](https://docs.stripe.com/docs/identity/how-sessions-work).
      #
      # Once canceled, future submission attempts are disabled. This cannot be undone. [Learn more](https://docs.stripe.com/docs/identity/verification-sessions#cancel).
      sig {
        params(params: T.any(::Stripe::Identity::VerificationSession::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Identity::VerificationSession)
       }
      def cancel(params = {}, opts = {}); end

      # A VerificationSession object can be canceled when it is in requires_input [status](https://docs.stripe.com/docs/identity/how-sessions-work).
      #
      # Once canceled, future submission attempts are disabled. This cannot be undone. [Learn more](https://docs.stripe.com/docs/identity/verification-sessions#cancel).
      sig {
        params(session: String, params: T.any(::Stripe::Identity::VerificationSession::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Identity::VerificationSession)
       }
      def self.cancel(session, params = {}, opts = {}); end

      # Creates a VerificationSession object.
      #
      # After the VerificationSession is created, display a verification modal using the session client_secret or send your users to the session's url.
      #
      # If your API key is in test mode, verification checks won't actually process, though everything else will occur as if in live mode.
      #
      # Related guide: [Verify your users' identity documents](https://docs.stripe.com/docs/identity/verify-identity-documents)
      sig {
        params(params: T.any(::Stripe::Identity::VerificationSession::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Identity::VerificationSession)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of VerificationSessions
      sig {
        params(params: T.any(::Stripe::Identity::VerificationSession::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Redact a VerificationSession to remove all collected information from Stripe. This will redact
      # the VerificationSession and all objects related to it, including VerificationReports, Events,
      # request logs, etc.
      #
      # A VerificationSession object can be redacted when it is in requires_input or verified
      # [status](https://docs.stripe.com/docs/identity/how-sessions-work). Redacting a VerificationSession in requires_action
      # state will automatically cancel it.
      #
      # The redaction process may take up to four days. When the redaction process is in progress, the
      # VerificationSession's redaction.status field will be set to processing; when the process is
      # finished, it will change to redacted and an identity.verification_session.redacted event
      # will be emitted.
      #
      # Redaction is irreversible. Redacted objects are still accessible in the Stripe API, but all the
      # fields that contain personal data will be replaced by the string [redacted] or a similar
      # placeholder. The metadata field will also be erased. Redacted objects cannot be updated or
      # used for any purpose.
      #
      # [Learn more](https://docs.stripe.com/docs/identity/verification-sessions#redact).
      sig {
        params(params: T.any(::Stripe::Identity::VerificationSession::RedactParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Identity::VerificationSession)
       }
      def redact(params = {}, opts = {}); end

      # Redact a VerificationSession to remove all collected information from Stripe. This will redact
      # the VerificationSession and all objects related to it, including VerificationReports, Events,
      # request logs, etc.
      #
      # A VerificationSession object can be redacted when it is in requires_input or verified
      # [status](https://docs.stripe.com/docs/identity/how-sessions-work). Redacting a VerificationSession in requires_action
      # state will automatically cancel it.
      #
      # The redaction process may take up to four days. When the redaction process is in progress, the
      # VerificationSession's redaction.status field will be set to processing; when the process is
      # finished, it will change to redacted and an identity.verification_session.redacted event
      # will be emitted.
      #
      # Redaction is irreversible. Redacted objects are still accessible in the Stripe API, but all the
      # fields that contain personal data will be replaced by the string [redacted] or a similar
      # placeholder. The metadata field will also be erased. Redacted objects cannot be updated or
      # used for any purpose.
      #
      # [Learn more](https://docs.stripe.com/docs/identity/verification-sessions#redact).
      sig {
        params(session: String, params: T.any(::Stripe::Identity::VerificationSession::RedactParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Identity::VerificationSession)
       }
      def self.redact(session, params = {}, opts = {}); end

      # Updates a VerificationSession object.
      #
      # When the session status is requires_input, you can use this method to update the
      # verification check and options.
      sig {
        params(session: String, params: T.any(::Stripe::Identity::VerificationSession::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Identity::VerificationSession)
       }
      def self.update(session, params = {}, opts = {}); end
    end
  end
end