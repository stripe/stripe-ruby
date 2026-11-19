# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ContractCancelParams < ::Stripe::RequestParams
        class Term < ::Stripe::RequestParams
          class Term < ::Stripe::RequestParams
            # Select this term by its stable ID.
            attr_accessor :id
            # Select this term by its unique lookup key.
            attr_accessor :lookup_key
            # Whether the selector uses a term ID or lookup key.
            attr_accessor :type

            def initialize(id: nil, lookup_key: nil, type: nil)
              @id = id
              @lookup_key = lookup_key
              @type = type
            end
          end
          # Falls back to the contract cancellation's top-level proration behavior.
          attr_accessor :proration_behavior
          # Select a term by ID or its unique lookup key.
          attr_accessor :term

          def initialize(proration_behavior: nil, term: nil)
            @proration_behavior = proration_behavior
            @term = term
          end
        end
        # Additional fields to include in the response.
        attr_accessor :include
        # Top-level proration behavior for the cancellation. Defaults to `prorated` if not set.
        attr_accessor :proration_behavior
        # Per-term proration overrides.
        attr_accessor :terms

        def initialize(include: nil, proration_behavior: nil, terms: nil)
          @include = include
          @proration_behavior = proration_behavior
          @terms = terms
        end
      end
    end
  end
end
