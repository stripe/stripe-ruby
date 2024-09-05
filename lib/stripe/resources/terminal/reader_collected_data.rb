# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    # Returns data collected by Terminal readers. This data is only stored for 24 hours.
    class ReaderCollectedData < APIResource
      OBJECT_NAME = "terminal.reader_collected_data"
      def self.object_name
        "terminal.reader_collected_data"
      end
    end
  end
end
