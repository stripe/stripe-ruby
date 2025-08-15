# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module LicenseFees
        class VersionService < StripeService
          class ListParams < Stripe::RequestParams
            # Optionally set the maximum number of results per page. Defaults to 20.
            attr_accessor :limit

            def initialize(limit: nil)
              @limit = limit
            end
          end

          class RetrieveParams < Stripe::RequestParams; end

          # List all versions of a LicenseFee objects.
          def list(license_fee_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/license_fees/%<license_fee_id>s/versions", { license_fee_id: CGI.escape(license_fee_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve a LicenseFeeVersion object.
          def retrieve(license_fee_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/license_fees/%<license_fee_id>s/versions/%<id>s", { license_fee_id: CGI.escape(license_fee_id), id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end
        end
      end
    end
  end
end
