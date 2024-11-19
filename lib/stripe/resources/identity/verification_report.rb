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
          attr_reader :city, :country, :line1, :line2, :postal_code, :state
        end

        class Dob < Stripe::StripeObject
          attr_reader :day, :month, :year
        end

        class Error < Stripe::StripeObject
          attr_reader :code, :reason
        end

        class ExpirationDate < Stripe::StripeObject
          attr_reader :day, :month, :year
        end

        class IssuedDate < Stripe::StripeObject
          attr_reader :day, :month, :year
        end
        attr_reader :address, :dob, :error, :expiration_date, :files, :first_name, :issued_date, :issuing_country, :last_name, :number, :status, :type
      end

      class Email < Stripe::StripeObject
        class Error < Stripe::StripeObject
          attr_reader :code, :reason
        end
        attr_reader :email, :error, :status
      end

      class IdNumber < Stripe::StripeObject
        class Dob < Stripe::StripeObject
          attr_reader :day, :month, :year
        end

        class Error < Stripe::StripeObject
          attr_reader :code, :reason
        end
        attr_reader :dob, :error, :first_name, :id_number, :id_number_type, :last_name, :status
      end

      class Options < Stripe::StripeObject
        class Document < Stripe::StripeObject
          attr_reader :allowed_types, :require_id_number, :require_live_capture, :require_matching_selfie
        end

        class IdNumber < Stripe::StripeObject; end
        attr_reader :document, :id_number
      end

      class Phone < Stripe::StripeObject
        class Error < Stripe::StripeObject
          attr_reader :code, :reason
        end
        attr_reader :error, :phone, :status
      end

      class Selfie < Stripe::StripeObject
        class Error < Stripe::StripeObject
          attr_reader :code, :reason
        end
        attr_reader :document, :error, :selfie, :status
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
