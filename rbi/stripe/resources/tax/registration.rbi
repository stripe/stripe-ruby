# File generated from our OpenAPI spec
# frozen_string_literal: true

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
          sig { returns(String) }
          attr_reader :type
        end
        class At < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Au < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Be < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Bg < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Bh < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class By < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Ca < Stripe::StripeObject
          class ProvinceStandard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :province
          end
          sig { returns(ProvinceStandard) }
          attr_reader :province_standard
          sig { returns(String) }
          attr_reader :type
        end
        class Ch < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Cl < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Co < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Cr < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Cy < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Cz < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class De < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Dk < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Ec < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Ee < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Eg < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Es < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Fi < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Fr < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Gb < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Ge < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Gr < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Hr < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Hu < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Id < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Ie < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Is < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class It < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Jp < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Ke < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Kr < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Kz < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Lt < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Lu < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Lv < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Ma < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Md < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Mt < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Mx < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class My < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Ng < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Nl < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class No < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Nz < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Om < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Pl < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Pt < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Ro < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Rs < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Ru < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Sa < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Se < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Sg < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Si < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Sk < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :place_of_supply_scheme
          end
          sig { returns(Standard) }
          attr_reader :standard
          sig { returns(String) }
          attr_reader :type
        end
        class Th < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Tr < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Tz < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Us < Stripe::StripeObject
          class LocalAmusementTax < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :jurisdiction
          end
          class LocalLeaseTax < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :jurisdiction
          end
          class StateSalesTax < Stripe::StripeObject
            class Election < Stripe::StripeObject
              sig { returns(String) }
              attr_reader :jurisdiction
              sig { returns(String) }
              attr_reader :type
            end
            sig { returns(T::Array[Election]) }
            attr_reader :elections
          end
          sig { returns(LocalAmusementTax) }
          attr_reader :local_amusement_tax
          sig { returns(LocalLeaseTax) }
          attr_reader :local_lease_tax
          sig { returns(String) }
          attr_reader :state
          sig { returns(StateSalesTax) }
          attr_reader :state_sales_tax
          sig { returns(String) }
          attr_reader :type
        end
        class Uz < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Vn < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        class Za < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(Ae) }
        attr_reader :ae
        sig { returns(At) }
        attr_reader :at
        sig { returns(Au) }
        attr_reader :au
        sig { returns(Be) }
        attr_reader :be
        sig { returns(Bg) }
        attr_reader :bg
        sig { returns(Bh) }
        attr_reader :bh
        sig { returns(By) }
        attr_reader :by
        sig { returns(Ca) }
        attr_reader :ca
        sig { returns(Ch) }
        attr_reader :ch
        sig { returns(Cl) }
        attr_reader :cl
        sig { returns(Co) }
        attr_reader :co
        sig { returns(Cr) }
        attr_reader :cr
        sig { returns(Cy) }
        attr_reader :cy
        sig { returns(Cz) }
        attr_reader :cz
        sig { returns(De) }
        attr_reader :de
        sig { returns(Dk) }
        attr_reader :dk
        sig { returns(Ec) }
        attr_reader :ec
        sig { returns(Ee) }
        attr_reader :ee
        sig { returns(Eg) }
        attr_reader :eg
        sig { returns(Es) }
        attr_reader :es
        sig { returns(Fi) }
        attr_reader :fi
        sig { returns(Fr) }
        attr_reader :fr
        sig { returns(Gb) }
        attr_reader :gb
        sig { returns(Ge) }
        attr_reader :ge
        sig { returns(Gr) }
        attr_reader :gr
        sig { returns(Hr) }
        attr_reader :hr
        sig { returns(Hu) }
        attr_reader :hu
        sig { returns(Id) }
        attr_reader :id
        sig { returns(Ie) }
        attr_reader :ie
        sig { returns(Is) }
        attr_reader :is
        sig { returns(It) }
        attr_reader :it
        sig { returns(Jp) }
        attr_reader :jp
        sig { returns(Ke) }
        attr_reader :ke
        sig { returns(Kr) }
        attr_reader :kr
        sig { returns(Kz) }
        attr_reader :kz
        sig { returns(Lt) }
        attr_reader :lt
        sig { returns(Lu) }
        attr_reader :lu
        sig { returns(Lv) }
        attr_reader :lv
        sig { returns(Ma) }
        attr_reader :ma
        sig { returns(Md) }
        attr_reader :md
        sig { returns(Mt) }
        attr_reader :mt
        sig { returns(Mx) }
        attr_reader :mx
        sig { returns(My) }
        attr_reader :my
        sig { returns(Ng) }
        attr_reader :ng
        sig { returns(Nl) }
        attr_reader :nl
        sig { returns(No) }
        attr_reader :no
        sig { returns(Nz) }
        attr_reader :nz
        sig { returns(Om) }
        attr_reader :om
        sig { returns(Pl) }
        attr_reader :pl
        sig { returns(Pt) }
        attr_reader :pt
        sig { returns(Ro) }
        attr_reader :ro
        sig { returns(Rs) }
        attr_reader :rs
        sig { returns(Ru) }
        attr_reader :ru
        sig { returns(Sa) }
        attr_reader :sa
        sig { returns(Se) }
        attr_reader :se
        sig { returns(Sg) }
        attr_reader :sg
        sig { returns(Si) }
        attr_reader :si
        sig { returns(Sk) }
        attr_reader :sk
        sig { returns(Th) }
        attr_reader :th
        sig { returns(Tr) }
        attr_reader :tr
        sig { returns(Tz) }
        attr_reader :tz
        sig { returns(Us) }
        attr_reader :us
        sig { returns(Uz) }
        attr_reader :uz
        sig { returns(Vn) }
        attr_reader :vn
        sig { returns(Za) }
        attr_reader :za
      end
      sig { returns(Integer) }
      # Time at which the registration becomes active. Measured in seconds since the Unix epoch.
      attr_reader :active_from
      sig { returns(String) }
      # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
      attr_reader :country
      sig { returns(CountryOptions) }
      # Attribute for field country_options
      attr_reader :country_options
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(T.nilable(Integer)) }
      # If set, the registration stops being active at this time. If not set, the registration will be active indefinitely. Measured in seconds since the Unix epoch.
      attr_reader :expires_at
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # The status of the registration. This field is present for convenience and can be deduced from `active_from` and `expires_at`.
      attr_reader :status
    end
  end
end