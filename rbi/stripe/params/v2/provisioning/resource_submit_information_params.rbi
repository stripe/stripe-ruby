# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class ResourceSubmitInformationParams < ::Stripe::RequestParams
        # Additional information being submitted for the resource.
        sig { returns(T::Hash[String, T.untyped]) }
        def submitted_information; end
        sig {
          params(_submitted_information: T::Hash[String, T.untyped]).returns(T::Hash[String, T.untyped])
         }
        def submitted_information=(_submitted_information); end
        sig { params(submitted_information: T::Hash[String, T.untyped]).void }
        def initialize(submitted_information: nil); end
      end
    end
  end
end