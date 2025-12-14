# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Iam
      class ApiKeyUpdateParams < ::Stripe::RequestParams
        # Name to set for the API key. If blank, the field is left unchanged.
        attr_accessor :name
        # Note or description to set for the API key. If blank, the field is left unchanged.
        attr_accessor :note

        def initialize(name: nil, note: nil)
          @name = name
          @note = note
        end
      end
    end
  end
end
