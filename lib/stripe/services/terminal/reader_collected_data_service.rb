# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    class ReaderCollectedDataService < StripeService
      # Retrieve data collected using Reader hardware.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/terminal/reader_collected_data/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
