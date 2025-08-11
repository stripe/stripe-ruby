# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class RegistrationService < StripeService
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # The status of the Tax Registration.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
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
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ae::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ae::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Al < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Al::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Al::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Am < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ao < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ao::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ao::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class At < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::At::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::At::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Au < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Au::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Au::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Aw < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Aw::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Aw::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Az < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ba < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ba::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ba::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Bb < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bb::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bb::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Bd < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bd::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bd::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Be < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Be::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Be::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Bf < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bf::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bf::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Bg < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bg::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bg::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Bh < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bh::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bh::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Bj < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Bs < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bs::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bs::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class By < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ca < Stripe::RequestParams
            class ProvinceStandard < Stripe::RequestParams
              # Two-letter CA province code ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
              sig { returns(String) }
              attr_accessor :province
              sig { params(province: String).void }
              def initialize(province: nil); end
            end
            # Options for the provincial tax registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ca::ProvinceStandard))
             }
            attr_accessor :province_standard
            # Type of registration to be created in Canada.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(province_standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ca::ProvinceStandard), type: String).void
             }
            def initialize(province_standard: nil, type: nil); end
          end
          class Cd < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cd::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cd::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Ch < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ch::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ch::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Cl < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Cm < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Co < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Cr < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Cv < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Cy < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cy::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cy::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Cz < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cz::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cz::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class De < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::De::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::De::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Dk < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Dk::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Dk::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Ec < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ee < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ee::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ee::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Eg < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Es < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Es::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Es::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Et < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Et::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Et::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Fi < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fi::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fi::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Fr < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fr::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fr::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Gb < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gb::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gb::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Ge < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Gn < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gn::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gn::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Gr < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gr::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gr::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Hr < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hr::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hr::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Hu < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hu::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hu::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Id < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ie < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ie::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ie::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class In < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Is < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Is::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Is::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class It < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::It::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::It::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Jp < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Jp::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Jp::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Ke < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Kg < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Kh < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Kr < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Kz < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class La < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Lt < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lt::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lt::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Lu < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lu::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lu::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Lv < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lv::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lv::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Ma < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Md < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Me < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Me::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Me::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Mk < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mk::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mk::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Mr < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mr::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mr::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Mt < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mt::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mt::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Mx < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class My < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ng < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Nl < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nl::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nl::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class No < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::No::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::No::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Np < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Nz < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nz::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nz::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Om < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Om::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Om::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Pe < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ph < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Pl < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pl::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pl::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Pt < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pt::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pt::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Ro < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ro::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ro::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Rs < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Rs::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Rs::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Ru < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Sa < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Se < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Se::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Se::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Sg < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sg::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sg::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Si < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Si::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Si::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Sk < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sk::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sk::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Sn < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Sr < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sr::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sr::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Th < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Tj < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Tr < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Tz < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ua < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ug < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Us < Stripe::RequestParams
            class LocalAmusementTax < Stripe::RequestParams
              # A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction. Supported FIPS codes are: `14000` (Chicago), `06613` (Bloomington), `21696` (East Dundee), `24582` (Evanston), `45421` (Lynwood), `48892` (Midlothian), `64343` (River Grove), and `68081` (Schiller Park).
              sig { returns(String) }
              attr_accessor :jurisdiction
              sig { params(jurisdiction: String).void }
              def initialize(jurisdiction: nil); end
            end
            class LocalLeaseTax < Stripe::RequestParams
              # A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction. Supported FIPS codes are: `14000` (Chicago).
              sig { returns(String) }
              attr_accessor :jurisdiction
              sig { params(jurisdiction: String).void }
              def initialize(jurisdiction: nil); end
            end
            class StateSalesTax < Stripe::RequestParams
              class Election < Stripe::RequestParams
                # A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction. Supported FIPS codes are: `003` (Allegheny County) and `60000` (Philadelphia City).
                sig { returns(T.nilable(String)) }
                attr_accessor :jurisdiction
                # The type of the election for the state sales tax registration.
                sig { returns(String) }
                attr_accessor :type
                sig { params(jurisdiction: T.nilable(String), type: String).void }
                def initialize(jurisdiction: nil, type: nil); end
              end
              # Elections for the state sales tax registration.
              sig {
                returns(T::Array[::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::StateSalesTax::Election])
               }
              attr_accessor :elections
              sig {
                params(elections: T::Array[::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::StateSalesTax::Election]).void
               }
              def initialize(elections: nil); end
            end
            # Options for the local amusement tax registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::LocalAmusementTax))
             }
            attr_accessor :local_amusement_tax
            # Options for the local lease tax registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::LocalLeaseTax))
             }
            attr_accessor :local_lease_tax
            # Two-letter US state code ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
            sig { returns(String) }
            attr_accessor :state
            # Options for the state sales tax registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us::StateSalesTax))
             }
            attr_accessor :state_sales_tax
            # Type of registration to be created in the US.
            sig { returns(String) }
            attr_accessor :type
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
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Uy::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Uy::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Uz < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Vn < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Za < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Za::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Za::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Zm < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Zw < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an standard registration.
              sig { returns(T.nilable(String)) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: T.nilable(String)).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig {
              returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Zw::Standard))
             }
            attr_accessor :standard
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Zw::Standard), type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          # Options for the registration in AE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ae))
           }
          attr_accessor :ae
          # Options for the registration in AL.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Al))
           }
          attr_accessor :al
          # Options for the registration in AM.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Am))
           }
          attr_accessor :am
          # Options for the registration in AO.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ao))
           }
          attr_accessor :ao
          # Options for the registration in AT.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::At))
           }
          attr_accessor :at
          # Options for the registration in AU.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Au))
           }
          attr_accessor :au
          # Options for the registration in AW.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Aw))
           }
          attr_accessor :aw
          # Options for the registration in AZ.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Az))
           }
          attr_accessor :az
          # Options for the registration in BA.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ba))
           }
          attr_accessor :ba
          # Options for the registration in BB.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bb))
           }
          attr_accessor :bb
          # Options for the registration in BD.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bd))
           }
          attr_accessor :bd
          # Options for the registration in BE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Be))
           }
          attr_accessor :be
          # Options for the registration in BF.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bf))
           }
          attr_accessor :bf
          # Options for the registration in BG.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bg))
           }
          attr_accessor :bg
          # Options for the registration in BH.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bh))
           }
          attr_accessor :bh
          # Options for the registration in BJ.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bj))
           }
          attr_accessor :bj
          # Options for the registration in BS.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Bs))
           }
          attr_accessor :bs
          # Options for the registration in BY.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::By))
           }
          attr_accessor :by
          # Options for the registration in CA.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ca))
           }
          attr_accessor :ca
          # Options for the registration in CD.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cd))
           }
          attr_accessor :cd
          # Options for the registration in CH.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ch))
           }
          attr_accessor :ch
          # Options for the registration in CL.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cl))
           }
          attr_accessor :cl
          # Options for the registration in CM.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cm))
           }
          attr_accessor :cm
          # Options for the registration in CO.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Co))
           }
          attr_accessor :co
          # Options for the registration in CR.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cr))
           }
          attr_accessor :cr
          # Options for the registration in CV.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cv))
           }
          attr_accessor :cv
          # Options for the registration in CY.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cy))
           }
          attr_accessor :cy
          # Options for the registration in CZ.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Cz))
           }
          attr_accessor :cz
          # Options for the registration in DE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::De))
           }
          attr_accessor :de
          # Options for the registration in DK.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Dk))
           }
          attr_accessor :dk
          # Options for the registration in EC.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ec))
           }
          attr_accessor :ec
          # Options for the registration in EE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ee))
           }
          attr_accessor :ee
          # Options for the registration in EG.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Eg))
           }
          attr_accessor :eg
          # Options for the registration in ES.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Es))
           }
          attr_accessor :es
          # Options for the registration in ET.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Et))
           }
          attr_accessor :et
          # Options for the registration in FI.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fi))
           }
          attr_accessor :fi
          # Options for the registration in FR.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Fr))
           }
          attr_accessor :fr
          # Options for the registration in GB.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gb))
           }
          attr_accessor :gb
          # Options for the registration in GE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ge))
           }
          attr_accessor :ge
          # Options for the registration in GN.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gn))
           }
          attr_accessor :gn
          # Options for the registration in GR.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Gr))
           }
          attr_accessor :gr
          # Options for the registration in HR.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hr))
           }
          attr_accessor :hr
          # Options for the registration in HU.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Hu))
           }
          attr_accessor :hu
          # Options for the registration in ID.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Id))
           }
          attr_accessor :id
          # Options for the registration in IE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ie))
           }
          attr_accessor :ie
          # Options for the registration in IN.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::In))
           }
          attr_accessor :in
          # Options for the registration in IS.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Is))
           }
          attr_accessor :is
          # Options for the registration in IT.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::It))
           }
          attr_accessor :it
          # Options for the registration in JP.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Jp))
           }
          attr_accessor :jp
          # Options for the registration in KE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ke))
           }
          attr_accessor :ke
          # Options for the registration in KG.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kg))
           }
          attr_accessor :kg
          # Options for the registration in KH.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kh))
           }
          attr_accessor :kh
          # Options for the registration in KR.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kr))
           }
          attr_accessor :kr
          # Options for the registration in KZ.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Kz))
           }
          attr_accessor :kz
          # Options for the registration in LA.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::La))
           }
          attr_accessor :la
          # Options for the registration in LT.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lt))
           }
          attr_accessor :lt
          # Options for the registration in LU.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lu))
           }
          attr_accessor :lu
          # Options for the registration in LV.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Lv))
           }
          attr_accessor :lv
          # Options for the registration in MA.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ma))
           }
          attr_accessor :ma
          # Options for the registration in MD.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Md))
           }
          attr_accessor :md
          # Options for the registration in ME.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Me))
           }
          attr_accessor :me
          # Options for the registration in MK.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mk))
           }
          attr_accessor :mk
          # Options for the registration in MR.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mr))
           }
          attr_accessor :mr
          # Options for the registration in MT.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mt))
           }
          attr_accessor :mt
          # Options for the registration in MX.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Mx))
           }
          attr_accessor :mx
          # Options for the registration in MY.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::My))
           }
          attr_accessor :my
          # Options for the registration in NG.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ng))
           }
          attr_accessor :ng
          # Options for the registration in NL.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nl))
           }
          attr_accessor :nl
          # Options for the registration in NO.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::No))
           }
          attr_accessor :no
          # Options for the registration in NP.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Np))
           }
          attr_accessor :np
          # Options for the registration in NZ.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Nz))
           }
          attr_accessor :nz
          # Options for the registration in OM.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Om))
           }
          attr_accessor :om
          # Options for the registration in PE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pe))
           }
          attr_accessor :pe
          # Options for the registration in PH.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ph))
           }
          attr_accessor :ph
          # Options for the registration in PL.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pl))
           }
          attr_accessor :pl
          # Options for the registration in PT.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Pt))
           }
          attr_accessor :pt
          # Options for the registration in RO.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ro))
           }
          attr_accessor :ro
          # Options for the registration in RS.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Rs))
           }
          attr_accessor :rs
          # Options for the registration in RU.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ru))
           }
          attr_accessor :ru
          # Options for the registration in SA.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sa))
           }
          attr_accessor :sa
          # Options for the registration in SE.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Se))
           }
          attr_accessor :se
          # Options for the registration in SG.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sg))
           }
          attr_accessor :sg
          # Options for the registration in SI.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Si))
           }
          attr_accessor :si
          # Options for the registration in SK.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sk))
           }
          attr_accessor :sk
          # Options for the registration in SN.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sn))
           }
          attr_accessor :sn
          # Options for the registration in SR.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Sr))
           }
          attr_accessor :sr
          # Options for the registration in TH.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Th))
           }
          attr_accessor :th
          # Options for the registration in TJ.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Tj))
           }
          attr_accessor :tj
          # Options for the registration in TR.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Tr))
           }
          attr_accessor :tr
          # Options for the registration in TZ.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Tz))
           }
          attr_accessor :tz
          # Options for the registration in UA.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ua))
           }
          attr_accessor :ua
          # Options for the registration in UG.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Ug))
           }
          attr_accessor :ug
          # Options for the registration in US.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Us))
           }
          attr_accessor :us
          # Options for the registration in UY.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Uy))
           }
          attr_accessor :uy
          # Options for the registration in UZ.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Uz))
           }
          attr_accessor :uz
          # Options for the registration in VN.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Vn))
           }
          attr_accessor :vn
          # Options for the registration in ZA.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Za))
           }
          attr_accessor :za
          # Options for the registration in ZM.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Zm))
           }
          attr_accessor :zm
          # Options for the registration in ZW.
          sig {
            returns(T.nilable(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions::Zw))
           }
          attr_accessor :zw
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
        attr_accessor :active_from
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(String) }
        attr_accessor :country
        # Specific options for a registration in the specified `country`.
        sig { returns(::Stripe::Tax::RegistrationService::CreateParams::CountryOptions) }
        attr_accessor :country_options
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # If set, the Tax Registration stops being active at this time. If not set, the Tax Registration will be active indefinitely. Timestamp measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expires_at
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
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        # Time at which the registration becomes active. It can be either `now` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
        sig { returns(T.nilable(T.any(String, Integer))) }
        attr_accessor :active_from
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # If set, the registration stops being active at this time. If not set, the registration will be active indefinitely. It can be either `now` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
        sig { returns(T.nilable(T.any(String, T.any(String, Integer)))) }
        attr_accessor :expires_at
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