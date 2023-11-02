# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # A Tax `Registration` lets us know that your business is registered to collect tax on payments within a region, enabling you to [automatically collect tax](https://stripe.com/docs/tax).
    #
    # Stripe doesn't register on your behalf with the relevant authorities when you create a Tax `Registration` object. For more information on how to register to collect tax, see [our guide](https://stripe.com/docs/tax/registering).
    #
    # Related guide: [Using the Registrations API](https://stripe.com/docs/tax/registrations-api)
    class Registration < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "tax.registration"
    end
  end
end
