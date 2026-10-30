# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class AccountRejectParams < ::Stripe::RequestParams
        # Additional fields to include in the response.
        attr_accessor :include
        # Operations that remain unaffected by the rejection. Repeated requests replace the previous set; omitting this field clears any preserved operations.
        attr_accessor :preserve_operations
        # The reason for rejecting the Account. Repeated requests replace the previously recorded reason.
        attr_accessor :reason

        def initialize(include: nil, preserve_operations: nil, reason: nil)
          @include = include
          @preserve_operations = preserve_operations
          @reason = reason
        end
      end
    end
  end
end
