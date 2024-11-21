# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Terminal
    # A Configurations object represents how features should be configured for terminal readers.
    class Configuration < APIResource
      class BbposWiseposE < Stripe::StripeObject
        # A File ID representing an image you would like displayed on the reader.
        sig { returns(T.any(String, Stripe::File)) }
        attr_reader :splashscreen
      end
      class Offline < Stripe::StripeObject
        # Determines whether to allow transactions to be collected while reader is offline. Defaults to false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enabled
      end
      class RebootWindow < Stripe::StripeObject
        # Integer between 0 to 23 that represents the end hour of the reboot time window. The value must be different than the start_hour.
        sig { returns(Integer) }
        attr_reader :end_hour
        # Integer between 0 to 23 that represents the start hour of the reboot time window.
        sig { returns(Integer) }
        attr_reader :start_hour
      end
      class StripeS700 < Stripe::StripeObject
        # A File ID representing an image you would like displayed on the reader.
        sig { returns(T.any(String, Stripe::File)) }
        attr_reader :splashscreen
      end
      class Tipping < Stripe::StripeObject
        class Aud < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Cad < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Chf < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Czk < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Dkk < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Eur < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Gbp < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Hkd < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Myr < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Nok < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Nzd < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Pln < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Sek < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Sgd < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Usd < Stripe::StripeObject
          # Fixed amounts displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          # Percentages displayed when collecting a tip
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        # Attribute for field aud
        sig { returns(Aud) }
        attr_reader :aud
        # Attribute for field cad
        sig { returns(Cad) }
        attr_reader :cad
        # Attribute for field chf
        sig { returns(Chf) }
        attr_reader :chf
        # Attribute for field czk
        sig { returns(Czk) }
        attr_reader :czk
        # Attribute for field dkk
        sig { returns(Dkk) }
        attr_reader :dkk
        # Attribute for field eur
        sig { returns(Eur) }
        attr_reader :eur
        # Attribute for field gbp
        sig { returns(Gbp) }
        attr_reader :gbp
        # Attribute for field hkd
        sig { returns(Hkd) }
        attr_reader :hkd
        # Attribute for field myr
        sig { returns(Myr) }
        attr_reader :myr
        # Attribute for field nok
        sig { returns(Nok) }
        attr_reader :nok
        # Attribute for field nzd
        sig { returns(Nzd) }
        attr_reader :nzd
        # Attribute for field pln
        sig { returns(Pln) }
        attr_reader :pln
        # Attribute for field sek
        sig { returns(Sek) }
        attr_reader :sek
        # Attribute for field sgd
        sig { returns(Sgd) }
        attr_reader :sgd
        # Attribute for field usd
        sig { returns(Usd) }
        attr_reader :usd
      end
      class VerifoneP400 < Stripe::StripeObject
        # A File ID representing an image you would like displayed on the reader.
        sig { returns(T.any(String, Stripe::File)) }
        attr_reader :splashscreen
      end
      # Attribute for field bbpos_wisepos_e
      sig { returns(BbposWiseposE) }
      attr_reader :bbpos_wisepos_e

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Whether this Configuration is the default for your account
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_account_default

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # String indicating the name of the Configuration object, set by the user
      sig { returns(T.nilable(String)) }
      attr_reader :name

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # Attribute for field offline
      sig { returns(Offline) }
      attr_reader :offline

      # Attribute for field reboot_window
      sig { returns(RebootWindow) }
      attr_reader :reboot_window

      # Attribute for field stripe_s700
      sig { returns(StripeS700) }
      attr_reader :stripe_s700

      # Attribute for field tipping
      sig { returns(Tipping) }
      attr_reader :tipping

      # Attribute for field verifone_p400
      sig { returns(VerifoneP400) }
      attr_reader :verifone_p400

      # Always true for a deleted object
      sig { returns(T::Boolean) }
      attr_reader :deleted
    end
  end
end