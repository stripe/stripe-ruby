# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module ProductCatalog
    class TrialOfferUpdateParams < ::Stripe::RequestParams
      # Whether the trial offer can be used for new purchases.
      attr_accessor :active
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(active: nil, expand: nil)
        @active = active
        @expand = expand
      end
    end
  end
end
