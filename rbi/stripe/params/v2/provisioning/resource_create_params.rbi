# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class ResourceCreateParams < ::Stripe::RequestParams
        # Catalog partition to create the resource in.
        sig { returns(T.nilable(String)) }
        def catalog; end
        sig { params(_catalog: T.nilable(String)).returns(T.nilable(String)) }
        def catalog=(_catalog); end
        # Provider-specific configuration payload for the resource.
        sig { returns(T::Hash[String, T.untyped]) }
        def configuration; end
        sig {
          params(_configuration: T::Hash[String, T.untyped]).returns(T::Hash[String, T.untyped])
         }
        def configuration=(_configuration); end
        # Environment the resource should be created in.
        sig { returns(T.nilable(String)) }
        def environment; end
        sig { params(_environment: T.nilable(String)).returns(T.nilable(String)) }
        def environment=(_environment); end
        # Whether the resource should use Stripe live-mode objects. When omitted, this resolves to true.
        sig { returns(T.nilable(T::Boolean)) }
        def livemode; end
        sig { params(_livemode: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def livemode=(_livemode); end
        # Human-readable name for the resource.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # Identifier of the project to create the resource in.
        sig { returns(T.nilable(String)) }
        def project; end
        sig { params(_project: T.nilable(String)).returns(T.nilable(String)) }
        def project=(_project); end
        # Identifier of the provider to create the resource with.
        sig { returns(String) }
        def provider; end
        sig { params(_provider: String).returns(String) }
        def provider=(_provider); end
        # Identifier of the provider service to create the resource from.
        sig { returns(String) }
        def service_ref; end
        sig { params(_service_ref: String).returns(String) }
        def service_ref=(_service_ref); end
        sig {
          params(catalog: T.nilable(String), configuration: T::Hash[String, T.untyped], environment: T.nilable(String), livemode: T.nilable(T::Boolean), name: T.nilable(String), project: T.nilable(String), provider: String, service_ref: String).void
         }
        def initialize(
          catalog: nil,
          configuration: nil,
          environment: nil,
          livemode: nil,
          name: nil,
          project: nil,
          provider: nil,
          service_ref: nil
        ); end
      end
    end
  end
end