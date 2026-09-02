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
        # Configuration for Checkout Sessions automatic tax behavior.
        sig {
          returns(T.nilable(::Stripe::V2::Tax::IntegrationConfigurationUpdateParams::CheckoutSessions))
         }
        def checkout_sessions; end
        sig {
          params(_checkout_sessions: T.nilable(::Stripe::V2::Tax::IntegrationConfigurationUpdateParams::CheckoutSessions)).returns(T.nilable(::Stripe::V2::Tax::IntegrationConfigurationUpdateParams::CheckoutSessions))
         }
        def checkout_sessions=(_checkout_sessions); end
        sig {
          params(checkout_sessions: T.nilable(::Stripe::V2::Tax::IntegrationConfigurationUpdateParams::CheckoutSessions)).void
         }
        def initialize(checkout_sessions: nil); end
      end
    end
  end
end