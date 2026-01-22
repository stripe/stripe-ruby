# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # The French Meal Vouchers Onboarding resource encapsulates the onboarding status and other related information
  # for a single restaurant (SIRET number) in the context of the French Meal Vouchers program.
  class FrMealVouchersOnboarding < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "fr_meal_vouchers_onboarding"
    def self.object_name
      "fr_meal_vouchers_onboarding"
    end

    class Providers < ::Stripe::StripeObject
      class Conecs < ::Stripe::StripeObject
        class Issuers < ::Stripe::StripeObject
          # Issuers are available to this restaurant via Conecs, will be blank if the onboarding to Conecs is not complete or unsuccessful
          attr_reader :available

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
            attr_reader :code
            # An informative message that provides additional details about the error.
            attr_reader :message
            # The specific onboarding requirement field (in the requirements hash) that needs to be resolved.
            attr_reader :requirement

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Information any errors that are preventing the onboarding to Conecs from being completed.
          attr_reader :errors
          # Fields that need to be provided to complete the onboarding to Conecs.
          attr_reader :past_due

          def self.inner_class_types
            @inner_class_types = { errors: Error }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # This represents information which issuers are available to this restaurant via Conecs
        attr_reader :issuers
        # This represents information about outstanding requirements for this restaurant to onboard to Conecs
        attr_reader :requirements
        # Status of the restaurant's onboarding to Conecs
        attr_reader :status

        def self.inner_class_types
          @inner_class_types = { issuers: Issuers, requirements: Requirements }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # This represents the onboarding state of the restaurant on Conecs.
      attr_reader :conecs

      def self.inner_class_types
        @inner_class_types = { conecs: Conecs }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # Name of the restaurant.
    attr_reader :name
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Postal code of the restaurant.
    attr_reader :postal_code
    # This represents the onboarding state of the restaurant on different providers.
    attr_reader :providers
    # SIRET number associated with the restaurant.
    attr_reader :siret

    # Creates a French Meal Vouchers Onboarding object that represents a restaurant's onboarding status and starts the onboarding process.
    def self.create(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "/v1/fr_meal_vouchers_onboardings",
        params: params,
        opts: opts
      )
    end

    # Lists French Meal Vouchers Onboarding objects
    def self.list(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/fr_meal_vouchers_onboardings",
        params: params,
        opts: opts
      )
    end

    # Updates the details of a restaurant's French Meal Vouchers Onboarding object
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/fr_meal_vouchers_onboardings/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    def self.inner_class_types
      @inner_class_types = { providers: Providers }
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
