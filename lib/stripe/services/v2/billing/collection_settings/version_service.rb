# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module CollectionSettings
        class VersionService < StripeService
          class ListParams < Stripe::RequestParams
            # Optionally set the maximum number of results per page. Defaults to 20.
            attr_accessor :limit

            def initialize(limit: nil)
              @limit = limit
            end
          end

          class RetrieveParams < Stripe::RequestParams; end

          # List all CollectionSettingVersions by CollectionSetting ID.
          def list(collection_setting_id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/collection_settings/%<collection_setting_id>s/versions", { collection_setting_id: CGI.escape(collection_setting_id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve a CollectionSetting Version by ID.
          def retrieve(collection_setting_id, id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/billing/collection_settings/%<collection_setting_id>s/versions/%<id>s", { collection_setting_id: CGI.escape(collection_setting_id), id: CGI.escape(id) }),
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
