# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    class ProgramCreateParams < ::Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # If true, makes the specified program the default for the given account.
      attr_accessor :is_default
      # The program to use as the parent for the new program to create.
      attr_accessor :platform_program

      def initialize(expand: nil, is_default: nil, platform_program: nil)
        @expand = expand
        @is_default = is_default
        @platform_program = platform_program
      end
    end
  end
end
