# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Commerce
      module ProductCatalog
        class ImportCreateParams < ::Stripe::RequestParams
          # The type of catalog data to import.
          sig { returns(String) }
          def feed_type; end
          sig { params(_feed_type: String).returns(String) }
          def feed_type=(_feed_type); end
          # Additional information about the import in a structured format.
          sig { returns(T::Hash[String, String]) }
          def metadata; end
          sig { params(_metadata: T::Hash[String, String]).returns(T::Hash[String, String]) }
          def metadata=(_metadata); end
          # The strategy for handling existing catalog data during import.
          sig { returns(String) }
          def mode; end
          sig { params(_mode: String).returns(String) }
          def mode=(_mode); end
          sig { params(feed_type: String, metadata: T::Hash[String, String], mode: String).void }
          def initialize(feed_type: nil, metadata: nil, mode: nil); end
        end
      end
    end
  end
end