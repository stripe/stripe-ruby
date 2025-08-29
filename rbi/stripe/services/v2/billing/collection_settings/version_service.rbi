# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module CollectionSettings
        class VersionService < StripeService
          class ListParams < Stripe::RequestParams
            # Optionally set the maximum number of results per page. Defaults to 20.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :limit
            sig { params(limit: T.nilable(Integer)).void }
            def initialize(limit: nil); end
          end
          class RetrieveParams < Stripe::RequestParams; end
          # List all CollectionSettingVersions by CollectionSetting ID.
          sig {
            params(collection_setting_id: String, params: T.any(::Stripe::V2::Billing::CollectionSettings::VersionService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
           }
          def list(collection_setting_id, params = {}, opts = {}); end

          # Retrieve a CollectionSetting Version by ID.
          sig {
            params(collection_setting_id: String, id: String, params: T.any(::Stripe::V2::Billing::CollectionSettings::VersionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::CollectionSettingVersion)
           }
          def retrieve(collection_setting_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end