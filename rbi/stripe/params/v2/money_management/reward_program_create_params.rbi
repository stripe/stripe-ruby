# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class RewardProgramCreateParams < ::Stripe::RequestParams
        # Determines who performs reward money movement after rule evaluation. Only `application` is currently
        # supported.
        sig { returns(String) }
        def fulfilled_by; end
        sig { params(_fulfilled_by: String).returns(String) }
        def fulfilled_by=(_fulfilled_by); end
        # Display name for the RewardProgram.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        sig { params(fulfilled_by: String, name: String).void }
        def initialize(fulfilled_by: nil, name: nil); end
      end
    end
  end
end