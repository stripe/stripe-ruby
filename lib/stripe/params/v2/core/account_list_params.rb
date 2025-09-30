# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class AccountListParams < Stripe::RequestParams
        # Filter only accounts that have all of the configurations specified. If omitted, returns all accounts regardless of which configurations they have.
        attr_accessor :applied_configurations
        # The upper limit on the number of accounts returned by the List Account request.
        attr_accessor :limit

        def initialize(applied_configurations: nil, limit: nil)
          @applied_configurations = applied_configurations
          @limit = limit
        end
      end
    end
  end
end
