# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class ResourceService < StripeService
        # Creates a new provider resource.
        sig {
          params(params: T.any(::Stripe::V2::Provisioning::ResourceCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::Resource)
         }
        def create(params = {}, opts = {}); end

        # Links an existing provider resource to a project or account.
        sig {
          params(params: T.any(::Stripe::V2::Provisioning::ResourceLinkParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::Resource)
         }
        def link(params = {}, opts = {}); end

        # Removes a resource.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Provisioning::ResourceRemoveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::Resource)
         }
        def remove(id, params = {}, opts = {}); end

        # Retrieves a provider resource.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Provisioning::ResourceRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::Resource)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Rotates a resource's credentials.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Provisioning::ResourceRotateCredentialsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::Resource)
         }
        def rotate_credentials(id, params = {}, opts = {}); end

        # Submits additional information requested by the provider for a resource.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Provisioning::ResourceSubmitInformationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::Resource)
         }
        def submit_information(id, params = {}, opts = {}); end

        # Unlinks a resource without removing it from the provider.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Provisioning::ResourceUnlinkParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::Resource)
         }
        def unlink(id, params = {}, opts = {}); end

        # Updates a resource's configuration or service.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Provisioning::ResourceUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Provisioning::Resource)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end