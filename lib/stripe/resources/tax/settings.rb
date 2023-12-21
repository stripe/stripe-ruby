# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # You can use Tax `Settings` to manage configurations used by Stripe Tax calculations.
    #
    # Related guide: [Using the Settings API](https://stripe.com/docs/tax/settings-api)
    class Settings < SingletonAPIResource
      include Stripe::APIOperations::SingletonSave

      OBJECT_NAME = "tax.settings"
    end
  end
end
