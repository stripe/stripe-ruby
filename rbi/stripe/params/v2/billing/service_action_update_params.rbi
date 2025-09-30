# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ServiceActionUpdateParams < Stripe::RequestParams
        class CreditGrant < Stripe::RequestParams
          # A descriptive name shown in dashboard.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          sig { params(name: T.nilable(String)).void }
          def initialize(name: nil); end
        end
        class CreditGrantPerTenant < Stripe::RequestParams
          # A descriptive name shown in dashboard.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          sig { params(name: T.nilable(String)).void }
          def initialize(name: nil); end
        end
        # An internal key you can use to search for this service action. Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
        def lookup_key=(_lookup_key); end
        # Details for the credit grant. Can only be set if the service action's `type` is `credit_grant`.
        sig { returns(T.nilable(V2::Billing::ServiceActionUpdateParams::CreditGrant)) }
        def credit_grant; end
        sig {
          params(_credit_grant: T.nilable(V2::Billing::ServiceActionUpdateParams::CreditGrant)).returns(T.nilable(V2::Billing::ServiceActionUpdateParams::CreditGrant))
         }
        def credit_grant=(_credit_grant); end
        # Details for the credit grant per tenant. Can only be set if the service action's `type` is `credit_grant_per_tenant`.
        sig { returns(T.nilable(V2::Billing::ServiceActionUpdateParams::CreditGrantPerTenant)) }
        def credit_grant_per_tenant; end
        sig {
          params(_credit_grant_per_tenant: T.nilable(V2::Billing::ServiceActionUpdateParams::CreditGrantPerTenant)).returns(T.nilable(V2::Billing::ServiceActionUpdateParams::CreditGrantPerTenant))
         }
        def credit_grant_per_tenant=(_credit_grant_per_tenant); end
        sig {
          params(lookup_key: T.nilable(String), credit_grant: T.nilable(V2::Billing::ServiceActionUpdateParams::CreditGrant), credit_grant_per_tenant: T.nilable(V2::Billing::ServiceActionUpdateParams::CreditGrantPerTenant)).void
         }
        def initialize(lookup_key: nil, credit_grant: nil, credit_grant_per_tenant: nil); end
      end
    end
  end
end