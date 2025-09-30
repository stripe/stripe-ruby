# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class BillSettingListParams < Stripe::RequestParams
        # Optionally set the maximum number of results per page. Defaults to 20.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Only return the settings with these lookup_keys, if any exist.
        # You can specify up to 10 lookup_keys.
        sig { returns(T.nilable(T::Array[String])) }
        def lookup_keys; end
        sig {
          params(_lookup_keys: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def lookup_keys=(_lookup_keys); end
        sig { params(limit: T.nilable(Integer), lookup_keys: T.nilable(T::Array[String])).void }
        def initialize(limit: nil, lookup_keys: nil); end
      end
    end
  end
end