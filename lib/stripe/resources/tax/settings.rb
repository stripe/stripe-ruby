# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # You can use Tax `Settings` to manage configurations used by Stripe Tax calculations.
    #
    # Related guide: [Account settings](https://stripe.com/docs/tax/connect/settings).
    class Settings < SingletonAPIResource
      include Stripe::APIOperations::Save

      OBJECT_NAME = "tax.settings"
    end
  end
end
