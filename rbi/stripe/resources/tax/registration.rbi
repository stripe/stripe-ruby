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
    end
  end
end