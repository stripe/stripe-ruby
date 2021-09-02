# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  module BillingPortal
    class Configuration < APIResource
      extend EwStripe::APIOperations::Create
      extend EwStripe::APIOperations::List
      include EwStripe::APIOperations::Save

      OBJECT_NAME = "billing_portal.configuration"
    end
  end
end
