# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Commerce
      module ProductCatalog
        class ImportCreateParams < ::Stripe::RequestParams
          # The type of catalog data to import.
          attr_accessor :feed_type
          # Additional information about the import in a structured format.
          attr_accessor :metadata
          # The strategy for handling existing catalog data during import.
          attr_accessor :mode

          def initialize(feed_type: nil, metadata: nil, mode: nil)
            @feed_type = feed_type
            @metadata = metadata
            @mode = mode
          end
        end
      end
    end
  end
end
