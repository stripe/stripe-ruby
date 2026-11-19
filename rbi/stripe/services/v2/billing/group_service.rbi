# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class GroupService < StripeService
        attr_reader :invoices
        attr_reader :spend_modifier_rules
        # Cancel a BillingGroup.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::GroupCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Group)
         }
        def cancel(id, params = {}, opts = {}); end

        # Create a BillingGroup.
        sig {
          params(params: T.any(::Stripe::V2::Billing::GroupCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Group)
         }
        def create(params = {}, opts = {}); end

        # List Billing Groups.
        sig {
          params(params: T.any(::Stripe::V2::Billing::GroupListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a BillingGroup.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::GroupRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Group)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a BillingGroup.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::GroupUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::Group)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end