# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class BatchJob < APIResource
        OBJECT_NAME = "v2.core.batch_job"
        def self.object_name
          "v2.core.batch_job"
        end

        # Unique identifier for the batch job.
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value.
        attr_reader :object
        # The URL to upload the JSONL file to.
        attr_reader :url

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
