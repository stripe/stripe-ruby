# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class InboundTransferMandateListParams < ::Stripe::RequestParams
        # Filter by v2 credential.
        attr_accessor :credential
        # Maximum number of results to return on a single page.
        attr_accessor :limit
        # Filter by mandate status.
        attr_accessor :status
        # Filter by mandate scheme type.
        attr_accessor :type

        def initialize(credential: nil, limit: nil, status: nil, type: nil)
          @credential = credential
          @limit = limit
          @status = status
          @type = type
        end
      end
    end
  end
end
