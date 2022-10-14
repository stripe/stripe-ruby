# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Capital
    # A financing object describes an account's current financing state. Used by Connect
    # platforms to read the state of Capital offered to their connected accounts.
    class FinancingSummary < SingletonAPIResource
      OBJECT_NAME = 'capital.financing_summary'
    end
  end
end