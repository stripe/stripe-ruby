# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class ProvisioningService < StripeService
      attr_reader :catalog, :eligibility, :payment_method_requests, :payment_profile, :projects, :provider_connections, :provider_connection_requests, :resources

      def initialize(requestor)
        super
        @catalog = Stripe::V2::Provisioning::CatalogService.new(@requestor)
        @eligibility = Stripe::V2::Provisioning::EligibilityService.new(@requestor)
        @payment_method_requests = Stripe::V2::Provisioning::PaymentMethodRequestService
                                   .new(@requestor)
        @payment_profile = Stripe::V2::Provisioning::PaymentProfileService.new(@requestor)
        @projects = Stripe::V2::Provisioning::ProjectService.new(@requestor)
        @provider_connections = Stripe::V2::Provisioning::ProviderConnectionService.new(@requestor)
        @provider_connection_requests = Stripe::V2::Provisioning::ProviderConnectionRequestService
                                        .new(@requestor)
        @resources = Stripe::V2::Provisioning::ResourceService.new(@requestor)
      end
    end
  end
end
