# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module BillSettings
        class VersionService < StripeService
          # List all BillSettingVersions by BillSetting ID.
          def list(bill_setting_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/bill_settings/%<bill_setting_id>s/versions", { bill_setting_id: CGI.escape(bill_setting_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve a BillSettingVersion by ID.
          def retrieve(bill_setting_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/bill_settings/%<bill_setting_id>s/versions/%<id>s", { bill_setting_id: CGI.escape(bill_setting_id), id: CGI.escape(id) }),
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
