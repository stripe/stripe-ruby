# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A `Payout` object is created when you receive funds from Stripe, or when you
  # initiate a payout to either a bank account or debit card of a [connected
  # Stripe account](https://stripe.com/docs/connect/bank-debit-card-payouts). You can retrieve individual payouts,
  # and list all payouts. Payouts are made on [varying
  # schedules](https://stripe.com/docs/connect/manage-payout-schedule), depending on your country and
  # industry.
  #
  # Related guide: [Receiving payouts](https://stripe.com/docs/payouts)
  class Payout < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "payout"

    # You can cancel a previously created payout if it hasn't been paid out yet. Stripe refunds the funds to your available balance. You can't cancel automatic Stripe payouts.
    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payouts/%<payout>s/cancel", { payout: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Reverses a payout by debiting the destination bank account. At this time, you can only reverse payouts for connected accounts to US bank accounts. If the payout is in the pending status, use /v1/payouts/:id/cancel instead.
    #
    # By requesting a reversal through /v1/payouts/:id/reverse, you confirm that the authorized signatory of the selected bank account authorizes the debit on the bank account and that no other authorization is required.
    def reverse(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payouts/%<payout>s/reverse", { payout: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # You can cancel a previously created payout if it hasn't been paid out yet. Stripe refunds the funds to your available balance. You can't cancel automatic Stripe payouts.
    def self.cancel(payout, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payouts/%<payout>s/cancel", { payout: CGI.escape(payout) }),
        params: params,
        opts: opts
      )
    end

    # Reverses a payout by debiting the destination bank account. At this time, you can only reverse payouts for connected accounts to US bank accounts. If the payout is in the pending status, use /v1/payouts/:id/cancel instead.
    #
    # By requesting a reversal through /v1/payouts/:id/reverse, you confirm that the authorized signatory of the selected bank account authorizes the debit on the bank account and that no other authorization is required.
    def self.reverse(payout, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payouts/%<payout>s/reverse", { payout: CGI.escape(payout) }),
        params: params,
        opts: opts
      )
    end
  end
end
