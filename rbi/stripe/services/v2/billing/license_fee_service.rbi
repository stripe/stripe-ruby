# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class LicenseFeeService < StripeService
        attr_reader :versions
        # Create a License Fee object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::LicenseFeeCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::LicenseFee)
         }
        def create(params = {}, opts = {}); end

        # List all License Fee objects.
        sig {
          params(params: T.any(::Stripe::V2::Billing::LicenseFeeListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a License Fee object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::LicenseFeeRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::LicenseFee)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a License Fee object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::LicenseFeeUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::LicenseFee)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end