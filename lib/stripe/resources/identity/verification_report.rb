# File generated from our OpenAPI spec
# frozen_string_literal: true

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
      extend Stripe::APIOperations::List

      OBJECT_NAME = "identity.verification_report"
      def self.object_name
        "identity.verification_report"
      end

      class Document < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_reader :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_reader :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_reader :line2
          # ZIP or postal code.
          attr_reader :postal_code
          # State, county, province, or region.
          attr_reader :state
        end

        class Dob < Stripe::StripeObject
          # Numerical day between 1 and 31.
          attr_reader :day
          # Numerical month between 1 and 12.
          attr_reader :month
          # The four-digit year.
          attr_reader :year
        end

        class Error < Stripe::StripeObject
          # A short machine-readable string giving the reason for the verification failure.
          attr_reader :code
          # A human-readable message giving the reason for the failure. These messages can be shown to your users.
          attr_reader :reason
        end

        class ExpirationDate < Stripe::StripeObject
          # Numerical day between 1 and 31.
          attr_reader :day
          # Numerical month between 1 and 12.
          attr_reader :month
          # The four-digit year.
          attr_reader :year
        end

        class IssuedDate < Stripe::StripeObject
          # Numerical day between 1 and 31.
          attr_reader :day
          # Numerical month between 1 and 12.
          attr_reader :month
          # The four-digit year.
          attr_reader :year
        end
        # Address as it appears in the document.
        attr_reader :address
        # Date of birth as it appears in the document.
        attr_reader :dob
        # Details on the verification error. Present when status is `unverified`.
        attr_reader :error
        # Expiration date of the document.
        attr_reader :expiration_date
        # Array of [File](https://stripe.com/docs/api/files) ids containing images for this document.
        attr_reader :files
        # First name as it appears in the document.
        attr_reader :first_name
        # Issued date of the document.
        attr_reader :issued_date
        # Issuing country of the document.
        attr_reader :issuing_country
        # Last name as it appears in the document.
        attr_reader :last_name
        # Document ID number.
        attr_reader :number
        # Status of this `document` check.
        attr_reader :status
        # Type of the document.
        attr_reader :type
      end

      class Email < Stripe::StripeObject
        class Error < Stripe::StripeObject
          # A short machine-readable string giving the reason for the verification failure.
          attr_reader :code
          # A human-readable message giving the reason for the failure. These messages can be shown to your users.
          attr_reader :reason
        end
        # Email to be verified.
        attr_reader :email
        # Details on the verification error. Present when status is `unverified`.
        attr_reader :error
        # Status of this `email` check.
        attr_reader :status
      end

      class IdNumber < Stripe::StripeObject
        class Dob < Stripe::StripeObject
          # Numerical day between 1 and 31.
          attr_reader :day
          # Numerical month between 1 and 12.
          attr_reader :month
          # The four-digit year.
          attr_reader :year
        end

        class Error < Stripe::StripeObject
          # A short machine-readable string giving the reason for the verification failure.
          attr_reader :code
          # A human-readable message giving the reason for the failure. These messages can be shown to your users.
          attr_reader :reason
        end
        # Date of birth.
        attr_reader :dob
        # Details on the verification error. Present when status is `unverified`.
        attr_reader :error
        # First name.
        attr_reader :first_name
        # ID number. When `id_number_type` is `us_ssn`, only the last 4 digits are present.
        attr_reader :id_number
        # Type of ID number.
        attr_reader :id_number_type
        # Last name.
        attr_reader :last_name
        # Status of this `id_number` check.
        attr_reader :status
      end

      class Options < Stripe::StripeObject
        class Document < Stripe::StripeObject
          # Array of strings of allowed identity document types. If the provided identity document isn’t one of the allowed types, the verification check will fail with a document_type_not_allowed error code.
          attr_reader :allowed_types
          # Collect an ID number and perform an [ID number check](https://stripe.com/docs/identity/verification-checks?type=id-number) with the document’s extracted name and date of birth.
          attr_reader :require_id_number
          # Disable image uploads, identity document images have to be captured using the device’s camera.
          attr_reader :require_live_capture
          # Capture a face image and perform a [selfie check](https://stripe.com/docs/identity/verification-checks?type=selfie) comparing a photo ID and a picture of your user’s face. [Learn more](https://stripe.com/docs/identity/selfie).
          attr_reader :require_matching_selfie
        end

        class IdNumber < Stripe::StripeObject; end
        # Attribute for field document
        attr_reader :document
        # Attribute for field id_number
        attr_reader :id_number
      end

      class Phone < Stripe::StripeObject
        class Error < Stripe::StripeObject
          # A short machine-readable string giving the reason for the verification failure.
          attr_reader :code
          # A human-readable message giving the reason for the failure. These messages can be shown to your users.
          attr_reader :reason
        end
        # Details on the verification error. Present when status is `unverified`.
        attr_reader :error
        # Phone to be verified.
        attr_reader :phone
        # Status of this `phone` check.
        attr_reader :status
      end

      class Selfie < Stripe::StripeObject
        class Error < Stripe::StripeObject
          # A short machine-readable string giving the reason for the verification failure.
          attr_reader :code
          # A human-readable message giving the reason for the failure. These messages can be shown to your users.
          attr_reader :reason
        end
        # ID of the [File](https://stripe.com/docs/api/files) holding the image of the identity document used in this check.
        attr_reader :document
        # Details on the verification error. Present when status is `unverified`.
        attr_reader :error
        # ID of the [File](https://stripe.com/docs/api/files) holding the image of the selfie used in this check.
        attr_reader :selfie
        # Status of this `selfie` check.
        attr_reader :status
      end

      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
        attr_accessor :client_reference_id
        # Only return VerificationReports that were created during the given date interval.
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # Only return VerificationReports of this type
        attr_accessor :type
        # Only return VerificationReports created by this VerificationSession ID. It is allowed to provide a VerificationIntent ID.
        attr_accessor :verification_session

        def initialize(
          client_reference_id: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          type: nil,
          verification_session: nil
        )
          @client_reference_id = client_reference_id
          @created = created
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
          @type = type
          @verification_session = verification_session
        end
      end
      # A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
      attr_reader :client_reference_id
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Result from a document check
      attr_reader :document
      # Result from a email check
      attr_reader :email
      # Unique identifier for the object.
      attr_reader :id
      # Result from an id_number check
      attr_reader :id_number
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Attribute for field options
      attr_reader :options
      # Result from a phone check
      attr_reader :phone
      # Result from a selfie check
      attr_reader :selfie
      # Type of report.
      attr_reader :type
      # The configuration token of a verification flow from the dashboard.
      attr_reader :verification_flow
      # ID of the VerificationSession that created this report.
      attr_reader :verification_session

      # List all verification reports.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/identity/verification_reports",
          params: params,
          opts: opts
        )
      end
    end
  end
end
