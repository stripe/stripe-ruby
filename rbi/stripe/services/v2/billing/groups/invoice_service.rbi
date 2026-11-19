# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module Groups
        class InvoiceService < StripeService
          # Create an empty invoice using the billing group's settings.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Billing::Groups::InvoiceCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Billing::GroupInvoice)
           }
          def create(id, params = {}, opts = {}); end
        end
      end
    end
  end
end