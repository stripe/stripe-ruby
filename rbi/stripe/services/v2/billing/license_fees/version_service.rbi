# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module LicenseFees
        class VersionService < StripeService
          class ListParams < Stripe::RequestParams
            # Optionally set the maximum number of results per page. Defaults to 20.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :limit
            sig { params(limit: T.nilable(Integer)).void }
            def initialize(limit: nil); end
          end
          class RetrieveParams < Stripe::RequestParams; end
          # List all versions of a License Fee object.
          sig {
            params(license_fee_id: String, params: T.any(::Stripe::V2::Billing::LicenseFees::VersionService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
           }
          def list(license_fee_id, params = {}, opts = {}); end

          # Retrieve a License Fee Version object.
          sig {
            params(license_fee_id: String, id: String, params: T.any(::Stripe::V2::Billing::LicenseFees::VersionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::LicenseFeeVersion)
           }
          def retrieve(license_fee_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end