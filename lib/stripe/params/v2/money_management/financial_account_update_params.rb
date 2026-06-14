# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountUpdateParams < ::Stripe::RequestParams
        class Storage < ::Stripe::RequestParams
          # The currencies that this storage FinancialAccount can hold a balance in. Three-letter ISO currency code, in lowercase.
          # Adding currencies requires the corresponding holds_currencies storer capabilities to be enabled.
          # Removing currencies is not supported as of March 2026.
          attr_accessor :holds_currencies

          def initialize(holds_currencies: nil)
            @holds_currencies = holds_currencies
          end
        end
        # A descriptive name for the FinancialAccount, up to 50 characters long. This name will be used in the Stripe Dashboard and embedded components.
        attr_accessor :display_name
        # Metadata associated with the FinancialAccount.
        attr_accessor :metadata
        # Parameters for updating storage-specific fields on the FinancialAccount.
        attr_accessor :storage

        def initialize(display_name: nil, metadata: nil, storage: nil)
          @display_name = display_name
          @metadata = metadata
          @storage = storage
        end
      end
    end
  end
end
