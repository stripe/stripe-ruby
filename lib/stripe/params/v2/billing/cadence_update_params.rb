# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class CadenceUpdateParams < ::Stripe::RequestParams
        class Payer < ::Stripe::RequestParams
          # The ID of the Billing Profile object which determines how a bill will be paid.
          attr_accessor :billing_profile

          def initialize(billing_profile: nil)
            @billing_profile = billing_profile
          end
        end

        class Settings < ::Stripe::RequestParams
          class Bill < ::Stripe::RequestParams
            # The ID of the referenced settings object.
            attr_accessor :id
            # An optional field to specify the version of Settings to use.
            # If not provided, this will always default to the `live_version` specified on the setting, any time the settings are used.
            # Using a specific version here will prevent the settings from updating, and is discouraged for cadences.
            # To clear a pinned version, set the version to null.
            attr_accessor :version

            def initialize(id: nil, version: nil)
              @id = id
              @version = version
            end
          end

          class Collection < ::Stripe::RequestParams
            # The ID of the referenced settings object.
            attr_accessor :id
            # An optional field to specify the version of Settings to use.
            # If not provided, this will always default to the `live_version` specified on the setting, any time the settings are used.
            # Using a specific version here will prevent the settings from updating, and is discouraged for cadences.
            # To clear a pinned version, set the version to null.
            attr_accessor :version

            def initialize(id: nil, version: nil)
              @id = id
              @version = version
            end
          end
          # Settings that configure bills generation, which includes calculating totals, tax, and presenting invoices. If null is provided, the current bill settings will be removed from the billing cadence.
          attr_accessor :bill
          # Settings that configure and manage the behavior of collecting payments. If null is provided, the current collection settings will be removed from the billing cadence.
          attr_accessor :collection

          def initialize(bill: nil, collection: nil)
            @bill = bill
            @collection = collection
          end
        end
        # Additional resource to include in the response.
        attr_accessor :include
        # A lookup key used to retrieve cadences dynamically from a static string. Maximum length of 200 characters.
        attr_accessor :lookup_key
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata
        # The payer determines the entity financially responsible for the bill.
        attr_accessor :payer
        # The settings associated with the cadence.
        attr_accessor :settings

        def initialize(include: nil, lookup_key: nil, metadata: nil, payer: nil, settings: nil)
          @include = include
          @lookup_key = lookup_key
          @metadata = metadata
          @payer = payer
          @settings = settings
        end
      end
    end
  end
end
