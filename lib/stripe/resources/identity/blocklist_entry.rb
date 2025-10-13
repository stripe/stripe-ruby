# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Identity
    # A BlocklistEntry represents an entry in our identity verification blocklist.
    # It helps prevent fraudulent users from repeatedly attempting verification with similar information.
    # When you create a BlocklistEntry, we store data from a previous verification attempt,
    # such as document details or facial biometrics.
    # This allows us to compare future verification attempts against these entries.
    # If a match is found, we categorize the new verification as unverified.
    #
    # To learn more, see [Identity Verification Blocklist](https://stripe.com/docs/identity/review-tools#block-list)
    class BlocklistEntry < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "identity.blocklist_entry"
      def self.object_name
        "identity.blocklist_entry"
      end

      class Redaction < ::Stripe::StripeObject
        # Indicates whether this object and its related objects have been redacted or not.
        attr_reader :status

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Time at which you disabled the BlocklistEntry. Measured in seconds since the Unix epoch.
      attr_reader :disabled_at
      # Time at which the BlocklistEntry expires. Measured in seconds since the Unix epoch.
      attr_reader :expires_at
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Redaction status of the BlocklistEntry. If the BlocklistEntry isn't redacted, this field is null.
      attr_reader :redaction
      # The current status of the BlocklistEntry.
      attr_reader :status
      # The type of BlocklistEntry.
      attr_reader :type
      # The verification report the BlocklistEntry was created from.
      attr_reader :verification_report
      # The verification session the BlocklistEntry was created from.
      attr_reader :verification_session

      # Creates a BlocklistEntry object from a verification report.
      #
      # A blocklist entry prevents future identity verifications that match the same identity information.
      # You can create blocklist entries from verification reports that contain document extracted data
      # or a selfie.
      #
      # Related guide: [Identity Verification Blocklist](https://docs.stripe.com/docs/identity/review-tools#add-a-blocklist-entry)
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/identity/blocklist_entries",
          params: params,
          opts: opts
        )
      end

      # Disables a BlocklistEntry object.
      #
      # After a BlocklistEntry is disabled, it will no longer block future verifications that match
      # the same information. This action is irreversible. To re-enable it, a new BlocklistEntry
      # must be created using the same verification report.
      #
      # Related guide: [Identity Verification Blocklist](https://docs.stripe.com/docs/identity/review-tools#disable-a-blocklist-entry)
      def disable(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/identity/blocklist_entries/%<id>s/disable", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Disables a BlocklistEntry object.
      #
      # After a BlocklistEntry is disabled, it will no longer block future verifications that match
      # the same information. This action is irreversible. To re-enable it, a new BlocklistEntry
      # must be created using the same verification report.
      #
      # Related guide: [Identity Verification Blocklist](https://docs.stripe.com/docs/identity/review-tools#disable-a-blocklist-entry)
      def self.disable(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/identity/blocklist_entries/%<id>s/disable", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Returns a list of BlocklistEntry objects associated with your account.
      #
      # The blocklist entries are returned sorted by creation date, with the most recently created
      # entries appearing first.
      #
      # Related guide: [Identity Verification Blocklist](https://docs.stripe.com/docs/identity/review-tools#block-list)
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/identity/blocklist_entries",
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = { redaction: Redaction }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
