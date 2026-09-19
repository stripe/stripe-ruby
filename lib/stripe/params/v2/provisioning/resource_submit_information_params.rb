# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class ResourceSubmitInformationParams < ::Stripe::RequestParams
        # Additional information being submitted for the resource.
        attr_accessor :submitted_information

        def initialize(submitted_information: nil)
          @submitted_information = submitted_information
        end
      end
    end
  end
end
