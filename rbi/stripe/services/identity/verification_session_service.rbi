# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Identity
    class VerificationSessionService < StripeService
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def gt; end
          sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gt=(_gt); end
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def gte; end
          sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gte=(_gte); end
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def lt; end
          sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lt=(_lt); end
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def lte; end
          sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
        sig { returns(T.nilable(String)) }
        def client_reference_id; end
        sig { params(_client_reference_id: T.nilable(String)).returns(T.nilable(String)) }
        def client_reference_id=(_client_reference_id); end
        # Only return VerificationSessions that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Identity::VerificationSessionService::ListParams::Created, Integer)))
         }
        def created; end
        sig {
          params(_created: T.nilable(T.any(::Stripe::Identity::VerificationSessionService::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Identity::VerificationSessionService::ListParams::Created, Integer)))
         }
        def created=(_created); end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Attribute for param field related_customer
        sig { returns(T.nilable(String)) }
        def related_customer; end
        sig { params(_related_customer: T.nilable(String)).returns(T.nilable(String)) }
        def related_customer=(_related_customer); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # Only return VerificationSessions with this status. [Learn more about the lifecycle of sessions](https://stripe.com/docs/identity/how-sessions-work).
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        sig {
          params(client_reference_id: T.nilable(String), created: T.nilable(T.any(::Stripe::Identity::VerificationSessionService::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), related_customer: T.nilable(String), starting_after: T.nilable(String), status: T.nilable(String)).void
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
            def allowed_types; end
            sig {
              params(_allowed_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def allowed_types=(_allowed_types); end
            # Collect an ID number and perform an [ID number check](https://stripe.com/docs/identity/verification-checks?type=id-number) with the document’s extracted name and date of birth.
            sig { returns(T.nilable(T::Boolean)) }
            def require_id_number; end
            sig { params(_require_id_number: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def require_id_number=(_require_id_number); end
            # Disable image uploads, identity document images have to be captured using the device’s camera.
            sig { returns(T.nilable(T::Boolean)) }
            def require_live_capture; end
            sig {
              params(_require_live_capture: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def require_live_capture=(_require_live_capture); end
            # Capture a face image and perform a [selfie check](https://stripe.com/docs/identity/verification-checks?type=selfie) comparing a photo ID and a picture of your user’s face. [Learn more](https://stripe.com/docs/identity/selfie).
            sig { returns(T.nilable(T::Boolean)) }
            def require_matching_selfie; end
            sig {
              params(_require_matching_selfie: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def require_matching_selfie=(_require_matching_selfie); end
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
            returns(T.nilable(T.any(String, ::Stripe::Identity::VerificationSessionService::CreateParams::Options::Document)))
           }
          def document; end
          sig {
            params(_document: T.nilable(T.any(String, ::Stripe::Identity::VerificationSessionService::CreateParams::Options::Document))).returns(T.nilable(T.any(String, ::Stripe::Identity::VerificationSessionService::CreateParams::Options::Document)))
           }
          def document=(_document); end
          sig {
            params(document: T.nilable(T.any(String, ::Stripe::Identity::VerificationSessionService::CreateParams::Options::Document))).void
           }
          def initialize(document: nil); end
        end
        class ProvidedDetails < Stripe::RequestParams
          # Email of user being verified
          sig { returns(T.nilable(String)) }
          def email; end
          sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
          def email=(_email); end
          # Phone number of user being verified
          sig { returns(T.nilable(String)) }
          def phone; end
          sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
          def phone=(_phone); end
          sig { params(email: T.nilable(String), phone: T.nilable(String)).void }
          def initialize(email: nil, phone: nil); end
        end
        class RelatedPerson < Stripe::RequestParams
          # A token representing a connected account. If provided, the person parameter is also required and must be associated with the account.
          sig { returns(String) }
          def account; end
          sig { params(_account: String).returns(String) }
          def account=(_account); end
          # A token referencing a Person resource that this verification is being used to verify.
          sig { returns(String) }
          def person; end
          sig { params(_person: String).returns(String) }
          def person=(_person); end
          sig { params(account: String, person: String).void }
          def initialize(account: nil, person: nil); end
        end
        # A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
        sig { returns(T.nilable(String)) }
        def client_reference_id; end
        sig { params(_client_reference_id: T.nilable(String)).returns(T.nilable(String)) }
        def client_reference_id=(_client_reference_id); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # A set of options for the session’s verification checks.
        sig {
          returns(T.nilable(::Stripe::Identity::VerificationSessionService::CreateParams::Options))
         }
        def options; end
        sig {
          params(_options: T.nilable(::Stripe::Identity::VerificationSessionService::CreateParams::Options)).returns(T.nilable(::Stripe::Identity::VerificationSessionService::CreateParams::Options))
         }
        def options=(_options); end
        # Details provided about the user being verified. These details may be shown to the user.
        sig {
          returns(T.nilable(::Stripe::Identity::VerificationSessionService::CreateParams::ProvidedDetails))
         }
        def provided_details; end
        sig {
          params(_provided_details: T.nilable(::Stripe::Identity::VerificationSessionService::CreateParams::ProvidedDetails)).returns(T.nilable(::Stripe::Identity::VerificationSessionService::CreateParams::ProvidedDetails))
         }
        def provided_details=(_provided_details); end
        # Customer ID
        sig { returns(T.nilable(String)) }
        def related_customer; end
        sig { params(_related_customer: T.nilable(String)).returns(T.nilable(String)) }
        def related_customer=(_related_customer); end
        # Tokens referencing a Person resource and it's associated account.
        sig {
          returns(T.nilable(::Stripe::Identity::VerificationSessionService::CreateParams::RelatedPerson))
         }
        def related_person; end
        sig {
          params(_related_person: T.nilable(::Stripe::Identity::VerificationSessionService::CreateParams::RelatedPerson)).returns(T.nilable(::Stripe::Identity::VerificationSessionService::CreateParams::RelatedPerson))
         }
        def related_person=(_related_person); end
        # The URL that the user will be redirected to upon completing the verification flow.
        sig { returns(T.nilable(String)) }
        def return_url; end
        sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
        def return_url=(_return_url); end
        # The type of [verification check](https://stripe.com/docs/identity/verification-checks) to be performed. You must provide a `type` if not passing `verification_flow`.
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
        def type=(_type); end
        # The ID of a verification flow from the Dashboard. See https://docs.stripe.com/identity/verification-flows.
        sig { returns(T.nilable(String)) }
        def verification_flow; end
        sig { params(_verification_flow: T.nilable(String)).returns(T.nilable(String)) }
        def verification_flow=(_verification_flow); end
        sig {
          params(client_reference_id: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), options: T.nilable(::Stripe::Identity::VerificationSessionService::CreateParams::Options), provided_details: T.nilable(::Stripe::Identity::VerificationSessionService::CreateParams::ProvidedDetails), related_customer: T.nilable(String), related_person: T.nilable(::Stripe::Identity::VerificationSessionService::CreateParams::RelatedPerson), return_url: T.nilable(String), type: T.nilable(String), verification_flow: T.nilable(String)).void
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
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        class Options < Stripe::RequestParams
          class Document < Stripe::RequestParams
            # Array of strings of allowed identity document types. If the provided identity document isn’t one of the allowed types, the verification check will fail with a document_type_not_allowed error code.
            sig { returns(T.nilable(T::Array[String])) }
            def allowed_types; end
            sig {
              params(_allowed_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def allowed_types=(_allowed_types); end
            # Collect an ID number and perform an [ID number check](https://stripe.com/docs/identity/verification-checks?type=id-number) with the document’s extracted name and date of birth.
            sig { returns(T.nilable(T::Boolean)) }
            def require_id_number; end
            sig { params(_require_id_number: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def require_id_number=(_require_id_number); end
            # Disable image uploads, identity document images have to be captured using the device’s camera.
            sig { returns(T.nilable(T::Boolean)) }
            def require_live_capture; end
            sig {
              params(_require_live_capture: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def require_live_capture=(_require_live_capture); end
            # Capture a face image and perform a [selfie check](https://stripe.com/docs/identity/verification-checks?type=selfie) comparing a photo ID and a picture of your user’s face. [Learn more](https://stripe.com/docs/identity/selfie).
            sig { returns(T.nilable(T::Boolean)) }
            def require_matching_selfie; end
            sig {
              params(_require_matching_selfie: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def require_matching_selfie=(_require_matching_selfie); end
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
            returns(T.nilable(T.any(String, ::Stripe::Identity::VerificationSessionService::UpdateParams::Options::Document)))
           }
          def document; end
          sig {
            params(_document: T.nilable(T.any(String, ::Stripe::Identity::VerificationSessionService::UpdateParams::Options::Document))).returns(T.nilable(T.any(String, ::Stripe::Identity::VerificationSessionService::UpdateParams::Options::Document)))
           }
          def document=(_document); end
          sig {
            params(document: T.nilable(T.any(String, ::Stripe::Identity::VerificationSessionService::UpdateParams::Options::Document))).void
           }
          def initialize(document: nil); end
        end
        class ProvidedDetails < Stripe::RequestParams
          # Email of user being verified
          sig { returns(T.nilable(String)) }
          def email; end
          sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
          def email=(_email); end
          # Phone number of user being verified
          sig { returns(T.nilable(String)) }
          def phone; end
          sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
          def phone=(_phone); end
          sig { params(email: T.nilable(String), phone: T.nilable(String)).void }
          def initialize(email: nil, phone: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # A set of options for the session’s verification checks.
        sig {
          returns(T.nilable(::Stripe::Identity::VerificationSessionService::UpdateParams::Options))
         }
        def options; end
        sig {
          params(_options: T.nilable(::Stripe::Identity::VerificationSessionService::UpdateParams::Options)).returns(T.nilable(::Stripe::Identity::VerificationSessionService::UpdateParams::Options))
         }
        def options=(_options); end
        # Details provided about the user being verified. These details may be shown to the user.
        sig {
          returns(T.nilable(::Stripe::Identity::VerificationSessionService::UpdateParams::ProvidedDetails))
         }
        def provided_details; end
        sig {
          params(_provided_details: T.nilable(::Stripe::Identity::VerificationSessionService::UpdateParams::ProvidedDetails)).returns(T.nilable(::Stripe::Identity::VerificationSessionService::UpdateParams::ProvidedDetails))
         }
        def provided_details=(_provided_details); end
        # The type of [verification check](https://stripe.com/docs/identity/verification-checks) to be performed.
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
        def type=(_type); end
        sig {
          params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), options: T.nilable(::Stripe::Identity::VerificationSessionService::UpdateParams::Options), provided_details: T.nilable(::Stripe::Identity::VerificationSessionService::UpdateParams::ProvidedDetails), type: T.nilable(String)).void
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
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class RedactParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # A VerificationSession object can be canceled when it is in requires_input [status](https://docs.stripe.com/docs/identity/how-sessions-work).
      #
      # Once canceled, future submission attempts are disabled. This cannot be undone. [Learn more](https://docs.stripe.com/docs/identity/verification-sessions#cancel).
      sig {
        params(session: String, params: T.any(::Stripe::Identity::VerificationSessionService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Identity::VerificationSession)
       }
      def cancel(session, params = {}, opts = {}); end

      # Creates a VerificationSession object.
      #
      # After the VerificationSession is created, display a verification modal using the session client_secret or send your users to the session's url.
      #
      # If your API key is in test mode, verification checks won't actually process, though everything else will occur as if in live mode.
      #
      # Related guide: [Verify your users' identity documents](https://docs.stripe.com/docs/identity/verify-identity-documents)
      sig {
        params(params: T.any(::Stripe::Identity::VerificationSessionService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Identity::VerificationSession)
       }
      def create(params = {}, opts = {}); end

      # Returns a list of VerificationSessions
      sig {
        params(params: T.any(::Stripe::Identity::VerificationSessionService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

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
        params(session: String, params: T.any(::Stripe::Identity::VerificationSessionService::RedactParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Identity::VerificationSession)
       }
      def redact(session, params = {}, opts = {}); end

      # Retrieves the details of a VerificationSession that was previously created.
      #
      # When the session status is requires_input, you can use this method to retrieve a valid
      # client_secret or url to allow re-submission.
      sig {
        params(session: String, params: T.any(::Stripe::Identity::VerificationSessionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Identity::VerificationSession)
       }
      def retrieve(session, params = {}, opts = {}); end

      # Updates a VerificationSession object.
      #
      # When the session status is requires_input, you can use this method to update the
      # verification check and options.
      sig {
        params(session: String, params: T.any(::Stripe::Identity::VerificationSessionService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Identity::VerificationSession)
       }
      def update(session, params = {}, opts = {}); end
    end
  end
end