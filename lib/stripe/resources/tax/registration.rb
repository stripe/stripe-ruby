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
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "tax.registration"
      def self.object_name
        "tax.registration"
      end

      class CountryOptions < Stripe::StripeObject
        class Ae < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Al < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Am < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Ao < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class At < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Au < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Aw < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Az < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Ba < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Bb < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Bd < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Be < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Bf < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Bg < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Bh < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Bj < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Bs < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class By < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Ca < Stripe::StripeObject
          class ProvinceStandard < Stripe::StripeObject
            # Two-letter CA province code ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
            attr_reader :province
          end
          # Attribute for field province_standard
          attr_reader :province_standard
          # Type of registration in Canada.
          attr_reader :type
        end

        class Cd < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Ch < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Cl < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Cm < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Co < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Cr < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Cv < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Cy < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Cz < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class De < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Dk < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Ec < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Ee < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Eg < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Es < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Et < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Fi < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Fr < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Gb < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Ge < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Gn < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Gr < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Hr < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Hu < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Id < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Ie < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class In < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Is < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class It < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Jp < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Ke < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Kg < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Kh < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Kr < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Kz < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class La < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Lt < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Lu < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Lv < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Ma < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Md < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Me < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Mk < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Mr < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Mt < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Mx < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class My < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Ng < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Nl < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class No < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Np < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Nz < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Om < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Pe < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Ph < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Pl < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Pt < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Ro < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Rs < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Ru < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Sa < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Se < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Sg < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Si < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Sk < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            # Place of supply scheme used in an EU standard registration.
            attr_reader :place_of_supply_scheme
          end
          # Attribute for field standard
          attr_reader :standard
          # Type of registration in an EU country.
          attr_reader :type
        end

        class Sn < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Sr < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Th < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Tj < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Tr < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Tz < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Ug < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Us < Stripe::StripeObject
          class LocalAmusementTax < Stripe::StripeObject
            # A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction.
            attr_reader :jurisdiction
          end

          class LocalLeaseTax < Stripe::StripeObject
            # A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction.
            attr_reader :jurisdiction
          end

          class StateSalesTax < Stripe::StripeObject
            class Election < Stripe::StripeObject
              # A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction.
              attr_reader :jurisdiction
              # The type of the election for the state sales tax registration.
              attr_reader :type
            end
            # Elections for the state sales tax registration.
            attr_reader :elections
          end
          # Attribute for field local_amusement_tax
          attr_reader :local_amusement_tax
          # Attribute for field local_lease_tax
          attr_reader :local_lease_tax
          # Two-letter US state code ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
          attr_reader :state
          # Attribute for field state_sales_tax
          attr_reader :state_sales_tax
          # Type of registration in the US.
          attr_reader :type
        end

        class Uy < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Uz < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Vn < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Za < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Zm < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end

        class Zw < Stripe::StripeObject
          # Type of registration in `country`.
          attr_reader :type
        end
        # Attribute for field ae
        attr_reader :ae
        # Attribute for field al
        attr_reader :al
        # Attribute for field am
        attr_reader :am
        # Attribute for field ao
        attr_reader :ao
        # Attribute for field at
        attr_reader :at
        # Attribute for field au
        attr_reader :au
        # Attribute for field aw
        attr_reader :aw
        # Attribute for field az
        attr_reader :az
        # Attribute for field ba
        attr_reader :ba
        # Attribute for field bb
        attr_reader :bb
        # Attribute for field bd
        attr_reader :bd
        # Attribute for field be
        attr_reader :be
        # Attribute for field bf
        attr_reader :bf
        # Attribute for field bg
        attr_reader :bg
        # Attribute for field bh
        attr_reader :bh
        # Attribute for field bj
        attr_reader :bj
        # Attribute for field bs
        attr_reader :bs
        # Attribute for field by
        attr_reader :by
        # Attribute for field ca
        attr_reader :ca
        # Attribute for field cd
        attr_reader :cd
        # Attribute for field ch
        attr_reader :ch
        # Attribute for field cl
        attr_reader :cl
        # Attribute for field cm
        attr_reader :cm
        # Attribute for field co
        attr_reader :co
        # Attribute for field cr
        attr_reader :cr
        # Attribute for field cv
        attr_reader :cv
        # Attribute for field cy
        attr_reader :cy
        # Attribute for field cz
        attr_reader :cz
        # Attribute for field de
        attr_reader :de
        # Attribute for field dk
        attr_reader :dk
        # Attribute for field ec
        attr_reader :ec
        # Attribute for field ee
        attr_reader :ee
        # Attribute for field eg
        attr_reader :eg
        # Attribute for field es
        attr_reader :es
        # Attribute for field et
        attr_reader :et
        # Attribute for field fi
        attr_reader :fi
        # Attribute for field fr
        attr_reader :fr
        # Attribute for field gb
        attr_reader :gb
        # Attribute for field ge
        attr_reader :ge
        # Attribute for field gn
        attr_reader :gn
        # Attribute for field gr
        attr_reader :gr
        # Attribute for field hr
        attr_reader :hr
        # Attribute for field hu
        attr_reader :hu
        # Attribute for field id
        attr_reader :id
        # Attribute for field ie
        attr_reader :ie
        # Attribute for field in
        attr_reader :in
        # Attribute for field is
        attr_reader :is
        # Attribute for field it
        attr_reader :it
        # Attribute for field jp
        attr_reader :jp
        # Attribute for field ke
        attr_reader :ke
        # Attribute for field kg
        attr_reader :kg
        # Attribute for field kh
        attr_reader :kh
        # Attribute for field kr
        attr_reader :kr
        # Attribute for field kz
        attr_reader :kz
        # Attribute for field la
        attr_reader :la
        # Attribute for field lt
        attr_reader :lt
        # Attribute for field lu
        attr_reader :lu
        # Attribute for field lv
        attr_reader :lv
        # Attribute for field ma
        attr_reader :ma
        # Attribute for field md
        attr_reader :md
        # Attribute for field me
        attr_reader :me
        # Attribute for field mk
        attr_reader :mk
        # Attribute for field mr
        attr_reader :mr
        # Attribute for field mt
        attr_reader :mt
        # Attribute for field mx
        attr_reader :mx
        # Attribute for field my
        attr_reader :my
        # Attribute for field ng
        attr_reader :ng
        # Attribute for field nl
        attr_reader :nl
        # Attribute for field no
        attr_reader :no
        # Attribute for field np
        attr_reader :np
        # Attribute for field nz
        attr_reader :nz
        # Attribute for field om
        attr_reader :om
        # Attribute for field pe
        attr_reader :pe
        # Attribute for field ph
        attr_reader :ph
        # Attribute for field pl
        attr_reader :pl
        # Attribute for field pt
        attr_reader :pt
        # Attribute for field ro
        attr_reader :ro
        # Attribute for field rs
        attr_reader :rs
        # Attribute for field ru
        attr_reader :ru
        # Attribute for field sa
        attr_reader :sa
        # Attribute for field se
        attr_reader :se
        # Attribute for field sg
        attr_reader :sg
        # Attribute for field si
        attr_reader :si
        # Attribute for field sk
        attr_reader :sk
        # Attribute for field sn
        attr_reader :sn
        # Attribute for field sr
        attr_reader :sr
        # Attribute for field th
        attr_reader :th
        # Attribute for field tj
        attr_reader :tj
        # Attribute for field tr
        attr_reader :tr
        # Attribute for field tz
        attr_reader :tz
        # Attribute for field ug
        attr_reader :ug
        # Attribute for field us
        attr_reader :us
        # Attribute for field uy
        attr_reader :uy
        # Attribute for field uz
        attr_reader :uz
        # Attribute for field vn
        attr_reader :vn
        # Attribute for field za
        attr_reader :za
        # Attribute for field zm
        attr_reader :zm
        # Attribute for field zw
        attr_reader :zw
      end

      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # The status of the Tax Registration.
        attr_accessor :status

        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        )
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
          @status = status
        end
      end

      class CreateParams < Stripe::RequestParams
        class CountryOptions < Stripe::RequestParams
          class Ae < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Al < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Am < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Ao < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class At < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Au < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Aw < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Az < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Ba < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Bb < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Bd < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Be < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Bf < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Bg < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Bh < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Bj < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Bs < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class By < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Ca < Stripe::RequestParams
            class ProvinceStandard < Stripe::RequestParams
              # Two-letter CA province code ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
              attr_accessor :province

              def initialize(province: nil)
                @province = province
              end
            end
            # Options for the provincial tax registration.
            attr_accessor :province_standard
            # Type of registration to be created in Canada.
            attr_accessor :type

            def initialize(province_standard: nil, type: nil)
              @province_standard = province_standard
              @type = type
            end
          end

          class Cd < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Ch < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Cl < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Cm < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Co < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Cr < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Cv < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Cy < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Cz < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class De < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Dk < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Ec < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Ee < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Eg < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Es < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Et < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Fi < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Fr < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Gb < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Ge < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Gn < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Gr < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Hr < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Hu < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Id < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Ie < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class In < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Is < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class It < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Jp < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Ke < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Kg < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Kh < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Kr < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Kz < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class La < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Lt < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Lu < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Lv < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Ma < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Md < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Me < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Mk < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Mr < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Mt < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Mx < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class My < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Ng < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Nl < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class No < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Np < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Nz < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Om < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Pe < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Ph < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Pl < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Pt < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Ro < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Rs < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Ru < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Sa < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Se < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Sg < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Si < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Sk < Stripe::RequestParams
            class Standard < Stripe::RequestParams
              # Place of supply scheme used in an EU standard registration.
              attr_accessor :place_of_supply_scheme

              def initialize(place_of_supply_scheme: nil)
                @place_of_supply_scheme = place_of_supply_scheme
              end
            end
            # Options for the standard registration.
            attr_accessor :standard
            # Type of registration to be created in an EU country.
            attr_accessor :type

            def initialize(standard: nil, type: nil)
              @standard = standard
              @type = type
            end
          end

          class Sn < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Sr < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Th < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Tj < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Tr < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Tz < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Ug < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Us < Stripe::RequestParams
            class LocalAmusementTax < Stripe::RequestParams
              # A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction. Supported FIPS codes are: `14000` (Chicago), `06613` (Bloomington), `21696` (East Dundee), `24582` (Evanston), `45421` (Lynwood), `64343` (River Grove), and `68081` (Schiller Park).
              attr_accessor :jurisdiction

              def initialize(jurisdiction: nil)
                @jurisdiction = jurisdiction
              end
            end

            class LocalLeaseTax < Stripe::RequestParams
              # A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction. Supported FIPS codes are: `14000` (Chicago).
              attr_accessor :jurisdiction

              def initialize(jurisdiction: nil)
                @jurisdiction = jurisdiction
              end
            end

            class StateSalesTax < Stripe::RequestParams
              class Election < Stripe::RequestParams
                # A [FIPS code](https://www.census.gov/library/reference/code-lists/ansi.html) representing the local jurisdiction. Supported FIPS codes are: `003` (Allegheny County) and `60000` (Philadelphia City).
                attr_accessor :jurisdiction
                # The type of the election for the state sales tax registration.
                attr_accessor :type

                def initialize(jurisdiction: nil, type: nil)
                  @jurisdiction = jurisdiction
                  @type = type
                end
              end
              # Elections for the state sales tax registration.
              attr_accessor :elections

              def initialize(elections: nil)
                @elections = elections
              end
            end
            # Options for the local amusement tax registration.
            attr_accessor :local_amusement_tax
            # Options for the local lease tax registration.
            attr_accessor :local_lease_tax
            # Two-letter US state code ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
            attr_accessor :state
            # Options for the state sales tax registration.
            attr_accessor :state_sales_tax
            # Type of registration to be created in the US.
            attr_accessor :type

            def initialize(
              local_amusement_tax: nil,
              local_lease_tax: nil,
              state: nil,
              state_sales_tax: nil,
              type: nil
            )
              @local_amusement_tax = local_amusement_tax
              @local_lease_tax = local_lease_tax
              @state = state
              @state_sales_tax = state_sales_tax
              @type = type
            end
          end

          class Uy < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Uz < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Vn < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Za < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Zm < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Zw < Stripe::RequestParams
            # Type of registration to be created in `country`.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end
          # Options for the registration in AE.
          attr_accessor :ae
          # Options for the registration in AL.
          attr_accessor :al
          # Options for the registration in AM.
          attr_accessor :am
          # Options for the registration in AO.
          attr_accessor :ao
          # Options for the registration in AT.
          attr_accessor :at
          # Options for the registration in AU.
          attr_accessor :au
          # Options for the registration in AW.
          attr_accessor :aw
          # Options for the registration in AZ.
          attr_accessor :az
          # Options for the registration in BA.
          attr_accessor :ba
          # Options for the registration in BB.
          attr_accessor :bb
          # Options for the registration in BD.
          attr_accessor :bd
          # Options for the registration in BE.
          attr_accessor :be
          # Options for the registration in BF.
          attr_accessor :bf
          # Options for the registration in BG.
          attr_accessor :bg
          # Options for the registration in BH.
          attr_accessor :bh
          # Options for the registration in BJ.
          attr_accessor :bj
          # Options for the registration in BS.
          attr_accessor :bs
          # Options for the registration in BY.
          attr_accessor :by
          # Options for the registration in CA.
          attr_accessor :ca
          # Options for the registration in CD.
          attr_accessor :cd
          # Options for the registration in CH.
          attr_accessor :ch
          # Options for the registration in CL.
          attr_accessor :cl
          # Options for the registration in CM.
          attr_accessor :cm
          # Options for the registration in CO.
          attr_accessor :co
          # Options for the registration in CR.
          attr_accessor :cr
          # Options for the registration in CV.
          attr_accessor :cv
          # Options for the registration in CY.
          attr_accessor :cy
          # Options for the registration in CZ.
          attr_accessor :cz
          # Options for the registration in DE.
          attr_accessor :de
          # Options for the registration in DK.
          attr_accessor :dk
          # Options for the registration in EC.
          attr_accessor :ec
          # Options for the registration in EE.
          attr_accessor :ee
          # Options for the registration in EG.
          attr_accessor :eg
          # Options for the registration in ES.
          attr_accessor :es
          # Options for the registration in ET.
          attr_accessor :et
          # Options for the registration in FI.
          attr_accessor :fi
          # Options for the registration in FR.
          attr_accessor :fr
          # Options for the registration in GB.
          attr_accessor :gb
          # Options for the registration in GE.
          attr_accessor :ge
          # Options for the registration in GN.
          attr_accessor :gn
          # Options for the registration in GR.
          attr_accessor :gr
          # Options for the registration in HR.
          attr_accessor :hr
          # Options for the registration in HU.
          attr_accessor :hu
          # Options for the registration in ID.
          attr_accessor :id
          # Options for the registration in IE.
          attr_accessor :ie
          # Options for the registration in IN.
          attr_accessor :in
          # Options for the registration in IS.
          attr_accessor :is
          # Options for the registration in IT.
          attr_accessor :it
          # Options for the registration in JP.
          attr_accessor :jp
          # Options for the registration in KE.
          attr_accessor :ke
          # Options for the registration in KG.
          attr_accessor :kg
          # Options for the registration in KH.
          attr_accessor :kh
          # Options for the registration in KR.
          attr_accessor :kr
          # Options for the registration in KZ.
          attr_accessor :kz
          # Options for the registration in LA.
          attr_accessor :la
          # Options for the registration in LT.
          attr_accessor :lt
          # Options for the registration in LU.
          attr_accessor :lu
          # Options for the registration in LV.
          attr_accessor :lv
          # Options for the registration in MA.
          attr_accessor :ma
          # Options for the registration in MD.
          attr_accessor :md
          # Options for the registration in ME.
          attr_accessor :me
          # Options for the registration in MK.
          attr_accessor :mk
          # Options for the registration in MR.
          attr_accessor :mr
          # Options for the registration in MT.
          attr_accessor :mt
          # Options for the registration in MX.
          attr_accessor :mx
          # Options for the registration in MY.
          attr_accessor :my
          # Options for the registration in NG.
          attr_accessor :ng
          # Options for the registration in NL.
          attr_accessor :nl
          # Options for the registration in NO.
          attr_accessor :no
          # Options for the registration in NP.
          attr_accessor :np
          # Options for the registration in NZ.
          attr_accessor :nz
          # Options for the registration in OM.
          attr_accessor :om
          # Options for the registration in PE.
          attr_accessor :pe
          # Options for the registration in PH.
          attr_accessor :ph
          # Options for the registration in PL.
          attr_accessor :pl
          # Options for the registration in PT.
          attr_accessor :pt
          # Options for the registration in RO.
          attr_accessor :ro
          # Options for the registration in RS.
          attr_accessor :rs
          # Options for the registration in RU.
          attr_accessor :ru
          # Options for the registration in SA.
          attr_accessor :sa
          # Options for the registration in SE.
          attr_accessor :se
          # Options for the registration in SG.
          attr_accessor :sg
          # Options for the registration in SI.
          attr_accessor :si
          # Options for the registration in SK.
          attr_accessor :sk
          # Options for the registration in SN.
          attr_accessor :sn
          # Options for the registration in SR.
          attr_accessor :sr
          # Options for the registration in TH.
          attr_accessor :th
          # Options for the registration in TJ.
          attr_accessor :tj
          # Options for the registration in TR.
          attr_accessor :tr
          # Options for the registration in TZ.
          attr_accessor :tz
          # Options for the registration in UG.
          attr_accessor :ug
          # Options for the registration in US.
          attr_accessor :us
          # Options for the registration in UY.
          attr_accessor :uy
          # Options for the registration in UZ.
          attr_accessor :uz
          # Options for the registration in VN.
          attr_accessor :vn
          # Options for the registration in ZA.
          attr_accessor :za
          # Options for the registration in ZM.
          attr_accessor :zm
          # Options for the registration in ZW.
          attr_accessor :zw

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
            ug: nil,
            us: nil,
            uy: nil,
            uz: nil,
            vn: nil,
            za: nil,
            zm: nil,
            zw: nil
          )
            @ae = ae
            @al = al
            @am = am
            @ao = ao
            @at = at
            @au = au
            @aw = aw
            @az = az
            @ba = ba
            @bb = bb
            @bd = bd
            @be = be
            @bf = bf
            @bg = bg
            @bh = bh
            @bj = bj
            @bs = bs
            @by = by
            @ca = ca
            @cd = cd
            @ch = ch
            @cl = cl
            @cm = cm
            @co = co
            @cr = cr
            @cv = cv
            @cy = cy
            @cz = cz
            @de = de
            @dk = dk
            @ec = ec
            @ee = ee
            @eg = eg
            @es = es
            @et = et
            @fi = fi
            @fr = fr
            @gb = gb
            @ge = ge
            @gn = gn
            @gr = gr
            @hr = hr
            @hu = hu
            @id = id
            @ie = ie
            @in = in_
            @is = is
            @it = it
            @jp = jp
            @ke = ke
            @kg = kg
            @kh = kh
            @kr = kr
            @kz = kz
            @la = la
            @lt = lt
            @lu = lu
            @lv = lv
            @ma = ma
            @md = md
            @me = me
            @mk = mk
            @mr = mr
            @mt = mt
            @mx = mx
            @my = my
            @ng = ng
            @nl = nl
            @no = no
            @np = np
            @nz = nz
            @om = om
            @pe = pe
            @ph = ph
            @pl = pl
            @pt = pt
            @ro = ro
            @rs = rs
            @ru = ru
            @sa = sa
            @se = se
            @sg = sg
            @si = si
            @sk = sk
            @sn = sn
            @sr = sr
            @th = th
            @tj = tj
            @tr = tr
            @tz = tz
            @ug = ug
            @us = us
            @uy = uy
            @uz = uz
            @vn = vn
            @za = za
            @zm = zm
            @zw = zw
          end
        end
        # Time at which the Tax Registration becomes active. It can be either `now` to indicate the current time, or a future timestamp measured in seconds since the Unix epoch.
        attr_accessor :active_from
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_accessor :country
        # Specific options for a registration in the specified `country`.
        attr_accessor :country_options
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # If set, the Tax Registration stops being active at this time. If not set, the Tax Registration will be active indefinitely. Timestamp measured in seconds since the Unix epoch.
        attr_accessor :expires_at

        def initialize(
          active_from: nil,
          country: nil,
          country_options: nil,
          expand: nil,
          expires_at: nil
        )
          @active_from = active_from
          @country = country
          @country_options = country_options
          @expand = expand
          @expires_at = expires_at
        end
      end

      class UpdateParams < Stripe::RequestParams
        # Time at which the registration becomes active. It can be either `now` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
        attr_accessor :active_from
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # If set, the registration stops being active at this time. If not set, the registration will be active indefinitely. It can be either `now` to indicate the current time, or a timestamp measured in seconds since the Unix epoch.
        attr_accessor :expires_at

        def initialize(active_from: nil, expand: nil, expires_at: nil)
          @active_from = active_from
          @expand = expand
          @expires_at = expires_at
        end
      end
      # Time at which the registration becomes active. Measured in seconds since the Unix epoch.
      attr_reader :active_from
      # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
      attr_reader :country
      # Attribute for field country_options
      attr_reader :country_options
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # If set, the registration stops being active at this time. If not set, the registration will be active indefinitely. Measured in seconds since the Unix epoch.
      attr_reader :expires_at
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The status of the registration. This field is present for convenience and can be deduced from `active_from` and `expires_at`.
      attr_reader :status

      # Creates a new Tax Registration object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/tax/registrations",
          params: params,
          opts: opts
        )
      end

      # Returns a list of Tax Registration objects.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/tax/registrations",
          params: params,
          opts: opts
        )
      end

      # Updates an existing Tax Registration object.
      #
      # A registration cannot be deleted after it has been created. If you wish to end a registration you may do so by setting expires_at.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/tax/registrations/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
