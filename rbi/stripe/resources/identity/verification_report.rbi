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
        class Error < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :code
          sig { returns(T.nilable(String)) }
          attr_reader :reason
        end
        class ExpirationDate < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :day
          sig { returns(T.nilable(Integer)) }
          attr_reader :month
          sig { returns(T.nilable(Integer)) }
          attr_reader :year
        end
        class IssuedDate < Stripe::StripeObject
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
        sig { returns(T.nilable(Error)) }
        attr_reader :error
        sig { returns(T.nilable(ExpirationDate)) }
        attr_reader :expiration_date
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :files
        sig { returns(T.nilable(String)) }
        attr_reader :first_name
        sig { returns(T.nilable(IssuedDate)) }
        attr_reader :issued_date
        sig { returns(T.nilable(String)) }
        attr_reader :issuing_country
        sig { returns(T.nilable(String)) }
        attr_reader :last_name
        sig { returns(T.nilable(String)) }
        attr_reader :number
        sig { returns(String) }
        attr_reader :status
        sig { returns(T.nilable(String)) }
        attr_reader :type
      end
      class Email < Stripe::StripeObject
        class Error < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :code
          sig { returns(T.nilable(String)) }
          attr_reader :reason
        end
        sig { returns(T.nilable(String)) }
        attr_reader :email
        sig { returns(T.nilable(Error)) }
        attr_reader :error
        sig { returns(String) }
        attr_reader :status
      end
      class IdNumber < Stripe::StripeObject
        class Dob < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :day
          sig { returns(T.nilable(Integer)) }
          attr_reader :month
          sig { returns(T.nilable(Integer)) }
          attr_reader :year
        end
        class Error < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :code
          sig { returns(T.nilable(String)) }
          attr_reader :reason
        end
        sig { returns(T.nilable(Dob)) }
        attr_reader :dob
        sig { returns(T.nilable(Error)) }
        attr_reader :error
        sig { returns(T.nilable(String)) }
        attr_reader :first_name
        sig { returns(T.nilable(String)) }
        attr_reader :id_number
        sig { returns(T.nilable(String)) }
        attr_reader :id_number_type
        sig { returns(T.nilable(String)) }
        attr_reader :last_name
        sig { returns(String) }
        attr_reader :status
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
        class IdNumber < Stripe::StripeObject; end
        sig { returns(Document) }
        attr_reader :document
        sig { returns(IdNumber) }
        attr_reader :id_number
      end
      class Phone < Stripe::StripeObject
        class Error < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :code
          sig { returns(T.nilable(String)) }
          attr_reader :reason
        end
        sig { returns(T.nilable(Error)) }
        attr_reader :error
        sig { returns(T.nilable(String)) }
        attr_reader :phone
        sig { returns(String) }
        attr_reader :status
      end
      class Selfie < Stripe::StripeObject
        class Error < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :code
          sig { returns(T.nilable(String)) }
          attr_reader :reason
        end
        sig { returns(T.nilable(String)) }
        attr_reader :document
        sig { returns(T.nilable(Error)) }
        attr_reader :error
        sig { returns(T.nilable(String)) }
        attr_reader :selfie
        sig { returns(String) }
        attr_reader :status
      end
      sig { returns(T.nilable(String)) }
      # A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
      attr_reader :client_reference_id
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(Document) }
      # Result from a document check
      attr_reader :document
      sig { returns(Email) }
      # Result from a email check
      attr_reader :email
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(IdNumber) }
      # Result from an id_number check
      attr_reader :id_number
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(Options) }
      # Attribute for field options
      attr_reader :options
      sig { returns(Phone) }
      # Result from a phone check
      attr_reader :phone
      sig { returns(Selfie) }
      # Result from a selfie check
      attr_reader :selfie
      sig { returns(String) }
      # Type of report.
      attr_reader :type
      sig { returns(String) }
      # The configuration token of a verification flow from the dashboard.
      attr_reader :verification_flow
      sig { returns(T.nilable(String)) }
      # ID of the VerificationSession that created this report.
      attr_reader :verification_session
    end
  end
end