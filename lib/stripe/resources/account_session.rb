# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # An AccountSession allows a Connect platform to grant access to a connected account in Connect Embedded UIs.
  #
  # We recommend that you create an AccountSession each time you need to display an embedded UI
  # to your user. Do not save AccountSessions to your database as they expire relatively
  # quickly, and cannot be used more than once.
  #
  # Related guide: [Connect Embedded UIs](https://stripe.com/docs/connect/get-started-connect-elements).
  class AccountSession < APIResource
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "account_session"
  end
end
