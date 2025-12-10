# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Iam
      class ApiKeyExpireParams < ::Stripe::RequestParams
        # Duration in minutes before the key expires (defaults to immediate).
        attr_accessor :expire_in_minutes

        def initialize(expire_in_minutes: nil)
          @expire_in_minutes = expire_in_minutes
        end
      end
    end
  end
end
