# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  # Domains registered for Apple Pay on the Web
  class ApplePayDomain < APIResource
    extend EwStripe::APIOperations::Create
    include EwStripe::APIOperations::Delete
    extend EwStripe::APIOperations::List

    OBJECT_NAME = "apple_pay_domain"

    def self.resource_url
      "/v1/apple_pay/domains"
    end
  end
end
