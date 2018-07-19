# frozen_string_literal: true

module Stripe
  class ApplicationFee < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::NestedResource

    OBJECT_NAME = "application_fee".freeze

    nested_resource_class_methods :refund, operations: %i[create retrieve update list]

    # If you don't need access to an updated fee object after the refund, it's
    # more performant to just call `fee.refunds.create` directly.
    def refund(params = {}, opts = {})
      refunds.create(params, opts)

      # now that a refund has been created, we expect the state of this object
      # to change as well (i.e. `refunded` will now be `true`) so refresh it
      # from the server
      refresh
    end
  end
end
