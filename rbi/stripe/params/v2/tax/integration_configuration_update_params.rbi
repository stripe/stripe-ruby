# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Tax
      class IntegrationConfigurationUpdateParams < ::Stripe::RequestParams
        class CheckoutSessions < ::Stripe::RequestParams
          # Controls the default value of automatic_tax[enabled] on new Checkout Sessions.
          sig { returns(String) }
          def automatic_tax_default_value; end
          sig { params(_automatic_tax_default_value: String).returns(String) }
          def automatic_tax_default_value=(_automatic_tax_default_value); end
          sig { params(automatic_tax_default_value: String).void }
          def initialize(automatic_tax_default_value: nil); end
        end
        class Invoices < ::Stripe::RequestParams
          # Controls the default value of automatic_tax[enabled] on new standalone Invoices.
          sig { returns(String) }
          def automatic_tax_default_value; end
          sig { params(_automatic_tax_default_value: String).returns(String) }
          def automatic_tax_default_value=(_automatic_tax_default_value); end
          sig { params(automatic_tax_default_value: String).void }
          def initialize(automatic_tax_default_value: nil); end
        end
        class Subscriptions < ::Stripe::RequestParams
          # Controls the default value of automatic_tax[enabled] on new Subscriptions.
          sig { returns(String) }
          def automatic_tax_default_value; end
          sig { params(_automatic_tax_default_value: String).returns(String) }
          def automatic_tax_default_value=(_automatic_tax_default_value); end
          sig { params(automatic_tax_default_value: String).void }
          def initialize(automatic_tax_default_value: nil); end
        end
        # Configuration for Checkout Sessions automatic tax behavior.
        sig {
          returns(T.nilable(::Stripe::V2::Tax::IntegrationConfigurationUpdateParams::CheckoutSessions))
         }
        def checkout_sessions; end
        sig {
          params(_checkout_sessions: T.nilable(::Stripe::V2::Tax::IntegrationConfigurationUpdateParams::CheckoutSessions)).returns(T.nilable(::Stripe::V2::Tax::IntegrationConfigurationUpdateParams::CheckoutSessions))
         }
        def checkout_sessions=(_checkout_sessions); end
        # Configuration for standalone Invoices automatic tax behavior.
        sig {
          returns(T.nilable(::Stripe::V2::Tax::IntegrationConfigurationUpdateParams::Invoices))
         }
        def invoices; end
        sig {
          params(_invoices: T.nilable(::Stripe::V2::Tax::IntegrationConfigurationUpdateParams::Invoices)).returns(T.nilable(::Stripe::V2::Tax::IntegrationConfigurationUpdateParams::Invoices))
         }
        def invoices=(_invoices); end
        # Configuration for Subscriptions automatic tax behavior.
        sig {
          returns(T.nilable(::Stripe::V2::Tax::IntegrationConfigurationUpdateParams::Subscriptions))
         }
        def subscriptions; end
        sig {
          params(_subscriptions: T.nilable(::Stripe::V2::Tax::IntegrationConfigurationUpdateParams::Subscriptions)).returns(T.nilable(::Stripe::V2::Tax::IntegrationConfigurationUpdateParams::Subscriptions))
         }
        def subscriptions=(_subscriptions); end
        sig {
          params(checkout_sessions: T.nilable(::Stripe::V2::Tax::IntegrationConfigurationUpdateParams::CheckoutSessions), invoices: T.nilable(::Stripe::V2::Tax::IntegrationConfigurationUpdateParams::Invoices), subscriptions: T.nilable(::Stripe::V2::Tax::IntegrationConfigurationUpdateParams::Subscriptions)).void
         }
        def initialize(checkout_sessions: nil, invoices: nil, subscriptions: nil); end
      end
    end
  end
end