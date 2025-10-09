# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class CadenceUpdateParams < ::Stripe::RequestParams
        class Payer < ::Stripe::RequestParams
          # The ID of the Billing Profile object which determines how a bill will be paid.
          sig { returns(T.nilable(String)) }
          def billing_profile; end
          sig { params(_billing_profile: T.nilable(String)).returns(T.nilable(String)) }
          def billing_profile=(_billing_profile); end
          sig { params(billing_profile: T.nilable(String)).void }
          def initialize(billing_profile: nil); end
        end
        class Settings < ::Stripe::RequestParams
          class Bill < ::Stripe::RequestParams
            # The ID of the referenced settings object.
            sig { returns(String) }
            def id; end
            sig { params(_id: String).returns(String) }
            def id=(_id); end
            # An optional field to specify the version of Settings to use.
            # If not provided, this will always default to the `live_version` specified on the setting, any time the settings are used.
            # Using a specific version here will prevent the settings from updating, and is discouraged for cadences.
            # To clear a pinned version, set the version to null.
            sig { returns(T.nilable(String)) }
            def version; end
            sig { params(_version: T.nilable(String)).returns(T.nilable(String)) }
            def version=(_version); end
            sig { params(id: String, version: T.nilable(String)).void }
            def initialize(id: nil, version: nil); end
          end
          class Collection < ::Stripe::RequestParams
            # The ID of the referenced settings object.
            sig { returns(String) }
            def id; end
            sig { params(_id: String).returns(String) }
            def id=(_id); end
            # An optional field to specify the version of Settings to use.
            # If not provided, this will always default to the `live_version` specified on the setting, any time the settings are used.
            # Using a specific version here will prevent the settings from updating, and is discouraged for cadences.
            # To clear a pinned version, set the version to null.
            sig { returns(T.nilable(String)) }
            def version; end
            sig { params(_version: T.nilable(String)).returns(T.nilable(String)) }
            def version=(_version); end
            sig { params(id: String, version: T.nilable(String)).void }
            def initialize(id: nil, version: nil); end
          end
          # Settings that configure bills generation, which includes calculating totals, tax, and presenting invoices. If null is provided, the current bill settings will be removed from the billing cadence.
          sig { returns(T.nilable(V2::Billing::CadenceUpdateParams::Settings::Bill)) }
          def bill; end
          sig {
            params(_bill: T.nilable(V2::Billing::CadenceUpdateParams::Settings::Bill)).returns(T.nilable(V2::Billing::CadenceUpdateParams::Settings::Bill))
           }
          def bill=(_bill); end
          # Settings that configure and manage the behavior of collecting payments. If null is provided, the current collection settings will be removed from the billing cadence.
          sig { returns(T.nilable(V2::Billing::CadenceUpdateParams::Settings::Collection)) }
          def collection; end
          sig {
            params(_collection: T.nilable(V2::Billing::CadenceUpdateParams::Settings::Collection)).returns(T.nilable(V2::Billing::CadenceUpdateParams::Settings::Collection))
           }
          def collection=(_collection); end
          sig {
            params(bill: T.nilable(V2::Billing::CadenceUpdateParams::Settings::Bill), collection: T.nilable(V2::Billing::CadenceUpdateParams::Settings::Collection)).void
           }
          def initialize(bill: nil, collection: nil); end
        end
        # Additional resource to include in the response.
        sig { returns(T.nilable(T::Array[String])) }
        def include; end
        sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def include=(_include); end
        # A lookup key used to retrieve cadences dynamically from a static string. Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
        def lookup_key=(_lookup_key); end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
         }
        def metadata=(_metadata); end
        # The payer determines the entity financially responsible for the bill.
        sig { returns(T.nilable(V2::Billing::CadenceUpdateParams::Payer)) }
        def payer; end
        sig {
          params(_payer: T.nilable(V2::Billing::CadenceUpdateParams::Payer)).returns(T.nilable(V2::Billing::CadenceUpdateParams::Payer))
         }
        def payer=(_payer); end
        # The settings associated with the cadence.
        sig { returns(T.nilable(V2::Billing::CadenceUpdateParams::Settings)) }
        def settings; end
        sig {
          params(_settings: T.nilable(V2::Billing::CadenceUpdateParams::Settings)).returns(T.nilable(V2::Billing::CadenceUpdateParams::Settings))
         }
        def settings=(_settings); end
        sig {
          params(include: T.nilable(T::Array[String]), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, T.nilable(String)]), payer: T.nilable(V2::Billing::CadenceUpdateParams::Payer), settings: T.nilable(V2::Billing::CadenceUpdateParams::Settings)).void
         }
        def initialize(include: nil, lookup_key: nil, metadata: nil, payer: nil, settings: nil); end
      end
    end
  end
end