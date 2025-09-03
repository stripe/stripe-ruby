# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class RegistrationService < StripeService
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # The status of the Tax Registration.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String)).void
         }
        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class CountryOptions < Stripe::RequestParams
          class Ae < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ae::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ae::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ae::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ae::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Al < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Al::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Al::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Al::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Al::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Am < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ao < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ao::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ao::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ao::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ao::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class At < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::At::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::At::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::At::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::At::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Au < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Au::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Au::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Au::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Au::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Aw < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Aw::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Aw::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Aw::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Aw::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Az < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ba < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ba::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ba::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ba::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ba::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Bb < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bb::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bb::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bb::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bb::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Bd < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bd::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bd::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bd::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bd::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Be < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Be::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Be::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Be::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Be::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Bf < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bf::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bf::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bf::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bf::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Bg < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bg::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bg::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bg::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bg::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Bh < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bh::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bh::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bh::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bh::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Bj < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Bs < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bs::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bs::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bs::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bs::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class By < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ca < Stripe::RequestParams
            class ProvinceStandard < Stripe::RequestParams
              # Two-letter CA province code ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
              sig { returns(String) }
              def province; end
              sig { params(_province: String).returns(String) }
              def province=(_province); end
              sig { params(province: String).void }
              def initialize(province: nil); end
            end
            # Options for the provincial tax registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ca::ProvinceStandard))
             }
            def province_standard; end
            sig {
              params(_province_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ca::ProvinceStandard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ca::ProvinceStandard))
             }
            def province_standard=(_province_standard); end
            # Type of registration to be created in Canada.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(province_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ca::ProvinceStandard), type: String).void
             }
            def initialize(province_standard: nil, type: nil); end
          end
          class Cd < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cd::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cd::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cd::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cd::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Ch < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ch::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ch::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ch::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ch::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Cl < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Cm < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Co < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Cr < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Cv < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Cy < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cy::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cy::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cy::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cy::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Cz < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cz::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cz::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cz::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cz::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class De < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::De::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::De::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::De::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::De::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Dk < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Dk::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Dk::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Dk::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Dk::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Ec < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ee < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ee::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ee::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ee::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ee::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Eg < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Es < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Es::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Es::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Es::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Es::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Et < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Et::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Et::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Et::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Et::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Fi < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fi::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fi::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fi::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fi::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Fr < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fr::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fr::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fr::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fr::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Gb < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gb::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gb::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gb::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gb::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Ge < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Gn < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gn::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gn::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gn::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gn::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Gr < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gr::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gr::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gr::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gr::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Hr < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hr::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hr::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hr::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hr::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Hu < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hu::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hu::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hu::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hu::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Id < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ie < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ie::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ie::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ie::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ie::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class In < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Is < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Is::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Is::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Is::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Is::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class It < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::It::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::It::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::It::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::It::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Jp < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Jp::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Jp::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Jp::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Jp::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Ke < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Kg < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Kh < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Kr < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Kz < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class La < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Lt < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lt::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lt::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lt::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lt::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Lu < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lu::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lu::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lu::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lu::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Lv < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lv::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lv::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lv::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lv::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Ma < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Md < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Me < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Me::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Me::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Me::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Me::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Mk < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mk::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mk::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mk::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mk::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Mr < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mr::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mr::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mr::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mr::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Mt < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mt::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mt::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mt::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mt::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Mx < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class My < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ng < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Nl < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nl::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nl::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nl::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nl::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class No < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::No::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::No::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::No::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::No::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Np < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Nz < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nz::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nz::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nz::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nz::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Om < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Om::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Om::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Om::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Om::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Pe < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ph < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Pl < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pl::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pl::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pl::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pl::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Pt < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pt::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pt::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pt::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pt::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Ro < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ro::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ro::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ro::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ro::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Rs < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Rs::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Rs::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Rs::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Rs::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Ru < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Sa < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Se < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Se::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Se::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Se::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Se::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Sg < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sg::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sg::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sg::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sg::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Si < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Si::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Si::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Si::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Si::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Sk < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: String).returns(String) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sk::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sk::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sk::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sk::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Sn < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Sr < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sr::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sr::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sr::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sr::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Th < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Tj < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Tr < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Tz < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ua < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ug < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Us < Stripe::RequestParams
            class LocalAmusementTax < Stripe::RequestParams
              # A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction. Supported FIPS codes are: `14000` (Chicago), `06613` (Bloomington), `21696` (East Dundee), `24582` (Evanston), `45421` (Lynwood), `48892` (Midlothian), `64343` (River Grove), and `68081` (Schiller Park).
              sig { returns(String) }
              def jurisdiction; end
              sig { params(_jurisdiction: String).returns(String) }
              def jurisdiction=(_jurisdiction); end
              sig { params(jurisdiction: String).void }
              def initialize(jurisdiction: nil); end
            end
            class LocalLeaseTax < Stripe::RequestParams
              # A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction. Supported FIPS codes are: `14000` (Chicago).
              sig { returns(String) }
              def jurisdiction; end
              sig { params(_jurisdiction: String).returns(String) }
              def jurisdiction=(_jurisdiction); end
              sig { params(jurisdiction: String).void }
              def initialize(jurisdiction: nil); end
            end
            class StateSalesTax < Stripe::RequestParams
              class Election < Stripe::RequestParams
                # A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction. Supported FIPS codes are: `003` (Allegheny County) and `60000` (Philadelphia City).
                sig { returns(T.nilable(String)) }
                def jurisdiction; end
                sig { params(_jurisdiction: T.nilable(String)).returns(T.nilable(String)) }
                def jurisdiction=(_jurisdiction); end
                # The type of the election for the state sales tax registration.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig { params(jurisdiction: T.nilable(String), type: String).void }
                def initialize(jurisdiction: nil, type: nil); end
              end
              # Elections for the state sales tax registration.
              sig {
                returns(T::Array[::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::StateSalesTax::Election])
               }
              def elections; end
              sig {
                params(_elections: T::Array[::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::StateSalesTax::Election]).returns(T::Array[::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::StateSalesTax::Election])
               }
              def elections=(_elections); end
              sig {
                params(elections: T::Array[::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::StateSalesTax::Election]).void
               }
              def initialize(elections: nil); end
            end
            # Options for the local amusement tax registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::LocalAmusementTax))
             }
            def local_amusement_tax; end
            sig {
              params(_local_amusement_tax: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::LocalAmusementTax)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::LocalAmusementTax))
             }
            def local_amusement_tax=(_local_amusement_tax); end
            # Options for the local lease tax registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::LocalLeaseTax))
             }
            def local_lease_tax; end
            sig {
              params(_local_lease_tax: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::LocalLeaseTax)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::LocalLeaseTax))
             }
            def local_lease_tax=(_local_lease_tax); end
            # Two-letter US state code ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
            sig { returns(String) }
            def state; end
            sig { params(_state: String).returns(String) }
            def state=(_state); end
            # Options for the state sales tax registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::StateSalesTax))
             }
            def state_sales_tax; end
            sig {
              params(_state_sales_tax: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::StateSalesTax)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::StateSalesTax))
             }
            def state_sales_tax=(_state_sales_tax); end
            # Type of registration to be created in the US.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(local_amusement_tax: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::LocalAmusementTax), local_lease_tax: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::LocalLeaseTax), state: String, state_sales_tax: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::StateSalesTax), type: String).void
             }
            def initialize(
              local_amusement_tax: nil,
              local_lease_tax: nil,
              state: nil,
              state_sales_tax: nil,
              type: nil
            ); end
          end
          class Uy < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Uy::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Uy::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Uy::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Uy::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Uz < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Vn < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Za < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Za::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Za::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Za::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Za::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Zm < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Zw < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              def place_of_supply_scheme; end
              sig { params(_place_of_supply_scheme: T.nilable(String)).returns(T.nilable(String)) }
              def place_of_supply_scheme=(_place_of_supply_scheme); end
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Zw::Standard))
             }
            def standard; end
            sig {
              params(_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Zw::Standard)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Zw::Standard))
             }
            def standard=(_standard); end
            # Type of registration to be created in `country`.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Zw::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          # Options for the registration in AE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ae))
           }
          def ae; end
          sig {
            params(_ae: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ae)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ae))
           }
          def ae=(_ae); end
          # Options for the registration in AL.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Al))
           }
          def al; end
          sig {
            params(_al: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Al)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Al))
           }
          def al=(_al); end
          # Options for the registration in AM.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Am))
           }
          def am; end
          sig {
            params(_am: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Am)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Am))
           }
          def am=(_am); end
          # Options for the registration in AO.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ao))
           }
          def ao; end
          sig {
            params(_ao: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ao)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ao))
           }
          def ao=(_ao); end
          # Options for the registration in AT.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::At))
           }
          def at; end
          sig {
            params(_at: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::At)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::At))
           }
          def at=(_at); end
          # Options for the registration in AU.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Au))
           }
          def au; end
          sig {
            params(_au: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Au)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Au))
           }
          def au=(_au); end
          # Options for the registration in AW.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Aw))
           }
          def aw; end
          sig {
            params(_aw: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Aw)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Aw))
           }
          def aw=(_aw); end
          # Options for the registration in AZ.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Az))
           }
          def az; end
          sig {
            params(_az: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Az)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Az))
           }
          def az=(_az); end
          # Options for the registration in BA.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ba))
           }
          def ba; end
          sig {
            params(_ba: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ba)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ba))
           }
          def ba=(_ba); end
          # Options for the registration in BB.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bb))
           }
          def bb; end
          sig {
            params(_bb: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bb)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bb))
           }
          def bb=(_bb); end
          # Options for the registration in BD.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bd))
           }
          def bd; end
          sig {
            params(_bd: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bd)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bd))
           }
          def bd=(_bd); end
          # Options for the registration in BE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Be))
           }
          def be; end
          sig {
            params(_be: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Be)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Be))
           }
          def be=(_be); end
          # Options for the registration in BF.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bf))
           }
          def bf; end
          sig {
            params(_bf: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bf)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bf))
           }
          def bf=(_bf); end
          # Options for the registration in BG.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bg))
           }
          def bg; end
          sig {
            params(_bg: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bg)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bg))
           }
          def bg=(_bg); end
          # Options for the registration in BH.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bh))
           }
          def bh; end
          sig {
            params(_bh: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bh)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bh))
           }
          def bh=(_bh); end
          # Options for the registration in BJ.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bj))
           }
          def bj; end
          sig {
            params(_bj: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bj)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bj))
           }
          def bj=(_bj); end
          # Options for the registration in BS.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bs))
           }
          def bs; end
          sig {
            params(_bs: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bs)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bs))
           }
          def bs=(_bs); end
          # Options for the registration in BY.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::By))
           }
          def by; end
          sig {
            params(_by: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::By)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::By))
           }
          def by=(_by); end
          # Options for the registration in CA.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ca))
           }
          def ca; end
          sig {
            params(_ca: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ca)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ca))
           }
          def ca=(_ca); end
          # Options for the registration in CD.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cd))
           }
          def cd; end
          sig {
            params(_cd: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cd)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cd))
           }
          def cd=(_cd); end
          # Options for the registration in CH.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ch))
           }
          def ch; end
          sig {
            params(_ch: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ch)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ch))
           }
          def ch=(_ch); end
          # Options for the registration in CL.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cl))
           }
          def cl; end
          sig {
            params(_cl: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cl)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cl))
           }
          def cl=(_cl); end
          # Options for the registration in CM.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cm))
           }
          def cm; end
          sig {
            params(_cm: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cm)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cm))
           }
          def cm=(_cm); end
          # Options for the registration in CO.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Co))
           }
          def co; end
          sig {
            params(_co: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Co)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Co))
           }
          def co=(_co); end
          # Options for the registration in CR.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cr))
           }
          def cr; end
          sig {
            params(_cr: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cr)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cr))
           }
          def cr=(_cr); end
          # Options for the registration in CV.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cv))
           }
          def cv; end
          sig {
            params(_cv: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cv)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cv))
           }
          def cv=(_cv); end
          # Options for the registration in CY.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cy))
           }
          def cy; end
          sig {
            params(_cy: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cy)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cy))
           }
          def cy=(_cy); end
          # Options for the registration in CZ.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cz))
           }
          def cz; end
          sig {
            params(_cz: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cz)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cz))
           }
          def cz=(_cz); end
          # Options for the registration in DE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::De))
           }
          def de; end
          sig {
            params(_de: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::De)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::De))
           }
          def de=(_de); end
          # Options for the registration in DK.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Dk))
           }
          def dk; end
          sig {
            params(_dk: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Dk)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Dk))
           }
          def dk=(_dk); end
          # Options for the registration in EC.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ec))
           }
          def ec; end
          sig {
            params(_ec: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ec)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ec))
           }
          def ec=(_ec); end
          # Options for the registration in EE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ee))
           }
          def ee; end
          sig {
            params(_ee: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ee)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ee))
           }
          def ee=(_ee); end
          # Options for the registration in EG.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Eg))
           }
          def eg; end
          sig {
            params(_eg: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Eg)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Eg))
           }
          def eg=(_eg); end
          # Options for the registration in ES.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Es))
           }
          def es; end
          sig {
            params(_es: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Es)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Es))
           }
          def es=(_es); end
          # Options for the registration in ET.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Et))
           }
          def et; end
          sig {
            params(_et: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Et)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Et))
           }
          def et=(_et); end
          # Options for the registration in FI.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fi))
           }
          def fi; end
          sig {
            params(_fi: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fi)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fi))
           }
          def fi=(_fi); end
          # Options for the registration in FR.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fr))
           }
          def fr; end
          sig {
            params(_fr: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fr)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fr))
           }
          def fr=(_fr); end
          # Options for the registration in GB.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gb))
           }
          def gb; end
          sig {
            params(_gb: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gb)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gb))
           }
          def gb=(_gb); end
          # Options for the registration in GE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ge))
           }
          def ge; end
          sig {
            params(_ge: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ge)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ge))
           }
          def ge=(_ge); end
          # Options for the registration in GN.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gn))
           }
          def gn; end
          sig {
            params(_gn: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gn)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gn))
           }
          def gn=(_gn); end
          # Options for the registration in GR.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gr))
           }
          def gr; end
          sig {
            params(_gr: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gr)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gr))
           }
          def gr=(_gr); end
          # Options for the registration in HR.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hr))
           }
          def hr; end
          sig {
            params(_hr: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hr)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hr))
           }
          def hr=(_hr); end
          # Options for the registration in HU.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hu))
           }
          def hu; end
          sig {
            params(_hu: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hu)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hu))
           }
          def hu=(_hu); end
          # Options for the registration in ID.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Id))
           }
          def id; end
          sig {
            params(_id: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Id)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Id))
           }
          def id=(_id); end
          # Options for the registration in IE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ie))
           }
          def ie; end
          sig {
            params(_ie: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ie)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ie))
           }
          def ie=(_ie); end
          # Options for the registration in IN.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::In))
           }
          def in; end
          sig {
            params(_in: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::In)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::In))
           }
          def in=(_in); end
          # Options for the registration in IS.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Is))
           }
          def is; end
          sig {
            params(_is: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Is)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Is))
           }
          def is=(_is); end
          # Options for the registration in IT.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::It))
           }
          def it; end
          sig {
            params(_it: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::It)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::It))
           }
          def it=(_it); end
          # Options for the registration in JP.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Jp))
           }
          def jp; end
          sig {
            params(_jp: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Jp)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Jp))
           }
          def jp=(_jp); end
          # Options for the registration in KE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ke))
           }
          def ke; end
          sig {
            params(_ke: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ke)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ke))
           }
          def ke=(_ke); end
          # Options for the registration in KG.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kg))
           }
          def kg; end
          sig {
            params(_kg: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kg)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kg))
           }
          def kg=(_kg); end
          # Options for the registration in KH.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kh))
           }
          def kh; end
          sig {
            params(_kh: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kh)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kh))
           }
          def kh=(_kh); end
          # Options for the registration in KR.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kr))
           }
          def kr; end
          sig {
            params(_kr: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kr)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kr))
           }
          def kr=(_kr); end
          # Options for the registration in KZ.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kz))
           }
          def kz; end
          sig {
            params(_kz: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kz)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kz))
           }
          def kz=(_kz); end
          # Options for the registration in LA.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::La))
           }
          def la; end
          sig {
            params(_la: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::La)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::La))
           }
          def la=(_la); end
          # Options for the registration in LT.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lt))
           }
          def lt; end
          sig {
            params(_lt: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lt)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lt))
           }
          def lt=(_lt); end
          # Options for the registration in LU.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lu))
           }
          def lu; end
          sig {
            params(_lu: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lu)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lu))
           }
          def lu=(_lu); end
          # Options for the registration in LV.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lv))
           }
          def lv; end
          sig {
            params(_lv: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lv)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lv))
           }
          def lv=(_lv); end
          # Options for the registration in MA.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ma))
           }
          def ma; end
          sig {
            params(_ma: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ma)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ma))
           }
          def ma=(_ma); end
          # Options for the registration in MD.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Md))
           }
          def md; end
          sig {
            params(_md: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Md)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Md))
           }
          def md=(_md); end
          # Options for the registration in ME.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Me))
           }
          def me; end
          sig {
            params(_me: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Me)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Me))
           }
          def me=(_me); end
          # Options for the registration in MK.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mk))
           }
          def mk; end
          sig {
            params(_mk: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mk)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mk))
           }
          def mk=(_mk); end
          # Options for the registration in MR.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mr))
           }
          def mr; end
          sig {
            params(_mr: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mr)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mr))
           }
          def mr=(_mr); end
          # Options for the registration in MT.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mt))
           }
          def mt; end
          sig {
            params(_mt: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mt)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mt))
           }
          def mt=(_mt); end
          # Options for the registration in MX.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mx))
           }
          def mx; end
          sig {
            params(_mx: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mx)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mx))
           }
          def mx=(_mx); end
          # Options for the registration in MY.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::My))
           }
          def my; end
          sig {
            params(_my: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::My)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::My))
           }
          def my=(_my); end
          # Options for the registration in NG.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ng))
           }
          def ng; end
          sig {
            params(_ng: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ng)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ng))
           }
          def ng=(_ng); end
          # Options for the registration in NL.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nl))
           }
          def nl; end
          sig {
            params(_nl: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nl)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nl))
           }
          def nl=(_nl); end
          # Options for the registration in NO.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::No))
           }
          def no; end
          sig {
            params(_no: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::No)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::No))
           }
          def no=(_no); end
          # Options for the registration in NP.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Np))
           }
          def np; end
          sig {
            params(_np: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Np)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Np))
           }
          def np=(_np); end
          # Options for the registration in NZ.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nz))
           }
          def nz; end
          sig {
            params(_nz: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nz)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nz))
           }
          def nz=(_nz); end
          # Options for the registration in OM.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Om))
           }
          def om; end
          sig {
            params(_om: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Om)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Om))
           }
          def om=(_om); end
          # Options for the registration in PE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pe))
           }
          def pe; end
          sig {
            params(_pe: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pe)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pe))
           }
          def pe=(_pe); end
          # Options for the registration in PH.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ph))
           }
          def ph; end
          sig {
            params(_ph: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ph)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ph))
           }
          def ph=(_ph); end
          # Options for the registration in PL.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pl))
           }
          def pl; end
          sig {
            params(_pl: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pl)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pl))
           }
          def pl=(_pl); end
          # Options for the registration in PT.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pt))
           }
          def pt; end
          sig {
            params(_pt: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pt)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pt))
           }
          def pt=(_pt); end
          # Options for the registration in RO.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ro))
           }
          def ro; end
          sig {
            params(_ro: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ro)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ro))
           }
          def ro=(_ro); end
          # Options for the registration in RS.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Rs))
           }
          def rs; end
          sig {
            params(_rs: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Rs)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Rs))
           }
          def rs=(_rs); end
          # Options for the registration in RU.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ru))
           }
          def ru; end
          sig {
            params(_ru: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ru)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ru))
           }
          def ru=(_ru); end
          # Options for the registration in SA.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sa))
           }
          def sa; end
          sig {
            params(_sa: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sa)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sa))
           }
          def sa=(_sa); end
          # Options for the registration in SE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Se))
           }
          def se; end
          sig {
            params(_se: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Se)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Se))
           }
          def se=(_se); end
          # Options for the registration in SG.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sg))
           }
          def sg; end
          sig {
            params(_sg: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sg)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sg))
           }
          def sg=(_sg); end
          # Options for the registration in SI.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Si))
           }
          def si; end
          sig {
            params(_si: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Si)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Si))
           }
          def si=(_si); end
          # Options for the registration in SK.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sk))
           }
          def sk; end
          sig {
            params(_sk: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sk)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sk))
           }
          def sk=(_sk); end
          # Options for the registration in SN.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sn))
           }
          def sn; end
          sig {
            params(_sn: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sn)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sn))
           }
          def sn=(_sn); end
          # Options for the registration in SR.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sr))
           }
          def sr; end
          sig {
            params(_sr: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sr)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sr))
           }
          def sr=(_sr); end
          # Options for the registration in TH.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Th))
           }
          def th; end
          sig {
            params(_th: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Th)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Th))
           }
          def th=(_th); end
          # Options for the registration in TJ.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Tj))
           }
          def tj; end
          sig {
            params(_tj: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Tj)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Tj))
           }
          def tj=(_tj); end
          # Options for the registration in TR.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Tr))
           }
          def tr; end
          sig {
            params(_tr: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Tr)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Tr))
           }
          def tr=(_tr); end
          # Options for the registration in TZ.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Tz))
           }
          def tz; end
          sig {
            params(_tz: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Tz)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Tz))
           }
          def tz=(_tz); end
          # Options for the registration in UA.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ua))
           }
          def ua; end
          sig {
            params(_ua: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ua)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ua))
           }
          def ua=(_ua); end
          # Options for the registration in UG.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ug))
           }
          def ug; end
          sig {
            params(_ug: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ug)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ug))
           }
          def ug=(_ug); end
          # Options for the registration in US.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us))
           }
          def us; end
          sig {
            params(_us: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us))
           }
          def us=(_us); end
          # Options for the registration in UY.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Uy))
           }
          def uy; end
          sig {
            params(_uy: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Uy)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Uy))
           }
          def uy=(_uy); end
          # Options for the registration in UZ.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Uz))
           }
          def uz; end
          sig {
            params(_uz: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Uz)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Uz))
           }
          def uz=(_uz); end
          # Options for the registration in VN.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Vn))
           }
          def vn; end
          sig {
            params(_vn: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Vn)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Vn))
           }
          def vn=(_vn); end
          # Options for the registration in ZA.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Za))
           }
          def za; end
          sig {
            params(_za: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Za)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Za))
           }
          def za=(_za); end
          # Options for the registration in ZM.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Zm))
           }
          def zm; end
          sig {
            params(_zm: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Zm)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Zm))
           }
          def zm=(_zm); end
          # Options for the registration in ZW.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Zw))
           }
          def zw; end
          sig {
            params(_zw: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Zw)).returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Zw))
           }
          def zw=(_zw); end
          sig {
            params(ae: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ae), al: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Al), am: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Am), ao: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ao), at: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::At), au: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Au), aw: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Aw), az: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Az), ba: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ba), bb: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bb), bd: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bd), be: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Be), bf: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bf), bg: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bg), bh: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bh), bj: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bj), bs: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bs), by: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::By), ca: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ca), cd: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cd), ch: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ch), cl: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cl), cm: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cm), co: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Co), cr: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cr), cv: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cv), cy: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cy), cz: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cz), de: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::De), dk: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Dk), ec: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ec), ee: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ee), eg: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Eg), es: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Es), et: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Et), fi: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fi), fr: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fr), gb: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gb), ge: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ge), gn: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gn), gr: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gr), hr: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hr), hu: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hu), id: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Id), ie: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ie), in_: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::In), is: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Is), it: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::It), jp: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Jp), ke: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ke), kg: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kg), kh: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kh), kr: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kr), kz: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kz), la: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::La), lt: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lt), lu: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lu), lv: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lv), ma: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ma), md: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Md), me: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Me), mk: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mk), mr: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mr), mt: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mt), mx: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mx), my: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::My), ng: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ng), nl: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nl), no: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::No), np: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Np), nz: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nz), om: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Om), pe: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pe), ph: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ph), pl: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pl), pt: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pt), ro: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ro), rs: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Rs), ru: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ru), sa: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sa), se: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Se), sg: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sg), si: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Si), sk: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sk), sn: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sn), sr: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sr), th: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Th), tj: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Tj), tr: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Tr), tz: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Tz), ua: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ua), ug: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ug), us: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us), uy: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Uy), uz: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Uz), vn: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Vn), za: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Za), zm: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Zm), zw: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Zw)).void
           }
          def initialize(
            ae: nil,
            al: nil,
            am: nil,
            ao: nil,
            at: nil,
            au: nil,
            aw: nil,
            az: nil,
            ba: nil,
            bb: nil,
            bd: nil,
            be: nil,
            bf: nil,
            bg: nil,
            bh: nil,
            bj: nil,
            bs: nil,
            by: nil,
            ca: nil,
            cd: nil,
            ch: nil,
            cl: nil,
            cm: nil,
            co: nil,
            cr: nil,
            cv: nil,
            cy: nil,
            cz: nil,
            de: nil,
            dk: nil,
            ec: nil,
            ee: nil,
            eg: nil,
            es: nil,
            et: nil,
            fi: nil,
            fr: nil,
            gb: nil,
            ge: nil,
            gn: nil,
            gr: nil,
            hr: nil,
            hu: nil,
            id: nil,
            ie: nil,
            in_: nil,
            is: nil,
            it: nil,
            jp: nil,
            ke: nil,
            kg: nil,
            kh: nil,
            kr: nil,
            kz: nil,
            la: nil,
            lt: nil,
            lu: nil,
            lv: nil,
            ma: nil,
            md: nil,
            me: nil,
            mk: nil,
            mr: nil,
            mt: nil,
            mx: nil,
            my: nil,
            ng: nil,
            nl: nil,
            no: nil,
            np: nil,
            nz: nil,
            om: nil,
            pe: nil,
            ph: nil,
            pl: nil,
            pt: nil,
            ro: nil,
            rs: nil,
            ru: nil,
            sa: nil,
            se: nil,
            sg: nil,
            si: nil,
            sk: nil,
            sn: nil,
            sr: nil,
            th: nil,
            tj: nil,
            tr: nil,
            tz: nil,
            ua: nil,
            ug: nil,
            us: nil,
            uy: nil,
            uz: nil,
            vn: nil,
            za: nil,
            zm: nil,
            zw: nil
          ); end
        end
        # Time at which the Tax Registration becomes active. It can be either `now` to indicate the current time, or a future timestamp measured in seconds since the Unix epoch.
        sig { returns(T.any(String, Integer)) }
        def active_from; end
        sig { params(_active_from: T.any(String, Integer)).returns(T.any(String, Integer)) }
        def active_from=(_active_from); end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(String) }
        def country; end
        sig { params(_country: String).returns(String) }
        def country=(_country); end
        # Specific options for a registration in the specified `country`.
        sig { returns(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions) }
        def country_options; end
        sig {
          params(_country_options: ::Stripe::Tax::RegistrationService::CreateParams::CountryOptions).returns(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions)
         }
        def country_options=(_country_options); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # If set, the Tax Registration stops being active at this time. If not set, the Tax Registration will be active indefinitely. Timestamp measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def expires_at; end
        sig { params(_expires_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def expires_at=(_expires_at); end
        sig {
          params(active_from: T.any(String, Integer), country: String, country_options: ::Stripe::Tax::RegistrationService::CreateParams::CountryOptions, expand: T.nilable(T::Array[String]), expires_at: T.nilable(Integer)).void
         }
        def initialize(
          active_from: nil,
          country: nil,
          country_options: nil,
          expand: nil,
          expires_at: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        # Time at which the registration becomes active. It can be either `now` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
        sig { returns(T.nilable(T.any(String, Integer))) }
        def active_from; end
        sig {
          params(_active_from: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
         }
        def active_from=(_active_from); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # If set, the registration stops being active at this time. If not set, the registration will be active indefinitely. It can be either `now` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
        sig { returns(T.nilable(T.any(String, T.any(String, Integer)))) }
        def expires_at; end
        sig {
          params(_expires_at: T.nilable(T.any(String, T.any(String, Integer)))).returns(T.nilable(T.any(String, T.any(String, Integer))))
         }
        def expires_at=(_expires_at); end
        sig {
          params(active_from: T.nilable(T.any(String, Integer)), expand: T.nilable(T::Array[String]), expires_at: T.nilable(T.any(String, T.any(String, Integer)))).void
         }
        def initialize(active_from: nil, expand: nil, expires_at: nil); end
      end
      # Creates a new Tax Registration object.
      sig {
        params(params: T.any(::Stripe::Tax::RegistrationService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Tax::Registration)
       }
      def create(params = {}, opts = {}); end

      # Returns a list of Tax Registration objects.
      sig {
        params(params: T.any(::Stripe::Tax::RegistrationService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Returns a Tax Registration object.
      sig {
        params(id: String, params: T.any(::Stripe::Tax::RegistrationService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Tax::Registration)
       }
      def retrieve(id, params = {}, opts = {}); end

      # Updates an existing Tax Registration object.
      #
      # A registration cannot be deleted after it has been created. If you wish to end a registration you may do so by setting expires_at.
      sig {
        params(id: String, params: T.any(::Stripe::Tax::RegistrationService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Tax::Registration)
       }
      def update(id, params = {}, opts = {}); end
    end
  end
end