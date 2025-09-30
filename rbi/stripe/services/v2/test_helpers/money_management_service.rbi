# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module TestHelpers
      class MoneyManagementService < StripeService
        # Creates a RecipientVerification with a specified match result for testing purposes in a Sandbox environment.
        sig {
          params(params: T.any(::Stripe::V2::TestHelpers::MoneyManagementRecipientVerificationsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::RecipientVerification)
         }
        def recipient_verifications(params = {}, opts = {}); end
      end
    end
  end
end