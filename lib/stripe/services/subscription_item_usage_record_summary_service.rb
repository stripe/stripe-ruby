# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class SubscriptionItemUsageRecordSummaryService < StripeService
    # For the specified subscription item, returns a list of summary objects. Each object in the list provides usage information that's been summarized from multiple usage records and over a subscription billing period (e.g., 15 usage records in the month of September).
    #
    # The list is sorted in reverse-chronological order (newest first). The first list item represents the most current usage period that hasn't ended yet. Since new usage records can still be added, the returned summary information for the subscription item's ID should be seen as unstable until the subscription billing period ends.
    def list(subscription_item, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/subscription_items/%<subscription_item>s/usage_record_summaries", { subscription_item: CGI.escape(subscription_item) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
