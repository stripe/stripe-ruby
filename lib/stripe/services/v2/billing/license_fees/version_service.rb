# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module LicenseFees
        class VersionService < StripeService
          # List all versions of a License Fee object.
          def list(license_fee_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/license_fees/%<license_fee_id>s/versions", { license_fee_id: CGI.escape(license_fee_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve a License Fee Version object.
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
