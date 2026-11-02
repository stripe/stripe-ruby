# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class RewardProgramCreateParams < ::Stripe::RequestParams
        # Determines who performs reward money movement after rule evaluation. Only `application` is currently
        # supported.
        attr_accessor :fulfilled_by
        # Display name for the RewardProgram.
        attr_accessor :name

        def initialize(fulfilled_by: nil, name: nil)
          @fulfilled_by = fulfilled_by
          @name = name
        end
      end
    end
  end
end
