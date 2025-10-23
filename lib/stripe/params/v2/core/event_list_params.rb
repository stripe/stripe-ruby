# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class EventListParams < ::Stripe::RequestParams
        # Filter for events created after the specified timestamp.
        attr_accessor :gt
        # Filter for events created at or after the specified timestamp.
        attr_accessor :gte
        # The page size.
        attr_accessor :limit
        # Filter for events created before the specified timestamp.
        attr_accessor :lt
        # Filter for events created at or before the specified timestamp.
        attr_accessor :lte
        # Primary object ID used to retrieve related events.
        #
        # To avoid conflict with Ruby's ':object_id', this attribute has been renamed. If using a hash parameter map instead, please use the original name ':object_id' with NO trailing underscore as the provided param key.
        attr_accessor :object_id_
        # An array of up to 20 strings containing specific event names.
        attr_accessor :types

        def initialize(
          gt: nil,
          gte: nil,
          limit: nil,
          lt: nil,
          lte: nil,
          object_id_: nil,
          types: nil
        )
          @gt = gt
          @gte = gte
          @limit = limit
          @lt = lt
          @lte = lte
          @object_id_ = object_id_
          @types = types
        end
      end
    end
  end
end
