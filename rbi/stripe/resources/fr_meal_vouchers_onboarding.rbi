# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # The French Meal Vouchers Onboarding resource encapsulates the onboarding status and other related information
  # for a single restaurant (SIRET number) in the context of the French Meal Vouchers program.
  class FrMealVouchersOnboarding < APIResource
    class Providers < ::Stripe::StripeObject
      class Conecs < ::Stripe::StripeObject
        class Issuers < ::Stripe::StripeObject
          # Issuers are available to this restaurant via Conecs, will be blank if the onboarding to Conecs is not complete or unsuccessful
          sig { returns(T::Array[String]) }
          def available; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Requirements < ::Stripe::StripeObject
          class Error < ::Stripe::StripeObject
            # The code for the type of error.
            sig { returns(String) }
            def code; end
            # An informative message that provides additional details about the error.
            sig { returns(String) }
            def message; end
            # The specific onboarding requirement field (in the requirements hash) that needs to be resolved.
            sig { returns(T.nilable(String)) }
            def requirement; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Information any errors that are preventing the onboarding to Conecs from being completed.
          sig { returns(T::Array[Error]) }
          def errors; end
          # Fields that need to be provided to complete the onboarding to Conecs.
          sig { returns(T::Array[String]) }
          def past_due; end
          def self.inner_class_types
            @inner_class_types = {errors: Error}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # This represents information which issuers are available to this restaurant via Conecs
        sig { returns(Issuers) }
        def issuers; end
        # This represents information about outstanding requirements for this restaurant to onboard to Conecs
        sig { returns(Requirements) }
        def requirements; end
        # Status of the restaurant's onboarding to Conecs
        sig { returns(String) }
        def status; end
        def self.inner_class_types
          @inner_class_types = {issuers: Issuers, requirements: Requirements}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # This represents the onboarding state of the restaurant on Conecs.
      sig { returns(Conecs) }
      def conecs; end
      def self.inner_class_types
        @inner_class_types = {conecs: Conecs}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    # Name of the restaurant.
    sig { returns(String) }
    def name; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Postal code of the restaurant.
    sig { returns(String) }
    def postal_code; end
    # This represents the onboarding state of the restaurant on different providers.
    sig { returns(Providers) }
    def providers; end
    # SIRET number associated with the restaurant.
    sig { returns(String) }
    def siret; end
    # Creates a French Meal Vouchers Onboarding object that represents a restaurant's onboarding status and starts the onboarding process.
    sig {
      params(params: T.any(::Stripe::FrMealVouchersOnboardingCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::FrMealVouchersOnboarding)
     }
    def self.create(params = {}, opts = {}); end

    # Lists French Meal Vouchers Onboarding objects
    sig {
      params(params: T.any(::Stripe::FrMealVouchersOnboardingListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Updates the details of a restaurant's French Meal Vouchers Onboarding object
    sig {
      params(id: String, params: T.any(::Stripe::FrMealVouchersOnboardingUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::FrMealVouchersOnboarding)
     }
    def self.update(id, params = {}, opts = {}); end
  end
end