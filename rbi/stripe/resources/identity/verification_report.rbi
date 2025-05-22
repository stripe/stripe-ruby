# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Identity
    # A VerificationReport is the result of an attempt to collect and verify data from a user.
    # The collection of verification checks performed is determined from the `type` and `options`
    # parameters used. You can find the result of each verification check performed in the
    # appropriate sub-resource: `document`, `id_number`, `selfie`.
    #
    # Each VerificationReport contains a copy of any data collected by the user as well as
    # reference IDs which can be used to access collected images through the [FileUpload](https://stripe.com/docs/api/files)
    # API. To configure and create VerificationReports, use the
    # [VerificationSession](https://stripe.com/docs/api/identity/verification_sessions) API.
    #
    # Related guide: [Accessing verification results](https://stripe.com/docs/identity/verification-sessions#results).
    class VerificationReport < APIResource
      class Document < Stripe::StripeObject
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
        class Error < Stripe::StripeObject
          # A short machine-readable string giving the reason for the verification failure.
          sig { returns(T.nilable(String)) }
          attr_reader :code
          # A human-readable message giving the reason for the failure. These messages can be shown to your users.
          sig { returns(T.nilable(String)) }
          attr_reader :reason
        end
        class ExpirationDate < Stripe::StripeObject
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
        class IssuedDate < Stripe::StripeObject
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
        # Address as it appears in the document.
        sig { returns(T.nilable(Address)) }
        attr_reader :address
        # Date of birth as it appears in the document.
        sig { returns(T.nilable(Dob)) }
        attr_reader :dob
        # Details on the verification error. Present when status is `unverified`.
        sig { returns(T.nilable(Error)) }
        attr_reader :error
        # Expiration date of the document.
        sig { returns(T.nilable(ExpirationDate)) }
        attr_reader :expiration_date
        # Array of [File](https://stripe.com/docs/api/files) ids containing images for this document.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :files
        # First name as it appears in the document.
        sig { returns(T.nilable(String)) }
        attr_reader :first_name
        # Issued date of the document.
        sig { returns(T.nilable(IssuedDate)) }
        attr_reader :issued_date
        # Issuing country of the document.
        sig { returns(T.nilable(String)) }
        attr_reader :issuing_country
        # Last name as it appears in the document.
        sig { returns(T.nilable(String)) }
        attr_reader :last_name
        # Document ID number.
        sig { returns(T.nilable(String)) }
        attr_reader :number
        # Sex of the person in the document.
        sig { returns(T.nilable(String)) }
        attr_reader :sex
        # Status of this `document` check.
        sig { returns(String) }
        attr_reader :status
        # Type of the document.
        sig { returns(T.nilable(String)) }
        attr_reader :type
        # Place of birth as it appears in the document.
        sig { returns(T.nilable(String)) }
        attr_reader :unparsed_place_of_birth
        # Sex as it appears in the document.
        sig { returns(T.nilable(String)) }
        attr_reader :unparsed_sex
      end
      class Email < Stripe::StripeObject
        class Error < Stripe::StripeObject
          # A short machine-readable string giving the reason for the verification failure.
          sig { returns(T.nilable(String)) }
          attr_reader :code
          # A human-readable message giving the reason for the failure. These messages can be shown to your users.
          sig { returns(T.nilable(String)) }
          attr_reader :reason
        end
        # Email to be verified.
        sig { returns(T.nilable(String)) }
        attr_reader :email
        # Details on the verification error. Present when status is `unverified`.
        sig { returns(T.nilable(Error)) }
        attr_reader :error
        # Status of this `email` check.
        sig { returns(String) }
        attr_reader :status
      end
      class IdNumber < Stripe::StripeObject
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
        class Error < Stripe::StripeObject
          # A short machine-readable string giving the reason for the verification failure.
          sig { returns(T.nilable(String)) }
          attr_reader :code
          # A human-readable message giving the reason for the failure. These messages can be shown to your users.
          sig { returns(T.nilable(String)) }
          attr_reader :reason
        end
        # Date of birth.
        sig { returns(T.nilable(Dob)) }
        attr_reader :dob
        # Details on the verification error. Present when status is `unverified`.
        sig { returns(T.nilable(Error)) }
        attr_reader :error
        # First name.
        sig { returns(T.nilable(String)) }
        attr_reader :first_name
        # ID number. When `id_number_type` is `us_ssn`, only the last 4 digits are present.
        sig { returns(T.nilable(String)) }
        attr_reader :id_number
        # Type of ID number.
        sig { returns(T.nilable(String)) }
        attr_reader :id_number_type
        # Last name.
        sig { returns(T.nilable(String)) }
        attr_reader :last_name
        # Status of this `id_number` check.
        sig { returns(String) }
        attr_reader :status
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
        class IdNumber < Stripe::StripeObject; end
        # Attribute for field document
        sig { returns(Document) }
        attr_reader :document
        # Attribute for field id_number
        sig { returns(IdNumber) }
        attr_reader :id_number
      end
      class Phone < Stripe::StripeObject
        class Error < Stripe::StripeObject
          # A short machine-readable string giving the reason for the verification failure.
          sig { returns(T.nilable(String)) }
          attr_reader :code
          # A human-readable message giving the reason for the failure. These messages can be shown to your users.
          sig { returns(T.nilable(String)) }
          attr_reader :reason
        end
        # Details on the verification error. Present when status is `unverified`.
        sig { returns(T.nilable(Error)) }
        attr_reader :error
        # Phone to be verified.
        sig { returns(T.nilable(String)) }
        attr_reader :phone
        # Status of this `phone` check.
        sig { returns(String) }
        attr_reader :status
      end
      class Selfie < Stripe::StripeObject
        class Error < Stripe::StripeObject
          # A short machine-readable string giving the reason for the verification failure.
          sig { returns(T.nilable(String)) }
          attr_reader :code
          # A human-readable message giving the reason for the failure. These messages can be shown to your users.
          sig { returns(T.nilable(String)) }
          attr_reader :reason
        end
        # ID of the [File](https://stripe.com/docs/api/files) holding the image of the identity document used in this check.
        sig { returns(T.nilable(String)) }
        attr_reader :document
        # Details on the verification error. Present when status is `unverified`.
        sig { returns(T.nilable(Error)) }
        attr_reader :error
        # ID of the [File](https://stripe.com/docs/api/files) holding the image of the selfie used in this check.
        sig { returns(T.nilable(String)) }
        attr_reader :selfie
        # Status of this `selfie` check.
        sig { returns(String) }
        attr_reader :status
      end
      # A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
      sig { returns(T.nilable(String)) }
      attr_reader :client_reference_id
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # Result from a document check
      sig { returns(Document) }
      attr_reader :document
      # Result from a email check
      sig { returns(Email) }
      attr_reader :email
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Result from an id_number check
      sig { returns(IdNumber) }
      attr_reader :id_number
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # Attribute for field options
      sig { returns(Options) }
      attr_reader :options
      # Result from a phone check
      sig { returns(Phone) }
      attr_reader :phone
      # Result from a selfie check
      sig { returns(Selfie) }
      attr_reader :selfie
      # Type of report.
      sig { returns(String) }
      attr_reader :type
      # The configuration token of a verification flow from the dashboard.
      sig { returns(String) }
      attr_reader :verification_flow
      # ID of the VerificationSession that created this report.
      sig { returns(T.nilable(String)) }
      attr_reader :verification_session
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
        # Only return VerificationReports that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Identity::VerificationReport::ListParams::Created, Integer)))
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
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # Only return VerificationReports of this type
        sig { returns(T.nilable(String)) }
        attr_accessor :type
        # Only return VerificationReports created by this VerificationSession ID. It is allowed to provide a VerificationIntent ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :verification_session
        sig {
          params(client_reference_id: T.nilable(String), created: T.nilable(T.any(::Stripe::Identity::VerificationReport::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), type: T.nilable(String), verification_session: T.nilable(String)).void
         }
        def initialize(
          client_reference_id: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          type: nil,
          verification_session: nil
        ); end
      end
      # List all verification reports.
      sig {
        params(params: T.any(::Stripe::Identity::VerificationReport::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end