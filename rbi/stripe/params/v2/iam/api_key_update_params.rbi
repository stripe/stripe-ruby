# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Iam
      class ApiKeyUpdateParams < ::Stripe::RequestParams
        # List of connect permissions for this API key.
        sig { returns(T.nilable(T::Array[String])) }
        def connect_permissions; end
        sig {
          params(_connect_permissions: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def connect_permissions=(_connect_permissions); end
        # Name to set for the API key. If blank, the field is left unchanged.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # Note or description to set for the API key. If blank, the field is left unchanged.
        sig { returns(T.nilable(String)) }
        def note; end
        sig { params(_note: T.nilable(String)).returns(T.nilable(String)) }
        def note=(_note); end
        # List of permissions for this API key.
        sig { returns(T.nilable(T::Array[String])) }
        def permissions; end
        sig {
          params(_permissions: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def permissions=(_permissions); end
        sig {
          params(connect_permissions: T.nilable(T::Array[String]), name: T.nilable(String), note: T.nilable(String), permissions: T.nilable(T::Array[String])).void
         }
        def initialize(connect_permissions: nil, name: nil, note: nil, permissions: nil); end
      end
    end
  end
end