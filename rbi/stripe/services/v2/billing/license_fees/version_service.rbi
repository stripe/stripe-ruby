# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module LicenseFees
        class VersionService < StripeService
          # List all versions of a License Fee object.
          sig {
            params(license_fee_id: String, params: T.any(::Stripe::V2::Billing::LicenseFees::VersionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
           }
          def list(license_fee_id, params = {}, opts = {}); end

          # Retrieve a License Fee Version object.
          sig {
            params(license_fee_id: String, id: String, params: T.any(::Stripe::V2::Billing::LicenseFees::VersionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::LicenseFeeVersion)
           }
          def retrieve(license_fee_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end