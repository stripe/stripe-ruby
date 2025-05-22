# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Identity
    class VerificationSessionService < StripeService
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
        # Only return VerificationSessions that were created during the given date interval.
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # Attribute for param field related_customer
        attr_accessor :related_customer
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # Only return VerificationSessions with this status. [Learn more about the lifecycle of sessions](https://stripe.com/docs/identity/how-sessions-work).
        attr_accessor :status

        def initialize(
          client_reference_id: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          related_customer: nil,
          starting_after: nil,
          status: nil
        )
          @client_reference_id = client_reference_id
          @created = created
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @related_customer = related_customer
          @starting_after = starting_after
          @status = status
        end
      end

      class CreateParams < Stripe::RequestParams
        class Options < Stripe::RequestParams
          class Document < Stripe::RequestParams
            # Array of strings of allowed identity document types. If the provided identity document isn’t one of the allowed types, the verification check will fail with a document_type_not_allowed error code.
            attr_accessor :allowed_types
            # Collect an ID number and perform an [ID number check](https://stripe.com/docs/identity/verification-checks?type=id-number) with the document’s extracted name and date of birth.
            attr_accessor :require_id_number
            # Disable image uploads, identity document images have to be captured using the device’s camera.
            attr_accessor :require_live_capture
            # Capture a face image and perform a [selfie check](https://stripe.com/docs/identity/verification-checks?type=selfie) comparing a photo ID and a picture of your user’s face. [Learn more](https://stripe.com/docs/identity/selfie).
            attr_accessor :require_matching_selfie

            def initialize(
              allowed_types: nil,
              require_id_number: nil,
              require_live_capture: nil,
              require_matching_selfie: nil
            )
              @allowed_types = allowed_types
              @require_id_number = require_id_number
              @require_live_capture = require_live_capture
              @require_matching_selfie = require_matching_selfie
            end
          end
          # Options that apply to the [document check](https://stripe.com/docs/identity/verification-checks?type=document).
          attr_accessor :document

          def initialize(document: nil)
            @document = document
          end
        end

        class ProvidedDetails < Stripe::RequestParams
          # Email of user being verified
          attr_accessor :email
          # Phone number of user being verified
          attr_accessor :phone

          def initialize(email: nil, phone: nil)
            @email = email
            @phone = phone
          end
        end
        # A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
        attr_accessor :client_reference_id
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # A set of options for the session’s verification checks.
        attr_accessor :options
        # Details provided about the user being verified. These details may be shown to the user.
        attr_accessor :provided_details
        # Customer ID
        attr_accessor :related_customer
        # The URL that the user will be redirected to upon completing the verification flow.
        attr_accessor :return_url
        # The type of [verification check](https://stripe.com/docs/identity/verification-checks) to be performed. You must provide a `type` if not passing `verification_flow`.
        attr_accessor :type
        # The ID of a verification flow from the Dashboard. See https://docs.stripe.com/identity/verification-flows.
        attr_accessor :verification_flow

        def initialize(
          client_reference_id: nil,
          expand: nil,
          metadata: nil,
          options: nil,
          provided_details: nil,
          related_customer: nil,
          return_url: nil,
          type: nil,
          verification_flow: nil
        )
          @client_reference_id = client_reference_id
          @expand = expand
          @metadata = metadata
          @options = options
          @provided_details = provided_details
          @related_customer = related_customer
          @return_url = return_url
          @type = type
          @verification_flow = verification_flow
        end
      end

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class UpdateParams < Stripe::RequestParams
        class Options < Stripe::RequestParams
          class Document < Stripe::RequestParams
            # Array of strings of allowed identity document types. If the provided identity document isn’t one of the allowed types, the verification check will fail with a document_type_not_allowed error code.
            attr_accessor :allowed_types
            # Collect an ID number and perform an [ID number check](https://stripe.com/docs/identity/verification-checks?type=id-number) with the document’s extracted name and date of birth.
            attr_accessor :require_id_number
            # Disable image uploads, identity document images have to be captured using the device’s camera.
            attr_accessor :require_live_capture
            # Capture a face image and perform a [selfie check](https://stripe.com/docs/identity/verification-checks?type=selfie) comparing a photo ID and a picture of your user’s face. [Learn more](https://stripe.com/docs/identity/selfie).
            attr_accessor :require_matching_selfie

            def initialize(
              allowed_types: nil,
              require_id_number: nil,
              require_live_capture: nil,
              require_matching_selfie: nil
            )
              @allowed_types = allowed_types
              @require_id_number = require_id_number
              @require_live_capture = require_live_capture
              @require_matching_selfie = require_matching_selfie
            end
          end
          # Options that apply to the [document check](https://stripe.com/docs/identity/verification-checks?type=document).
          attr_accessor :document

          def initialize(document: nil)
            @document = document
          end
        end

        class ProvidedDetails < Stripe::RequestParams
          # Email of user being verified
          attr_accessor :email
          # Phone number of user being verified
          attr_accessor :phone

          def initialize(email: nil, phone: nil)
            @email = email
            @phone = phone
          end
        end
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # A set of options for the session’s verification checks.
        attr_accessor :options
        # Details provided about the user being verified. These details may be shown to the user.
        attr_accessor :provided_details
        # The type of [verification check](https://stripe.com/docs/identity/verification-checks) to be performed.
        attr_accessor :type

        def initialize(expand: nil, metadata: nil, options: nil, provided_details: nil, type: nil)
          @expand = expand
          @metadata = metadata
          @options = options
          @provided_details = provided_details
          @type = type
        end
      end

      class CancelParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class RedactParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      # A VerificationSession object can be canceled when it is in requires_input [status](https://docs.stripe.com/docs/identity/how-sessions-work).
      #
      # Once canceled, future submission attempts are disabled. This cannot be undone. [Learn more](https://docs.stripe.com/docs/identity/verification-sessions#cancel).
      def cancel(session, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/identity/verification_sessions/%<session>s/cancel", { session: CGI.escape(session) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Creates a VerificationSession object.
      #
      # After the VerificationSession is created, display a verification modal using the session client_secret or send your users to the session's url.
      #
      # If your API key is in test mode, verification checks won't actually process, though everything else will occur as if in live mode.
      #
      # Related guide: [Verify your users' identity documents](https://docs.stripe.com/docs/identity/verify-identity-documents)
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/identity/verification_sessions",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of VerificationSessions
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/identity/verification_sessions",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

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
      def redact(session, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/identity/verification_sessions/%<session>s/redact", { session: CGI.escape(session) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of a VerificationSession that was previously created.
      #
      # When the session status is requires_input, you can use this method to retrieve a valid
      # client_secret or url to allow re-submission.
      def retrieve(session, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/identity/verification_sessions/%<session>s", { session: CGI.escape(session) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates a VerificationSession object.
      #
      # When the session status is requires_input, you can use this method to update the
      # verification check and options.
      def update(session, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/identity/verification_sessions/%<session>s", { session: CGI.escape(session) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
