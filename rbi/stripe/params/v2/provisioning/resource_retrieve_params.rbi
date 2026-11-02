# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class ResourceRetrieveParams < ::Stripe::RequestParams
        # Additional fields to include in the response. Requesting configuration only populates names
        # for a complete Resource with an available, unexpired configuration. Missing configuration is
        # returned as null; authorization, dependency, malformed-data, and limit failures remain errors.
        sig { returns(T.nilable(T::Array[String])) }
        def include; end
        sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def include=(_include); end
        sig { params(include: T.nilable(T::Array[String])).void }
        def initialize(include: nil); end
      end
    end
  end
end