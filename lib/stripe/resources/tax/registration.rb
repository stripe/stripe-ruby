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
          attr_reader :type
        end

        class At < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Au < Stripe::StripeObject
          attr_reader :type
        end

        class Be < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Bg < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Bh < Stripe::StripeObject
          attr_reader :type
        end

        class By < Stripe::StripeObject
          attr_reader :type
        end

        class Ca < Stripe::StripeObject
          class ProvinceStandard < Stripe::StripeObject
            attr_reader :province
          end
          attr_reader :province_standard, :type
        end

        class Ch < Stripe::StripeObject
          attr_reader :type
        end

        class Cl < Stripe::StripeObject
          attr_reader :type
        end

        class Co < Stripe::StripeObject
          attr_reader :type
        end

        class Cr < Stripe::StripeObject
          attr_reader :type
        end

        class Cy < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Cz < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class De < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Dk < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Ec < Stripe::StripeObject
          attr_reader :type
        end

        class Ee < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Eg < Stripe::StripeObject
          attr_reader :type
        end

        class Es < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Fi < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Fr < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Gb < Stripe::StripeObject
          attr_reader :type
        end

        class Ge < Stripe::StripeObject
          attr_reader :type
        end

        class Gr < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Hr < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Hu < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Id < Stripe::StripeObject
          attr_reader :type
        end

        class Ie < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Is < Stripe::StripeObject
          attr_reader :type
        end

        class It < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Jp < Stripe::StripeObject
          attr_reader :type
        end

        class Ke < Stripe::StripeObject
          attr_reader :type
        end

        class Kr < Stripe::StripeObject
          attr_reader :type
        end

        class Kz < Stripe::StripeObject
          attr_reader :type
        end

        class Lt < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Lu < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Lv < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Ma < Stripe::StripeObject
          attr_reader :type
        end

        class Md < Stripe::StripeObject
          attr_reader :type
        end

        class Mt < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Mx < Stripe::StripeObject
          attr_reader :type
        end

        class My < Stripe::StripeObject
          attr_reader :type
        end

        class Ng < Stripe::StripeObject
          attr_reader :type
        end

        class Nl < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class No < Stripe::StripeObject
          attr_reader :type
        end

        class Nz < Stripe::StripeObject
          attr_reader :type
        end

        class Om < Stripe::StripeObject
          attr_reader :type
        end

        class Pl < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Pt < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Ro < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Rs < Stripe::StripeObject
          attr_reader :type
        end

        class Ru < Stripe::StripeObject
          attr_reader :type
        end

        class Sa < Stripe::StripeObject
          attr_reader :type
        end

        class Se < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Sg < Stripe::StripeObject
          attr_reader :type
        end

        class Si < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Sk < Stripe::StripeObject
          class Standard < Stripe::StripeObject
            attr_reader :place_of_supply_scheme
          end
          attr_reader :standard, :type
        end

        class Th < Stripe::StripeObject
          attr_reader :type
        end

        class Tr < Stripe::StripeObject
          attr_reader :type
        end

        class Tz < Stripe::StripeObject
          attr_reader :type
        end

        class Us < Stripe::StripeObject
          class LocalAmusementTax < Stripe::StripeObject
            attr_reader :jurisdiction
          end

          class LocalLeaseTax < Stripe::StripeObject
            attr_reader :jurisdiction
          end

          class StateSalesTax < Stripe::StripeObject
            class Election < Stripe::StripeObject
              attr_reader :jurisdiction, :type
            end
            attr_reader :elections
          end
          attr_reader :local_amusement_tax, :local_lease_tax, :state, :state_sales_tax, :type
        end

        class Uz < Stripe::StripeObject
          attr_reader :type
        end

        class Vn < Stripe::StripeObject
          attr_reader :type
        end

        class Za < Stripe::StripeObject
          attr_reader :type
        end
        attr_reader :ae, :at, :au, :be, :bg, :bh, :by, :ca, :ch, :cl, :co, :cr, :cy, :cz, :de, :dk, :ec, :ee, :eg, :es, :fi, :fr, :gb, :ge, :gr, :hr, :hu, :id, :ie, :is, :it, :jp, :ke, :kr, :kz, :lt, :lu, :lv, :ma, :md, :mt, :mx, :my, :ng, :nl, :no, :nz, :om, :pl, :pt, :ro, :rs, :ru, :sa, :se, :sg, :si, :sk, :th, :tr, :tz, :us, :uz, :vn, :za
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
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/tax/registrations",
          params: filters,
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
