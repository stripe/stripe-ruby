# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Health
        class AlertListParams < ::Stripe::RequestParams
          # Filter for alerts created at the specified timestamp.
          attr_accessor :created
          # Filter for alerts created after the specified timestamp.
          attr_accessor :created_gt
          # Filter for alerts created on or after the specified timestamp.
          attr_accessor :created_gte
          # Filter for alerts created before the specified timestamp.
          attr_accessor :created_lt
          # Filter for alerts created on or before the specified timestamp.
          attr_accessor :created_lte
          # The page limit.
          attr_accessor :limit
          # Filter by alert severity.
          attr_accessor :severity
          # Filter by alert status.
          attr_accessor :status
          # Filter by alert types.
          attr_accessor :types

          def initialize(
            created: nil,
            created_gt: nil,
            created_gte: nil,
            created_lt: nil,
            created_lte: nil,
            limit: nil,
            severity: nil,
            status: nil,
            types: nil
          )
            @created = created
            @created_gt = created_gt
            @created_gte = created_gte
            @created_lt = created_lt
            @created_lte = created_lte
            @limit = limit
            @severity = severity
            @status = status
            @types = types
          end
        end
      end
    end
  end
end
