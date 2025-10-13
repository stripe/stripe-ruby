# File generated from our OpenAPI spec
# frozen_string_literal: true

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
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/identity/blocklist_entries",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Disables a BlocklistEntry object.
      #
      # After a BlocklistEntry is disabled, it will no longer block future verifications that match
      # the same information. This action is irreversible. To re-enable it, a new BlocklistEntry
      # must be created using the same verification report.
      #
      # Related guide: [Identity Verification Blocklist](https://docs.stripe.com/docs/identity/review-tools#disable-a-blocklist-entry)
      def disable(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/identity/blocklist_entries/%<id>s/disable", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of BlocklistEntry objects associated with your account.
      #
      # The blocklist entries are returned sorted by creation date, with the most recently created
      # entries appearing first.
      #
      # Related guide: [Identity Verification Blocklist](https://docs.stripe.com/docs/identity/review-tools#block-list)
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/identity/blocklist_entries",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a BlocklistEntry object by its identifier.
      #
      # Related guide: [Identity Verification Blocklist](https://docs.stripe.com/docs/identity/review-tools#block-list)
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/identity/blocklist_entries/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
