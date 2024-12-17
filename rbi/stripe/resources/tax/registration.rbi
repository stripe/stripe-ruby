# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    # A Tax `Registration` lets us know that your business is registered to collect tax on payments within a region, enabling you to [automatically collect tax](https://stripe.com/docs/tax).
    #
    # Stripe doesn't register on your behalf with the relevant authorities when you create a Tax `Registration` object. For more information on how to register to collect tax, see [our guide](https://stripe.com/docs/tax/registering).
    #
    # Related guide: [Using the Registrations API](https://stripe.com/docs/tax/registrations-api)
    class Registration < APIResource
      class CountryOptions < Stripe::StripeObject
        class Ae < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class At < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Au < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Be < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Bg < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Bh < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class By < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Ca < Stripe::StripeObject
          class ProvinceStandard < Stripe::StripeObject
            # Two-letter CA province code ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
            sig { returns(String) }
            attr_reader :province
          end
          # Attribute for field province_standard
          sig { returns(ProvinceStandard) }
          attr_reader :province_standard
          # Type of registration in Canada.
          sig { returns(String) }
          attr_reader :type
        end
        class Ch < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Cl < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Co < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Cr < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Cy < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Cz < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class De < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Dk < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Ec < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Ee < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Eg < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Es < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Fi < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Fr < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Gb < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Ge < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Gr < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Hr < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Hu < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Id < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Ie < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Is < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class It < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Jp < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Ke < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Kr < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Kz < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Lt < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Lu < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Lv < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Ma < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Md < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Mt < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Mx < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class My < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Ng < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Nl < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class No < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Nz < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Om < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Pl < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Pt < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Ro < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Rs < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Ru < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Sa < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Se < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Sg < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Si < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Sk < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          sig { returns(Standard) }
          attr_reader :standard
          # Type of registration in an EU country.
          sig { returns(String) }
          attr_reader :type
        end
        class Th < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Tr < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Tz < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Us < Stripe::StripeObject
          class LocalAmusementTax < Stripe::StripeObject
            # A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction.
            sig { returns(String) }
            attr_reader :jurisdiction
          end
          class LocalLeaseTax < Stripe::StripeObject
            # A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction.
            sig { returns(String) }
            attr_reader :jurisdiction
          end
          class StateSalesTax < Stripe::StripeObject
            class Election < Stripe::StripeObject
              # A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction.
              sig { returns(String) }
              attr_reader :jurisdiction
              # The type of the election for the state sales tax registration.
              sig { returns(String) }
              attr_reader :type
            end
            # Elections for the state sales tax registration.
            sig { returns(T::Array[Election]) }
            attr_reader :elections
          end
          # Attribute for field local_amusement_tax
          sig { returns(LocalAmusementTax) }
          attr_reader :local_amusement_tax
          # Attribute for field local_lease_tax
          sig { returns(LocalLeaseTax) }
          attr_reader :local_lease_tax
          # Two-letter US state code ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
          sig { returns(String) }
          attr_reader :state
          # Attribute for field state_sales_tax
          sig { returns(StateSalesTax) }
          attr_reader :state_sales_tax
          # Type of registration in the US.
          sig { returns(String) }
          attr_reader :type
        end
        class Uz < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Vn < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        class Za < Stripe::StripeObject
          # Type of registration in `country`.
          sig { returns(String) }
          attr_reader :type
        end
        # Attribute for field ae
        sig { returns(Ae) }
        attr_reader :ae
        # Attribute for field at
        sig { returns(At) }
        attr_reader :at
        # Attribute for field au
        sig { returns(Au) }
        attr_reader :au
        # Attribute for field be
        sig { returns(Be) }
        attr_reader :be
        # Attribute for field bg
        sig { returns(Bg) }
        attr_reader :bg
        # Attribute for field bh
        sig { returns(Bh) }
        attr_reader :bh
        # Attribute for field by
        sig { returns(By) }
        attr_reader :by
        # Attribute for field ca
        sig { returns(Ca) }
        attr_reader :ca
        # Attribute for field ch
        sig { returns(Ch) }
        attr_reader :ch
        # Attribute for field cl
        sig { returns(Cl) }
        attr_reader :cl
        # Attribute for field co
        sig { returns(Co) }
        attr_reader :co
        # Attribute for field cr
        sig { returns(Cr) }
        attr_reader :cr
        # Attribute for field cy
        sig { returns(Cy) }
        attr_reader :cy
        # Attribute for field cz
        sig { returns(Cz) }
        attr_reader :cz
        # Attribute for field de
        sig { returns(De) }
        attr_reader :de
        # Attribute for field dk
        sig { returns(Dk) }
        attr_reader :dk
        # Attribute for field ec
        sig { returns(Ec) }
        attr_reader :ec
        # Attribute for field ee
        sig { returns(Ee) }
        attr_reader :ee
        # Attribute for field eg
        sig { returns(Eg) }
        attr_reader :eg
        # Attribute for field es
        sig { returns(Es) }
        attr_reader :es
        # Attribute for field fi
        sig { returns(Fi) }
        attr_reader :fi
        # Attribute for field fr
        sig { returns(Fr) }
        attr_reader :fr
        # Attribute for field gb
        sig { returns(Gb) }
        attr_reader :gb
        # Attribute for field ge
        sig { returns(Ge) }
        attr_reader :ge
        # Attribute for field gr
        sig { returns(Gr) }
        attr_reader :gr
        # Attribute for field hr
        sig { returns(Hr) }
        attr_reader :hr
        # Attribute for field hu
        sig { returns(Hu) }
        attr_reader :hu
        # Attribute for field id
        sig { returns(Id) }
        attr_reader :id
        # Attribute for field ie
        sig { returns(Ie) }
        attr_reader :ie
        # Attribute for field is
        sig { returns(Is) }
        attr_reader :is
        # Attribute for field it
        sig { returns(It) }
        attr_reader :it
        # Attribute for field jp
        sig { returns(Jp) }
        attr_reader :jp
        # Attribute for field ke
        sig { returns(Ke) }
        attr_reader :ke
        # Attribute for field kr
        sig { returns(Kr) }
        attr_reader :kr
        # Attribute for field kz
        sig { returns(Kz) }
        attr_reader :kz
        # Attribute for field lt
        sig { returns(Lt) }
        attr_reader :lt
        # Attribute for field lu
        sig { returns(Lu) }
        attr_reader :lu
        # Attribute for field lv
        sig { returns(Lv) }
        attr_reader :lv
        # Attribute for field ma
        sig { returns(Ma) }
        attr_reader :ma
        # Attribute for field md
        sig { returns(Md) }
        attr_reader :md
        # Attribute for field mt
        sig { returns(Mt) }
        attr_reader :mt
        # Attribute for field mx
        sig { returns(Mx) }
        attr_reader :mx
        # Attribute for field my
        sig { returns(My) }
        attr_reader :my
        # Attribute for field ng
        sig { returns(Ng) }
        attr_reader :ng
        # Attribute for field nl
        sig { returns(Nl) }
        attr_reader :nl
        # Attribute for field no
        sig { returns(No) }
        attr_reader :no
        # Attribute for field nz
        sig { returns(Nz) }
        attr_reader :nz
        # Attribute for field om
        sig { returns(Om) }
        attr_reader :om
        # Attribute for field pl
        sig { returns(Pl) }
        attr_reader :pl
        # Attribute for field pt
        sig { returns(Pt) }
        attr_reader :pt
        # Attribute for field ro
        sig { returns(Ro) }
        attr_reader :ro
        # Attribute for field rs
        sig { returns(Rs) }
        attr_reader :rs
        # Attribute for field ru
        sig { returns(Ru) }
        attr_reader :ru
        # Attribute for field sa
        sig { returns(Sa) }
        attr_reader :sa
        # Attribute for field se
        sig { returns(Se) }
        attr_reader :se
        # Attribute for field sg
        sig { returns(Sg) }
        attr_reader :sg
        # Attribute for field si
        sig { returns(Si) }
        attr_reader :si
        # Attribute for field sk
        sig { returns(Sk) }
        attr_reader :sk
        # Attribute for field th
        sig { returns(Th) }
        attr_reader :th
        # Attribute for field tr
        sig { returns(Tr) }
        attr_reader :tr
        # Attribute for field tz
        sig { returns(Tz) }
        attr_reader :tz
        # Attribute for field us
        sig { returns(Us) }
        attr_reader :us
        # Attribute for field uz
        sig { returns(Uz) }
        attr_reader :uz
        # Attribute for field vn
        sig { returns(Vn) }
        attr_reader :vn
        # Attribute for field za
        sig { returns(Za) }
        attr_reader :za
      end
      # Time at which the registration becomes active. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :active_from
      # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
      sig { returns(String) }
      attr_reader :country
      # Attribute for field country_options
      sig { returns(CountryOptions) }
      attr_reader :country_options
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # If set, the registration stops being active at this time. If not set, the registration will be active indefinitely. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :expires_at
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # The status of the registration. This field is present for convenience and can be deduced from `active_from` and `expires_at`.
      sig { returns(String) }
      attr_reader :status
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(String) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(Integer) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(String) }
        attr_accessor :starting_after
        # The status of the Tax Registration.
        sig { returns(String) }
        attr_accessor :status
        sig {
          params(ending_before: String, expand: T::Array[String], limit: Integer, starting_after: String, status: String).void
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
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::At::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::At::Standard, type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Au < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Be::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Be::Standard, type: String).void
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Bg::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Bg::Standard, type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Bh < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
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
              returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Ca::ProvinceStandard)
             }
            attr_accessor :province_standard
            # Type of registration to be created in Canada.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(province_standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Ca::ProvinceStandard, type: String).void
             }
            def initialize(province_standard: nil, type: nil); end
          end
          class Ch < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Cl < Stripe::RequestParams
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
          class Cy < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Cy::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Cy::Standard, type: String).void
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Cz::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Cz::Standard, type: String).void
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::De::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::De::Standard, type: String).void
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Dk::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Dk::Standard, type: String).void
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Ee::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Ee::Standard, type: String).void
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Es::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Es::Standard, type: String).void
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Fi::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Fi::Standard, type: String).void
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Fr::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Fr::Standard, type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Gb < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ge < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Gr::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Gr::Standard, type: String).void
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Hr::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Hr::Standard, type: String).void
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Hu::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Hu::Standard, type: String).void
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Ie::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Ie::Standard, type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Is < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::It::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::It::Standard, type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Jp < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Ke < Stripe::RequestParams
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
          class Lt < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Lt::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Lt::Standard, type: String).void
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Lu::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Lu::Standard, type: String).void
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Lv::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Lv::Standard, type: String).void
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
          class Mt < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              sig { returns(String) }
              attr_accessor :place_of_supply_scheme
              sig { params(place_of_supply_scheme: String).void }
              def initialize(place_of_supply_scheme: nil); end
            end
            # Options for the standard registration.
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Mt::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Mt::Standard, type: String).void
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Nl::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Nl::Standard, type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class No < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Nz < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          class Om < Stripe::RequestParams
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Pl::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Pl::Standard, type: String).void
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Pt::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Pt::Standard, type: String).void
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Ro::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Ro::Standard, type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Rs < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Se::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Se::Standard, type: String).void
             }
            def initialize(standard: nil, type: nil); end
          end
          class Sg < Stripe::RequestParams
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Si::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Si::Standard, type: String).void
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
            sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Sk::Standard) }
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(standard: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Sk::Standard, type: String).void
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
          class Us < Stripe::RequestParams
            class LocalAmusementTax < Stripe::RequestParams
              # A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction. Supported FIPS codes are: `14000` (Chicago), `06613` (Bloomington), `21696` (East Dundee), `24582` (Evanston), and `68081` (Schiller Park).
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
                sig { returns(String) }
                attr_accessor :jurisdiction
                # The type of the election for the state sales tax registration.
                sig { returns(String) }
                attr_accessor :type
                sig { params(jurisdiction: String, type: String).void }
                def initialize(jurisdiction: nil, type: nil); end
              end
              # Elections for the state sales tax registration.
              sig {
                returns(T::Array[::Stripe::Tax::Registration::CreateParams::CountryOptions::Us::StateSalesTax::Election])
               }
              attr_accessor :elections
              sig {
                params(elections: T::Array[::Stripe::Tax::Registration::CreateParams::CountryOptions::Us::StateSalesTax::Election]).void
               }
              def initialize(elections: nil); end
            end
            # Options for the local amusement tax registration.
            sig {
              returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Us::LocalAmusementTax)
             }
            attr_accessor :local_amusement_tax
            # Options for the local lease tax registration.
            sig {
              returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Us::LocalLeaseTax)
             }
            attr_accessor :local_lease_tax
            # Two-letter US state code ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
            sig { returns(String) }
            attr_accessor :state
            # Options for the state sales tax registration.
            sig {
              returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Us::StateSalesTax)
             }
            attr_accessor :state_sales_tax
            # Type of registration to be created in the US.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(local_amusement_tax: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Us::LocalAmusementTax, local_lease_tax: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Us::LocalLeaseTax, state: String, state_sales_tax: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Us::StateSalesTax, type: String).void
             }
            def initialize(
              local_amusement_tax: nil,
              local_lease_tax: nil,
              state: nil,
              state_sales_tax: nil,
              type: nil
            ); end
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
            # Type of registration to be created in `country`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(type: String).void }
            def initialize(type: nil); end
          end
          # Options for the registration in AE.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Ae) }
          attr_accessor :ae
          # Options for the registration in AT.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::At) }
          attr_accessor :at
          # Options for the registration in AU.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Au) }
          attr_accessor :au
          # Options for the registration in BE.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Be) }
          attr_accessor :be
          # Options for the registration in BG.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Bg) }
          attr_accessor :bg
          # Options for the registration in BH.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Bh) }
          attr_accessor :bh
          # Options for the registration in BY.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::By) }
          attr_accessor :by
          # Options for the registration in CA.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Ca) }
          attr_accessor :ca
          # Options for the registration in CH.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Ch) }
          attr_accessor :ch
          # Options for the registration in CL.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Cl) }
          attr_accessor :cl
          # Options for the registration in CO.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Co) }
          attr_accessor :co
          # Options for the registration in CR.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Cr) }
          attr_accessor :cr
          # Options for the registration in CY.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Cy) }
          attr_accessor :cy
          # Options for the registration in CZ.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Cz) }
          attr_accessor :cz
          # Options for the registration in DE.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::De) }
          attr_accessor :de
          # Options for the registration in DK.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Dk) }
          attr_accessor :dk
          # Options for the registration in EC.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Ec) }
          attr_accessor :ec
          # Options for the registration in EE.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Ee) }
          attr_accessor :ee
          # Options for the registration in EG.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Eg) }
          attr_accessor :eg
          # Options for the registration in ES.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Es) }
          attr_accessor :es
          # Options for the registration in FI.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Fi) }
          attr_accessor :fi
          # Options for the registration in FR.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Fr) }
          attr_accessor :fr
          # Options for the registration in GB.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Gb) }
          attr_accessor :gb
          # Options for the registration in GE.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Ge) }
          attr_accessor :ge
          # Options for the registration in GR.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Gr) }
          attr_accessor :gr
          # Options for the registration in HR.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Hr) }
          attr_accessor :hr
          # Options for the registration in HU.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Hu) }
          attr_accessor :hu
          # Options for the registration in ID.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Id) }
          attr_accessor :id
          # Options for the registration in IE.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Ie) }
          attr_accessor :ie
          # Options for the registration in IS.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Is) }
          attr_accessor :is
          # Options for the registration in IT.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::It) }
          attr_accessor :it
          # Options for the registration in JP.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Jp) }
          attr_accessor :jp
          # Options for the registration in KE.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Ke) }
          attr_accessor :ke
          # Options for the registration in KR.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Kr) }
          attr_accessor :kr
          # Options for the registration in KZ.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Kz) }
          attr_accessor :kz
          # Options for the registration in LT.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Lt) }
          attr_accessor :lt
          # Options for the registration in LU.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Lu) }
          attr_accessor :lu
          # Options for the registration in LV.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Lv) }
          attr_accessor :lv
          # Options for the registration in MA.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Ma) }
          attr_accessor :ma
          # Options for the registration in MD.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Md) }
          attr_accessor :md
          # Options for the registration in MT.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Mt) }
          attr_accessor :mt
          # Options for the registration in MX.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Mx) }
          attr_accessor :mx
          # Options for the registration in MY.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::My) }
          attr_accessor :my
          # Options for the registration in NG.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Ng) }
          attr_accessor :ng
          # Options for the registration in NL.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Nl) }
          attr_accessor :nl
          # Options for the registration in NO.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::No) }
          attr_accessor :no
          # Options for the registration in NZ.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Nz) }
          attr_accessor :nz
          # Options for the registration in OM.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Om) }
          attr_accessor :om
          # Options for the registration in PL.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Pl) }
          attr_accessor :pl
          # Options for the registration in PT.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Pt) }
          attr_accessor :pt
          # Options for the registration in RO.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Ro) }
          attr_accessor :ro
          # Options for the registration in RS.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Rs) }
          attr_accessor :rs
          # Options for the registration in RU.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Ru) }
          attr_accessor :ru
          # Options for the registration in SA.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Sa) }
          attr_accessor :sa
          # Options for the registration in SE.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Se) }
          attr_accessor :se
          # Options for the registration in SG.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Sg) }
          attr_accessor :sg
          # Options for the registration in SI.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Si) }
          attr_accessor :si
          # Options for the registration in SK.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Sk) }
          attr_accessor :sk
          # Options for the registration in TH.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Th) }
          attr_accessor :th
          # Options for the registration in TR.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Tr) }
          attr_accessor :tr
          # Options for the registration in TZ.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Tz) }
          attr_accessor :tz
          # Options for the registration in US.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Us) }
          attr_accessor :us
          # Options for the registration in UZ.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Uz) }
          attr_accessor :uz
          # Options for the registration in VN.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Vn) }
          attr_accessor :vn
          # Options for the registration in ZA.
          sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions::Za) }
          attr_accessor :za
          sig {
            params(ae: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Ae, at: ::Stripe::Tax::Registration::CreateParams::CountryOptions::At, au: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Au, be: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Be, bg: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Bg, bh: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Bh, by: ::Stripe::Tax::Registration::CreateParams::CountryOptions::By, ca: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Ca, ch: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Ch, cl: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Cl, co: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Co, cr: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Cr, cy: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Cy, cz: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Cz, de: ::Stripe::Tax::Registration::CreateParams::CountryOptions::De, dk: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Dk, ec: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Ec, ee: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Ee, eg: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Eg, es: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Es, fi: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Fi, fr: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Fr, gb: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Gb, ge: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Ge, gr: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Gr, hr: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Hr, hu: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Hu, id: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Id, ie: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Ie, is: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Is, it: ::Stripe::Tax::Registration::CreateParams::CountryOptions::It, jp: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Jp, ke: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Ke, kr: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Kr, kz: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Kz, lt: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Lt, lu: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Lu, lv: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Lv, ma: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Ma, md: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Md, mt: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Mt, mx: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Mx, my: ::Stripe::Tax::Registration::CreateParams::CountryOptions::My, ng: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Ng, nl: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Nl, no: ::Stripe::Tax::Registration::CreateParams::CountryOptions::No, nz: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Nz, om: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Om, pl: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Pl, pt: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Pt, ro: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Ro, rs: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Rs, ru: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Ru, sa: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Sa, se: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Se, sg: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Sg, si: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Si, sk: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Sk, th: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Th, tr: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Tr, tz: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Tz, us: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Us, uz: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Uz, vn: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Vn, za: ::Stripe::Tax::Registration::CreateParams::CountryOptions::Za).void
           }
          def initialize(
            ae: nil,
            at: nil,
            au: nil,
            be: nil,
            bg: nil,
            bh: nil,
            by: nil,
            ca: nil,
            ch: nil,
            cl: nil,
            co: nil,
            cr: nil,
            cy: nil,
            cz: nil,
            de: nil,
            dk: nil,
            ec: nil,
            ee: nil,
            eg: nil,
            es: nil,
            fi: nil,
            fr: nil,
            gb: nil,
            ge: nil,
            gr: nil,
            hr: nil,
            hu: nil,
            id: nil,
            ie: nil,
            is: nil,
            it: nil,
            jp: nil,
            ke: nil,
            kr: nil,
            kz: nil,
            lt: nil,
            lu: nil,
            lv: nil,
            ma: nil,
            md: nil,
            mt: nil,
            mx: nil,
            my: nil,
            ng: nil,
            nl: nil,
            no: nil,
            nz: nil,
            om: nil,
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
            th: nil,
            tr: nil,
            tz: nil,
            us: nil,
            uz: nil,
            vn: nil,
            za: nil
          ); end
        end
        # Time at which the Tax Registration becomes active. It can be either `now` to indicate the current time, or a future timestamp measured in seconds since the Unix epoch.
        sig { returns(T.any(String, Integer)) }
        attr_accessor :active_from
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(String) }
        attr_accessor :country
        # Specific options for a registration in the specified `country`.
        sig { returns(::Stripe::Tax::Registration::CreateParams::CountryOptions) }
        attr_accessor :country_options
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # If set, the Tax Registration stops being active at this time. If not set, the Tax Registration will be active indefinitely. Timestamp measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_accessor :expires_at
        sig {
          params(active_from: T.any(String, Integer), country: String, country_options: ::Stripe::Tax::Registration::CreateParams::CountryOptions, expand: T::Array[String], expires_at: Integer).void
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
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        # Time at which the registration becomes active. It can be either `now` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
        sig { returns(T.any(String, Integer)) }
        attr_accessor :active_from
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # If set, the registration stops being active at this time. If not set, the registration will be active indefinitely. It can be either `now` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
        sig { returns(T.nilable(T.any(String, Integer))) }
        attr_accessor :expires_at
        sig {
          params(active_from: T.any(String, Integer), expand: T::Array[String], expires_at: T.nilable(T.any(String, Integer))).void
         }
        def initialize(active_from: nil, expand: nil, expires_at: nil); end
      end
      # Creates a new Tax Registration object.
      sig {
        params(params: T.any(::Stripe::Tax::Registration::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Tax::Registration)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of Tax Registration objects.
      sig {
        params(params: T.any(::Stripe::Tax::Registration::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Updates an existing Tax Registration object.
      #
      # A registration cannot be deleted after it has been created. If you wish to end a registration you may do so by setting expires_at.
      sig {
        params(id: String, params: T.any(::Stripe::Tax::Registration::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Tax::Registration)
       }
      def self.update(id, params = {}, opts = {}); end
    end
  end
end