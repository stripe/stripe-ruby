# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class ResourceUpdateParams < ::Stripe::RequestParams
        # Catalog partition of the resource.
        sig { returns(T.nilable(String)) }
        def catalog; end
        sig { params(_catalog: T.nilable(String)).returns(T.nilable(String)) }
        def catalog=(_catalog); end
        # New provider-specific configuration payload for the resource.
        sig { returns(T.nilable(T::Hash[String, T.untyped])) }
        def configuration; end
        sig {
          params(_configuration: T.nilable(T::Hash[String, T.untyped])).returns(T.nilable(T::Hash[String, T.untyped]))
         }
        def configuration=(_configuration); end
        # Provider's service id to switch the resource to. If omitted, the resource's existing service
        # is retained and this is treated as a config-only update.
        sig { returns(T.nilable(String)) }
        def service_ref; end
        sig { params(_service_ref: T.nilable(String)).returns(T.nilable(String)) }
        def service_ref=(_service_ref); end
        sig {
          params(catalog: T.nilable(String), configuration: T.nilable(T::Hash[String, T.untyped]), service_ref: T.nilable(String)).void
         }
        def initialize(catalog: nil, configuration: nil, service_ref: nil); end
      end
    end
  end
end