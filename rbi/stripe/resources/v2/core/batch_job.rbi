# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class BatchJob < APIResource
        # Unique identifier for the batch job.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value.
        sig { returns(String) }
        def object; end
        # The URL to upload the JSONL file to.
        sig { returns(String) }
        def url; end
      end
    end
  end
end