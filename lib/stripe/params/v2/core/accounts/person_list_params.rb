# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Accounts
        class PersonListParams < ::Stripe::RequestParams
          # The maximum number of items returned by the list request.
          attr_accessor :limit

          def initialize(limit: nil)
            @limit = limit
          end
        end
      end
    end
  end
end
