# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Tax
      class AutomaticRuleService < StripeService
        class CreateParams < Stripe::RequestParams
          # The BillableItem ID to set automatic Tax configuration for.
          sig { returns(String) }
          def billable_item; end
          sig { params(_billable_item: String).returns(String) }
          def billable_item=(_billable_item); end
          # The TaxCode object to be used for automatic tax calculations.
          sig { returns(String) }
          def tax_code; end
          sig { params(_tax_code: String).returns(String) }
          def tax_code=(_tax_code); end
          sig { params(billable_item: String, tax_code: String).void }
          def initialize(billable_item: nil, tax_code: nil); end
        end
        class FindParams < Stripe::RequestParams
          # The BillableItem ID to search by.
          sig { returns(String) }
          def billable_item; end
          sig { params(_billable_item: String).returns(String) }
          def billable_item=(_billable_item); end
          sig { params(billable_item: String).void }
          def initialize(billable_item: nil); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        class UpdateParams < Stripe::RequestParams
          # The TaxCode object to be used for automatic tax calculations.
          sig { returns(String) }
          def tax_code; end
          sig { params(_tax_code: String).returns(String) }
          def tax_code=(_tax_code); end
          sig { params(tax_code: String).void }
          def initialize(tax_code: nil); end
        end
        class DeactivateParams < Stripe::RequestParams; end
        # Creates an AutomaticRule object.
        sig {
          params(params: T.any(::Stripe::V2::Tax::AutomaticRuleService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Tax::AutomaticRule)
         }
        def create(params = {}, opts = {}); end

        # Deactivates an AutomaticRule object. Deactivated AutomaticRule objects are ignored in future tax calculations.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Tax::AutomaticRuleService::DeactivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Tax::AutomaticRule)
         }
        def deactivate(id, params = {}, opts = {}); end

        # Finds an AutomaticRule object by BillableItem ID.
        sig {
          params(params: T.any(::Stripe::V2::Tax::AutomaticRuleService::FindParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Tax::AutomaticRule)
         }
        def find(params = {}, opts = {}); end

        # Retrieves an AutomaticRule object by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Tax::AutomaticRuleService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Tax::AutomaticRule)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Updates the automatic Tax configuration for an AutomaticRule object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Tax::AutomaticRuleService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Tax::AutomaticRule)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end