# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class ProviderConnectionRequestSubmitInformationParams < ::Stripe::RequestParams
        # Secret used to confirm the request when submitting on behalf of a resource without
        # an authenticated session.
        sig { returns(T.nilable(String)) }
        def confirmation_secret; end
        sig { params(_confirmation_secret: T.nilable(String)).returns(T.nilable(String)) }
        def confirmation_secret=(_confirmation_secret); end
        # Information requested by the provider, matching the connection's needs_information_schema.
        sig { returns(T::Hash[String, T.untyped]) }
        def information; end
        sig { params(_information: T::Hash[String, T.untyped]).returns(T::Hash[String, T.untyped]) }
        def information=(_information); end
        sig {
          params(confirmation_secret: T.nilable(String), information: T::Hash[String, T.untyped]).void
         }
        def initialize(confirmation_secret: nil, information: nil); end
      end
    end
  end
end