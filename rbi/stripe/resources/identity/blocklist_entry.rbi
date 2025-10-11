# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
      class Redaction < ::Stripe::StripeObject
        # Indicates whether this object and its related objects have been redacted or not.
        sig { returns(String) }
        def status; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Time at which you disabled the BlocklistEntry. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      def disabled_at; end
      # Time at which the BlocklistEntry expires. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      def expires_at; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Redaction status of the BlocklistEntry. If the BlocklistEntry isn't redacted, this field is null.
      sig { returns(T.nilable(Redaction)) }
      def redaction; end
      # The current status of the BlocklistEntry.
      sig { returns(String) }
      def status; end
      # The type of BlocklistEntry.
      sig { returns(String) }
      def type; end
      # The verification report the BlocklistEntry was created from.
      sig { returns(T.nilable(T.any(String, ::Stripe::Identity::VerificationReport))) }
      def verification_report; end
      # The verification session the BlocklistEntry was created from.
      sig { returns(T.nilable(T.any(String, ::Stripe::Identity::VerificationSession))) }
      def verification_session; end
      # Creates a BlocklistEntry object from a verification report.
      #
      # A blocklist entry prevents future identity verifications that match the same identity information.
      # You can create blocklist entries from verification reports that contain document extracted data
      # or a selfie.
      #
      # Related guide: [Identity Verification Blocklist](https://docs.stripe.com/docs/identity/review-tools#add-a-blocklist-entry)
      sig {
        params(params: T.any(::Stripe::Identity::BlocklistEntryCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Identity::BlocklistEntry)
       }
      def self.create(params = {}, opts = {}); end

      # Disables a BlocklistEntry object.
      #
      # After a BlocklistEntry is disabled, it will no longer block future verifications that match
      # the same information. This action is irreversible. To re-enable it, a new BlocklistEntry
      # must be created using the same verification report.
      #
      # Related guide: [Identity Verification Blocklist](https://docs.stripe.com/docs/identity/review-tools#disable-a-blocklist-entry)
      sig {
        params(params: T.any(::Stripe::Identity::BlocklistEntryDisableParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Identity::BlocklistEntry)
       }
      def disable(params = {}, opts = {}); end

      # Disables a BlocklistEntry object.
      #
      # After a BlocklistEntry is disabled, it will no longer block future verifications that match
      # the same information. This action is irreversible. To re-enable it, a new BlocklistEntry
      # must be created using the same verification report.
      #
      # Related guide: [Identity Verification Blocklist](https://docs.stripe.com/docs/identity/review-tools#disable-a-blocklist-entry)
      sig {
        params(id: String, params: T.any(::Stripe::Identity::BlocklistEntryDisableParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Identity::BlocklistEntry)
       }
      def self.disable(id, params = {}, opts = {}); end

      # Returns a list of BlocklistEntry objects associated with your account.
      #
      # The blocklist entries are returned sorted by creation date, with the most recently created
      # entries appearing first.
      #
      # Related guide: [Identity Verification Blocklist](https://docs.stripe.com/docs/identity/review-tools#block-list)
      sig {
        params(params: T.any(::Stripe::Identity::BlocklistEntryListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end