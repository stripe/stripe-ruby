# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module LicenseFees
        class VersionListParams < ::Stripe::RequestParams
          # Optionally set the maximum number of results per page. Defaults to 20.
          attr_accessor :limit

          def initialize(limit: nil)
            @limit = limit
          end
        end
      end
    end
  end
end
