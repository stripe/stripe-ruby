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
          attr_accessor :expand
          sig { params(expand: T.nilable(T::Array[String])).void }
          def initialize(expand: nil); end
        end
        class DeactivateParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          sig { params(expand: T.nilable(T::Array[String])).void }
          def initialize(expand: nil); end
        end
        class RejectParams < Stripe::RequestParams
          class RejectionReasons < Stripe::RequestParams
            # The reason(s) the card logo was rejected.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :card_logo
            # The reason(s) the carrier text was rejected.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :carrier_text
            sig {
              params(card_logo: T.nilable(T::Array[String]), carrier_text: T.nilable(T::Array[String])).void
             }
            def initialize(card_logo: nil, carrier_text: nil); end
          end
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          # The reason(s) the personalization design was rejected.
          sig {
            returns(::Stripe::TestHelpers::Issuing::PersonalizationDesignService::RejectParams::RejectionReasons)
           }
          attr_accessor :rejection_reasons
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