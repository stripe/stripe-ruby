# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class ResourceLinkParams < ::Stripe::RequestParams
        # Catalog partition of the existing resource.
        sig { returns(T.nilable(String)) }
        def catalog; end
        sig { params(_catalog: T.nilable(String)).returns(T.nilable(String)) }
        def catalog=(_catalog); end
        # Environment the existing resource runs in.
        sig { returns(T.nilable(String)) }
        def environment; end
        sig { params(_environment: T.nilable(String)).returns(T.nilable(String)) }
        def environment=(_environment); end
        # Whether the resource should use Stripe live-mode objects. When omitted, this resolves to true.
        sig { returns(T.nilable(T::Boolean)) }
        def livemode; end
        sig { params(_livemode: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def livemode=(_livemode); end
        # Identifier of the project to link the resource to.
        sig { returns(T.nilable(String)) }
        def project; end
        sig { params(_project: T.nilable(String)).returns(T.nilable(String)) }
        def project=(_project); end
        # Identifier of the provider that hosts the existing resource.
        sig { returns(String) }
        def provider; end
        sig { params(_provider: String).returns(String) }
        def provider=(_provider); end
        # Identifier of the provider service the existing resource belongs to.
        sig { returns(String) }
        def service_ref; end
        sig { params(_service_ref: String).returns(String) }
        def service_ref=(_service_ref); end
        sig {
          params(catalog: T.nilable(String), environment: T.nilable(String), livemode: T.nilable(T::Boolean), project: T.nilable(String), provider: String, service_ref: String).void
         }
        def initialize(
          catalog: nil,
          environment: nil,
          livemode: nil,
          project: nil,
          provider: nil,
          service_ref: nil
        ); end
      end
    end
  end
end