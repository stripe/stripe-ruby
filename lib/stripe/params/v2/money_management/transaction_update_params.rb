# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class TransactionUpdateParams < ::Stripe::RequestParams
        # Description of this Transaction, up to 100 characters.
        attr_accessor :description
        # Set of key-value pairs that you can attach to the Transaction. Individual keys can be unset by posting
        # null to them.
        attr_accessor :metadata

        def initialize(description: nil, metadata: nil)
          @description = description
          @metadata = metadata
        end
      end
    end
  end
end
