# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module RateCards
        class RateListParams < Stripe::RequestParams
          # Optionally set the maximum number of results per page. Defaults to 20.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # Optionally filter by a Metered Item.
          sig { returns(T.nilable(String)) }
          def metered_item; end
          sig { params(_metered_item: T.nilable(String)).returns(T.nilable(String)) }
          def metered_item=(_metered_item); end
          # Optionally filter by a RateCard version. If not specified, defaults to the latest version.
          sig { returns(T.nilable(String)) }
          def rate_card_version; end
          sig { params(_rate_card_version: T.nilable(String)).returns(T.nilable(String)) }
          def rate_card_version=(_rate_card_version); end
          sig {
            params(limit: T.nilable(Integer), metered_item: T.nilable(String), rate_card_version: T.nilable(String)).void
           }
          def initialize(limit: nil, metered_item: nil, rate_card_version: nil); end
        end
      end
    end
  end
end