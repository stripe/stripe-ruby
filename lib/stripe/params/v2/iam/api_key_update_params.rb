# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Iam
      class ApiKeyUpdateParams < ::Stripe::RequestParams
        # List of connect permissions for this API key.
        attr_accessor :connect_permissions
        # Name to set for the API key. If blank, the field is left unchanged.
        attr_accessor :name
        # Note or description to set for the API key. If blank, the field is left unchanged.
        attr_accessor :note
        # List of permissions for this API key.
        attr_accessor :permissions

        def initialize(connect_permissions: nil, name: nil, note: nil, permissions: nil)
          @connect_permissions = connect_permissions
          @name = name
          @note = note
          @permissions = permissions
        end
      end
    end
  end
end
