# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class Customer < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::NestedResource

    OBJECT_NAME = "customer"

    nested_resource_class_methods :balance_transaction,
                                  operations: %i[create retrieve update list]
    nested_resource_class_methods :tax_id,
                                  operations: %i[create retrieve delete list]

    custom_method :delete_discount, http_verb: :delete, http_path: "discount"

    save_nested_resource :source
    nested_resource_class_methods :source,
                                  operations: %i[create retrieve update delete list]

    # The API request for deleting a card or bank account and for detaching a
    # source object are the same.
    class << self
      alias detach_source delete_source
    end

    # Deletes a discount associated with the customer.
    #
    # Returns the deleted discount. The customer object is not updated,
    # so you must call `refresh` on it to get a new version with the
    # discount removed.
    def delete_discount
      resp, opts = execute_resource_request(:delete, resource_url + "/discount")
      Util.convert_to_stripe_object(resp.data, opts)
    end
  end
end
