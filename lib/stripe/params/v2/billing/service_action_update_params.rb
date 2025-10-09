# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ServiceActionUpdateParams < ::Stripe::RequestParams
        class CreditGrant < ::Stripe::RequestParams
          # A descriptive name shown in dashboard.
          attr_accessor :name

          def initialize(name: nil)
            @name = name
          end
        end

        class CreditGrantPerTenant < ::Stripe::RequestParams
          # A descriptive name shown in dashboard.
          attr_accessor :name

          def initialize(name: nil)
            @name = name
          end
        end
        # An internal key you can use to search for this service action. Maximum length of 200 characters.
        attr_accessor :lookup_key
        # Details for the credit grant. Can only be set if the service action's `type` is `credit_grant`.
        attr_accessor :credit_grant
        # Details for the credit grant per tenant. Can only be set if the service action's `type` is `credit_grant_per_tenant`.
        attr_accessor :credit_grant_per_tenant

        def initialize(lookup_key: nil, credit_grant: nil, credit_grant_per_tenant: nil)
          @lookup_key = lookup_key
          @credit_grant = credit_grant
          @credit_grant_per_tenant = credit_grant_per_tenant
        end
      end
    end
  end
end
