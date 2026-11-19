# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module Groups
        class InvoiceService < StripeService
          # Create an empty invoice using the billing group's settings.
          def create(id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/billing/groups/%<id>s/invoices", { id: CGI.escape(id) }),
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
