# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module Contracts
        class TermListContractTermsParams < ::Stripe::RequestParams
          # Maximum results per page.
          attr_accessor :limit
          # Filter terms by type.
          attr_accessor :type

          def initialize(limit: nil, type: nil)
            @limit = limit
            @type = type
          end
        end
      end
    end
  end
end
