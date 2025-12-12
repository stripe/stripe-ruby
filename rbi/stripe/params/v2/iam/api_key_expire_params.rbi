# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Iam
      class ApiKeyExpireParams < ::Stripe::RequestParams
        # Duration in minutes before the key expires (defaults to immediate).
        sig { returns(T.nilable(Integer)) }
        def expire_in_minutes; end
        sig { params(_expire_in_minutes: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def expire_in_minutes=(_expire_in_minutes); end
        sig { params(expire_in_minutes: T.nilable(Integer)).void }
        def initialize(expire_in_minutes: nil); end
      end
    end
  end
end