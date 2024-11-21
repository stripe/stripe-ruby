# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    # A Configurations object represents how features should be configured for terminal readers.
    class Configuration < APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Delete
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "terminal.configuration"
      def self.object_name
        "terminal.configuration"
      end

      class BbposWiseposE < Stripe::StripeObject
        # A File ID representing an image you would like displayed on the reader.
        attr_reader :splashscreen
      end

      class Offline < Stripe::StripeObject
        # Determines whether to allow transactions to be collected while reader is offline. Defaults to false.
        attr_reader :enabled
      end

      class RebootWindow < Stripe::StripeObject
        # Integer between 0 to 23 that represents the end hour of the reboot time window. The value must be different than the start_hour.
        attr_reader :end_hour
        # Integer between 0 to 23 that represents the start hour of the reboot time window.
        attr_reader :start_hour
      end

      class StripeS700 < Stripe::StripeObject
        # A File ID representing an image you would like displayed on the reader.
        attr_reader :splashscreen
      end

      class Tipping < Stripe::StripeObject
        class Aud < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          attr_reader :smart_tip_threshold
        end

        class Cad < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          attr_reader :smart_tip_threshold
        end

        class Chf < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          attr_reader :smart_tip_threshold
        end

        class Czk < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          attr_reader :smart_tip_threshold
        end

        class Dkk < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          attr_reader :smart_tip_threshold
        end

        class Eur < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          attr_reader :smart_tip_threshold
        end

        class Gbp < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          attr_reader :smart_tip_threshold
        end

        class Hkd < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          attr_reader :smart_tip_threshold
        end

        class Myr < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          attr_reader :smart_tip_threshold
        end

        class Nok < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          attr_reader :smart_tip_threshold
        end

        class Nzd < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          attr_reader :smart_tip_threshold
        end

        class Pln < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          attr_reader :smart_tip_threshold
        end

        class Sek < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          attr_reader :smart_tip_threshold
        end

        class Sgd < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          attr_reader :smart_tip_threshold
        end

        class Usd < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          attr_reader :smart_tip_threshold
        end
        # Attribute for field aud
        attr_reader :aud
        # Attribute for field cad
        attr_reader :cad
        # Attribute for field chf
        attr_reader :chf
        # Attribute for field czk
        attr_reader :czk
        # Attribute for field dkk
        attr_reader :dkk
        # Attribute for field eur
        attr_reader :eur
        # Attribute for field gbp
        attr_reader :gbp
        # Attribute for field hkd
        attr_reader :hkd
        # Attribute for field myr
        attr_reader :myr
        # Attribute for field nok
        attr_reader :nok
        # Attribute for field nzd
        attr_reader :nzd
        # Attribute for field pln
        attr_reader :pln
        # Attribute for field sek
        attr_reader :sek
        # Attribute for field sgd
        attr_reader :sgd
        # Attribute for field usd
        attr_reader :usd
      end

      class VerifoneP400 < Stripe::StripeObject
        # A File ID representing an image you would like displayed on the reader.
        attr_reader :splashscreen
      end
      # Attribute for field bbpos_wisepos_e
      attr_reader :bbpos_wisepos_e

      # Unique identifier for the object.
      attr_reader :id

      # Whether this Configuration is the default for your account
      attr_reader :is_account_default

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode

      # String indicating the name of the Configuration object, set by the user
      attr_reader :name

      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      # Attribute for field offline
      attr_reader :offline

      # Attribute for field reboot_window
      attr_reader :reboot_window

      # Attribute for field stripe_s700
      attr_reader :stripe_s700

      # Attribute for field tipping
      attr_reader :tipping

      # Attribute for field verifone_p400
      attr_reader :verifone_p400

      # Always true for a deleted object
      attr_reader :deleted

      # Creates a new Configuration object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/terminal/configurations",
          params: params,
          opts: opts
        )
      end

      # Deletes a Configuration object.
      def self.delete(id, params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/terminal/configurations/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Deletes a Configuration object.
      def delete(params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/terminal/configurations/%<configuration>s", { configuration: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Returns a list of Configuration objects.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/terminal/configurations",
          params: filters,
          opts: opts
        )
      end

      # Updates a new Configuration object.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/configurations/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
