# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module BillSettings
        class VersionService < StripeService
          class ListParams < Stripe::RequestParams
            # Optionally set the maximum number of results per page. Defaults to 20.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :limit
            sig { params(limit: T.nilable(Integer)).void }
            def initialize(limit: nil); end
          end
          class RetrieveParams < Stripe::RequestParams; end
          # List all BillSettingVersions by BillSetting ID.
          sig {
            params(bill_setting_id: String, params: T.any(::Stripe::V2::Billing::BillSettings::VersionService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
           }
          def list(bill_setting_id, params = {}, opts = {}); end

          # Retrieve a BillSettingVersion by ID.
          sig {
            params(bill_setting_id: String, id: String, params: T.any(::Stripe::V2::Billing::BillSettings::VersionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::BillSettingVersion)
           }
          def retrieve(bill_setting_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end