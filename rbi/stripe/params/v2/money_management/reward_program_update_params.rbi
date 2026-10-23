# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class RewardProgramUpdateParams < ::Stripe::RequestParams
        # Display name for the RewardProgram.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        sig { params(name: T.nilable(String)).void }
        def initialize(name: nil); end
      end
    end
  end
end