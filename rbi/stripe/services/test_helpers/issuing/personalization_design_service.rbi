# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Issuing
      class PersonalizationDesignService < StripeService
        class ActivateParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          def expand; end
          sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def expand=(_expand); end
          sig { params(expand: T.nilable(T::Array[String])).void }
          def initialize(expand: nil); end
        end
        class DeactivateParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          def expand; end
          sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def expand=(_expand); end
          sig { params(expand: T.nilable(T::Array[String])).void }
          def initialize(expand: nil); end
        end
        class RejectParams < Stripe::RequestParams
          class RejectionReasons < Stripe::RequestParams
            # The reason(s) the card logo was rejected.
            sig { returns(T.nilable(T::Array[String])) }
            def card_logo; end
            sig {
              params(_card_logo: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def card_logo=(_card_logo); end
            # The reason(s) the carrier text was rejected.
            sig { returns(T.nilable(T::Array[String])) }
            def carrier_text; end
            sig {
              params(_carrier_text: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def carrier_text=(_carrier_text); end
            sig {
              params(card_logo: T.nilable(T::Array[String]), carrier_text: T.nilable(T::Array[String])).void
             }
            def initialize(card_logo: nil, carrier_text: nil); end
          end
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          def expand; end
          sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def expand=(_expand); end
          # The reason(s) the personalization design was rejected.
          sig {
            returns(::Stripe::TestHelpers::Issuing::PersonalizationDesignService::RejectParams::RejectionReasons)
           }
          def rejection_reasons; end
          sig {
            params(_rejection_reasons: ::Stripe::TestHelpers::Issuing::PersonalizationDesignService::RejectParams::RejectionReasons).returns(::Stripe::TestHelpers::Issuing::PersonalizationDesignService::RejectParams::RejectionReasons)
           }
          def rejection_reasons=(_rejection_reasons); end
          sig {
            params(expand: T.nilable(T::Array[String]), rejection_reasons: ::Stripe::TestHelpers::Issuing::PersonalizationDesignService::RejectParams::RejectionReasons).void
           }
          def initialize(expand: nil, rejection_reasons: nil); end
        end
        # Updates the status of the specified testmode personalization design object to active.
        sig {
          params(personalization_design: String, params: T.any(::Stripe::TestHelpers::Issuing::PersonalizationDesignService::ActivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::PersonalizationDesign)
         }
        def activate(personalization_design, params = {}, opts = {}); end

        # Updates the status of the specified testmode personalization design object to inactive.
        sig {
          params(personalization_design: String, params: T.any(::Stripe::TestHelpers::Issuing::PersonalizationDesignService::DeactivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::PersonalizationDesign)
         }
        def deactivate(personalization_design, params = {}, opts = {}); end

        # Updates the status of the specified testmode personalization design object to rejected.
        sig {
          params(personalization_design: String, params: T.any(::Stripe::TestHelpers::Issuing::PersonalizationDesignService::RejectParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::PersonalizationDesign)
         }
        def reject(personalization_design, params = {}, opts = {}); end
      end
    end
  end
end