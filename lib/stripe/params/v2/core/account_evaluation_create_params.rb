# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class AccountEvaluationCreateParams < ::Stripe::RequestParams
        class AccountData < ::Stripe::RequestParams
          class Defaults < ::Stripe::RequestParams
            class Profile < ::Stripe::RequestParams
              # The business URL.
              attr_accessor :business_url
              # Doing business as (DBA) name.
              attr_accessor :doing_business_as
              # Description of the account's product or service.
              attr_accessor :product_description

              def initialize(business_url: nil, doing_business_as: nil, product_description: nil)
                @business_url = business_url
                @doing_business_as = doing_business_as
                @product_description = product_description
              end
            end
            # Account profile data.
            attr_accessor :profile

            def initialize(profile: nil)
              @profile = profile
            end
          end

          class Identity < ::Stripe::RequestParams
            class BusinessDetails < ::Stripe::RequestParams
              # Registered business name.
              attr_accessor :registered_name

              def initialize(registered_name: nil)
                @registered_name = registered_name
              end
            end
            # Business details for identity data.
            attr_accessor :business_details

            def initialize(business_details: nil)
              @business_details = business_details
            end
          end
          # Default account settings.
          attr_accessor :defaults
          # Identity data.
          attr_accessor :identity

          def initialize(defaults: nil, identity: nil)
            @defaults = defaults
            @identity = identity
          end
        end
        # The account ID to evaluate. Exactly one of account or account_data must be provided.
        attr_accessor :account
        # Account data for entity-less evaluation. Exactly one of account or account_data must be provided.
        attr_accessor :account_data
        # List of signals to evaluate.
        attr_accessor :signals

        def initialize(account: nil, account_data: nil, signals: nil)
          @account = account
          @account_data = account_data
          @signals = signals
        end
      end
    end
  end
end
