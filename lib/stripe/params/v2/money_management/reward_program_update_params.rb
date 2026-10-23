# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class RewardProgramUpdateParams < ::Stripe::RequestParams
        # Display name for the RewardProgram.
        attr_accessor :name

        def initialize(name: nil)
          @name = name
        end
      end
    end
  end
end
