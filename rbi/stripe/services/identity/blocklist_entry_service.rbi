# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Identity
    class BlocklistEntryService < StripeService
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
      def create(params = {}, opts = {}); end

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
      def disable(id, params = {}, opts = {}); end

      # Returns a list of BlocklistEntry objects associated with your account.
      #
      # The blocklist entries are returned sorted by creation date, with the most recently created
      # entries appearing first.
      #
      # Related guide: [Identity Verification Blocklist](https://docs.stripe.com/docs/identity/review-tools#block-list)
      sig {
        params(params: T.any(::Stripe::Identity::BlocklistEntryListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves a BlocklistEntry object by its identifier.
      #
      # Related guide: [Identity Verification Blocklist](https://docs.stripe.com/docs/identity/review-tools#block-list)
      sig {
        params(id: String, params: T.any(::Stripe::Identity::BlocklistEntryRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Identity::BlocklistEntry)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end