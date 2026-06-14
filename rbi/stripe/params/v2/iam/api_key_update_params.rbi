# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Iam
      class ApiKeyUpdateParams < ::Stripe::RequestParams
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
        sig { params(name: T.nilable(String), note: T.nilable(String)).void }
        def initialize(name: nil, note: nil); end
      end
    end
  end
end