# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    class ReaderCollectedDataService < StripeService
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        def initialize(expand: nil)
          @expand = expand
        end
      end
      # Retrieve data collected using Reader hardware.
      def retrieve(reader_collected_data, params = {}, opts = {})
        request(
          method: :get,
          path: format('/v1/terminal/reader_collected_data/%<reader_collected_data>s', {:reader_collected_data => CGI.escape(reader_collected_data)}),
          params: params,
          opts: opts,
          base_address: :api,
        )
      end
    end
  end
end