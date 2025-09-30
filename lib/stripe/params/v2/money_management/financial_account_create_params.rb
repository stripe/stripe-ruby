# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAccountCreateParams < Stripe::RequestParams
        class Storage < Stripe::RequestParams
          # The currencies that this FinancialAccount can hold.
          attr_accessor :holds_currencies

          def initialize(holds_currencies: nil)
            @holds_currencies = holds_currencies
          end
        end
        # A descriptive name for the FinancialAccount, up to 50 characters long. This name will be used in the Stripe Dashboard and embedded components.
        attr_accessor :display_name
        # Metadata associated with the FinancialAccount.
        attr_accessor :metadata
        # Parameters specific to creating `storage` type FinancialAccounts.
        attr_accessor :storage
        # The type of FinancialAccount to create.
        attr_accessor :type

        def initialize(display_name: nil, metadata: nil, storage: nil, type: nil)
          @display_name = display_name
          @metadata = metadata
          @storage = storage
          @type = type
        end
      end
    end
  end
end
