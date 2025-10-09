# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class CustomPricingUnitCreateParams < ::Stripe::RequestParams
        # Description that customers will see in the invoice line item.
        # Maximum length of 10 characters.
        sig { returns(String) }
        def display_name; end
        sig { params(_display_name: String).returns(String) }
        def display_name=(_display_name); end
        # An internal key you can use to search for a particular custom pricing unit item.
        # Must be unique among items.
        # Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
        def lookup_key=(_lookup_key); end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        sig {
          params(display_name: String, lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String])).void
         }
        def initialize(display_name: nil, lookup_key: nil, metadata: nil); end
      end
    end
  end
end