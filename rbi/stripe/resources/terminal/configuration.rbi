# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    # A Configurations object represents how features should be configured for terminal readers.
    class Configuration < APIResource
      class BbposWiseposE < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::File)) }
        attr_reader :splashscreen
      end
      class Offline < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enabled
      end
      class RebootWindow < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :end_hour
        sig { returns(Integer) }
        attr_reader :start_hour
      end
      class StripeS700 < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::File)) }
        attr_reader :splashscreen
      end
      class Tipping < Stripe::StripeObject
        class Aud < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Cad < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Chf < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Czk < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Dkk < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Eur < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Gbp < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Hkd < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Myr < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Nok < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Nzd < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Pln < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Sek < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Sgd < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        class Usd < Stripe::StripeObject
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :fixed_amounts
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :percentages
          sig { returns(Integer) }
          attr_reader :smart_tip_threshold
        end
        sig { returns(Aud) }
        attr_reader :aud
        sig { returns(Cad) }
        attr_reader :cad
        sig { returns(Chf) }
        attr_reader :chf
        sig { returns(Czk) }
        attr_reader :czk
        sig { returns(Dkk) }
        attr_reader :dkk
        sig { returns(Eur) }
        attr_reader :eur
        sig { returns(Gbp) }
        attr_reader :gbp
        sig { returns(Hkd) }
        attr_reader :hkd
        sig { returns(Myr) }
        attr_reader :myr
        sig { returns(Nok) }
        attr_reader :nok
        sig { returns(Nzd) }
        attr_reader :nzd
        sig { returns(Pln) }
        attr_reader :pln
        sig { returns(Sek) }
        attr_reader :sek
        sig { returns(Sgd) }
        attr_reader :sgd
        sig { returns(Usd) }
        attr_reader :usd
      end
      class VerifoneP400 < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::File)) }
        attr_reader :splashscreen
      end
      sig { returns(BbposWiseposE) }
      # Attribute for field bbpos_wisepos_e
      attr_reader :bbpos_wisepos_e
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T.nilable(T::Boolean)) }
      # Whether this Configuration is the default for your account
      attr_reader :is_account_default
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T.nilable(String)) }
      # String indicating the name of the Configuration object, set by the user
      attr_reader :name
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(Offline) }
      # Attribute for field offline
      attr_reader :offline
      sig { returns(RebootWindow) }
      # Attribute for field reboot_window
      attr_reader :reboot_window
      sig { returns(StripeS700) }
      # Attribute for field stripe_s700
      attr_reader :stripe_s700
      sig { returns(Tipping) }
      # Attribute for field tipping
      attr_reader :tipping
      sig { returns(VerifoneP400) }
      # Attribute for field verifone_p400
      attr_reader :verifone_p400
      sig { returns(T::Boolean) }
      # Always true for a deleted object
      attr_reader :deleted
    end
  end
end