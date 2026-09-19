# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      module Catalog
        class ProviderListParams < ::Stripe::RequestParams
          # Catalog partition to list providers from.
          sig { returns(T.nilable(String)) }
          def catalog; end
          sig { params(_catalog: T.nilable(String)).returns(T.nilable(String)) }
          def catalog=(_catalog); end
          # When `true`, list development-only providers. When unset or `false`, development providers are
          # excluded.
          sig { returns(T.nilable(T::Boolean)) }
          def development; end
          sig { params(_development: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def development=(_development); end
          # Maximum number of providers to return.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          sig {
            params(catalog: T.nilable(String), development: T.nilable(T::Boolean), limit: T.nilable(Integer)).void
           }
          def initialize(catalog: nil, development: nil, limit: nil); end
        end
      end
    end
  end
end