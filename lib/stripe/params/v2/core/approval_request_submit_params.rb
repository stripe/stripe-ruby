# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class ApprovalRequestSubmitParams < ::Stripe::RequestParams
        # The reason for submitting the approval request.
        attr_accessor :reason

        def initialize(reason: nil)
          @reason = reason
        end
      end
    end
  end
end
