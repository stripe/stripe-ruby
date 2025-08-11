# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Terminal
    # A Configurations object represents how features should be configured for terminal readers.
    # For information about how to use it, see the [Terminal configurations documentation](https://docs.stripe.com/terminal/fleet/configurations-overview).
    class Configuration < APIResource
      class BbposWiseposE < Stripe::StripeObject
        # A File ID representing an image to display on the reader
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
        # A File ID representing an image to display on the reader
        sig { returns(T.any(String, Stripe::File)) }
        attr_reader :splashscreen
      end
      class Tipping < Stripe::StripeObject
        class Aed < Stripe::StripeObject
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
        class Bgn < Stripe::StripeObject
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
        class Huf < Stripe::StripeObject
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
        class Jpy < Stripe::StripeObject
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
        class Mxn < Stripe::StripeObject
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
        class Ron < Stripe::StripeObject
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
        # Attribute for field aed
        sig { returns(Aed) }
        attr_reader :aed
        # Attribute for field aud
        sig { returns(Aud) }
        attr_reader :aud
        # Attribute for field bgn
        sig { returns(Bgn) }
        attr_reader :bgn
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
        # Attribute for field huf
        sig { returns(Huf) }
        attr_reader :huf
        # Attribute for field jpy
        sig { returns(Jpy) }
        attr_reader :jpy
        # Attribute for field mxn
        sig { returns(Mxn) }
        attr_reader :mxn
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
        # Attribute for field ron
        sig { returns(Ron) }
        attr_reader :ron
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
        # A File ID representing an image to display on the reader
        sig { returns(T.any(String, Stripe::File)) }
        attr_reader :splashscreen
      end
      class Wifi < Stripe::StripeObject
        class EnterpriseEapPeap < Stripe::StripeObject
          # A File ID representing a PEM file containing the server certificate
          sig { returns(String) }
          attr_reader :ca_certificate_file
          # Password for connecting to the WiFi network
          sig { returns(String) }
          attr_reader :password
          # Name of the WiFi network
          sig { returns(String) }
          attr_reader :ssid
          # Username for connecting to the WiFi network
          sig { returns(String) }
          attr_reader :username
        end
        class EnterpriseEapTls < Stripe::StripeObject
          # A File ID representing a PEM file containing the server certificate
          sig { returns(String) }
          attr_reader :ca_certificate_file
          # A File ID representing a PEM file containing the client certificate
          sig { returns(String) }
          attr_reader :client_certificate_file
          # A File ID representing a PEM file containing the client RSA private key
          sig { returns(String) }
          attr_reader :private_key_file
          # Password for the private key file
          sig { returns(String) }
          attr_reader :private_key_file_password
          # Name of the WiFi network
          sig { returns(String) }
          attr_reader :ssid
        end
        class PersonalPsk < Stripe::StripeObject
          # Password for connecting to the WiFi network
          sig { returns(String) }
          attr_reader :password
          # Name of the WiFi network
          sig { returns(String) }
          attr_reader :ssid
        end
        # Attribute for field enterprise_eap_peap
        sig { returns(EnterpriseEapPeap) }
        attr_reader :enterprise_eap_peap
        # Attribute for field enterprise_eap_tls
        sig { returns(EnterpriseEapTls) }
        attr_reader :enterprise_eap_tls
        # Attribute for field personal_psk
        sig { returns(PersonalPsk) }
        attr_reader :personal_psk
        # Security type of the WiFi network. The hash with the corresponding name contains the credentials for this security type.
        sig { returns(String) }
        attr_reader :type
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
      # Attribute for field wifi
      sig { returns(Wifi) }
      attr_reader :wifi
      # Always true for a deleted object
      sig { returns(T::Boolean) }
      attr_reader :deleted
      class DeleteParams < Stripe::RequestParams; end
      class UpdateParams < Stripe::RequestParams
        class BbposWiseposE < Stripe::RequestParams
          # A File ID representing an image to display on the reader
          sig { returns(T.nilable(String)) }
          attr_accessor :splashscreen
          sig { params(splashscreen: T.nilable(String)).void }
          def initialize(splashscreen: nil); end
        end
        class Offline < Stripe::RequestParams
          # Determines whether to allow transactions to be collected while reader is offline. Defaults to false.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          sig { params(enabled: T::Boolean).void }
          def initialize(enabled: nil); end
        end
        class RebootWindow < Stripe::RequestParams
          # Integer between 0 to 23 that represents the end hour of the reboot time window. The value must be different than the start_hour.
          sig { returns(Integer) }
          attr_accessor :end_hour
          # Integer between 0 to 23 that represents the start hour of the reboot time window.
          sig { returns(Integer) }
          attr_accessor :start_hour
          sig { params(end_hour: Integer, start_hour: Integer).void }
          def initialize(end_hour: nil, start_hour: nil); end
        end
        class StripeS700 < Stripe::RequestParams
          # A File ID representing an image you would like displayed on the reader.
          sig { returns(T.nilable(String)) }
          attr_accessor :splashscreen
          sig { params(splashscreen: T.nilable(String)).void }
          def initialize(splashscreen: nil); end
        end
        class Tipping < Stripe::RequestParams
          class Aed < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Aud < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Bgn < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Cad < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Chf < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Czk < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Dkk < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Eur < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Gbp < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Hkd < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Huf < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Jpy < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Mxn < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Myr < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Nok < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Nzd < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Pln < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Ron < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Sek < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Sgd < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Usd < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          # Tipping configuration for AED
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Aed)) }
          attr_accessor :aed
          # Tipping configuration for AUD
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Aud)) }
          attr_accessor :aud
          # Tipping configuration for BGN
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Bgn)) }
          attr_accessor :bgn
          # Tipping configuration for CAD
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Cad)) }
          attr_accessor :cad
          # Tipping configuration for CHF
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Chf)) }
          attr_accessor :chf
          # Tipping configuration for CZK
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Czk)) }
          attr_accessor :czk
          # Tipping configuration for DKK
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Dkk)) }
          attr_accessor :dkk
          # Tipping configuration for EUR
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Eur)) }
          attr_accessor :eur
          # Tipping configuration for GBP
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Gbp)) }
          attr_accessor :gbp
          # Tipping configuration for HKD
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Hkd)) }
          attr_accessor :hkd
          # Tipping configuration for HUF
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Huf)) }
          attr_accessor :huf
          # Tipping configuration for JPY
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Jpy)) }
          attr_accessor :jpy
          # Tipping configuration for MXN
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Mxn)) }
          attr_accessor :mxn
          # Tipping configuration for MYR
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Myr)) }
          attr_accessor :myr
          # Tipping configuration for NOK
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Nok)) }
          attr_accessor :nok
          # Tipping configuration for NZD
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Nzd)) }
          attr_accessor :nzd
          # Tipping configuration for PLN
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Pln)) }
          attr_accessor :pln
          # Tipping configuration for RON
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Ron)) }
          attr_accessor :ron
          # Tipping configuration for SEK
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Sek)) }
          attr_accessor :sek
          # Tipping configuration for SGD
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Sgd)) }
          attr_accessor :sgd
          # Tipping configuration for USD
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Usd)) }
          attr_accessor :usd
          sig {
            params(aed: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Aed), aud: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Aud), bgn: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Bgn), cad: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Cad), chf: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Chf), czk: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Czk), dkk: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Dkk), eur: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Eur), gbp: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Gbp), hkd: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Hkd), huf: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Huf), jpy: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Jpy), mxn: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Mxn), myr: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Myr), nok: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Nok), nzd: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Nzd), pln: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Pln), ron: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Ron), sek: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Sek), sgd: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Sgd), usd: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Tipping::Usd)).void
           }
          def initialize(
            aed: nil,
            aud: nil,
            bgn: nil,
            cad: nil,
            chf: nil,
            czk: nil,
            dkk: nil,
            eur: nil,
            gbp: nil,
            hkd: nil,
            huf: nil,
            jpy: nil,
            mxn: nil,
            myr: nil,
            nok: nil,
            nzd: nil,
            pln: nil,
            ron: nil,
            sek: nil,
            sgd: nil,
            usd: nil
          ); end
        end
        class VerifoneP400 < Stripe::RequestParams
          # A File ID representing an image you would like displayed on the reader.
          sig { returns(T.nilable(String)) }
          attr_accessor :splashscreen
          sig { params(splashscreen: T.nilable(String)).void }
          def initialize(splashscreen: nil); end
        end
        class Wifi < Stripe::RequestParams
          class EnterpriseEapPeap < Stripe::RequestParams
            # A File ID representing a PEM file containing the server certificate
            sig { returns(T.nilable(String)) }
            attr_accessor :ca_certificate_file
            # Password for connecting to the WiFi network
            sig { returns(String) }
            attr_accessor :password
            # Name of the WiFi network
            sig { returns(String) }
            attr_accessor :ssid
            # Username for connecting to the WiFi network
            sig { returns(String) }
            attr_accessor :username
            sig {
              params(ca_certificate_file: T.nilable(String), password: String, ssid: String, username: String).void
             }
            def initialize(ca_certificate_file: nil, password: nil, ssid: nil, username: nil); end
          end
          class EnterpriseEapTls < Stripe::RequestParams
            # A File ID representing a PEM file containing the server certificate
            sig { returns(T.nilable(String)) }
            attr_accessor :ca_certificate_file
            # A File ID representing a PEM file containing the client certificate
            sig { returns(String) }
            attr_accessor :client_certificate_file
            # A File ID representing a PEM file containing the client RSA private key
            sig { returns(String) }
            attr_accessor :private_key_file
            # Password for the private key file
            sig { returns(T.nilable(String)) }
            attr_accessor :private_key_file_password
            # Name of the WiFi network
            sig { returns(String) }
            attr_accessor :ssid
            sig {
              params(ca_certificate_file: T.nilable(String), client_certificate_file: String, private_key_file: String, private_key_file_password: T.nilable(String), ssid: String).void
             }
            def initialize(
              ca_certificate_file: nil,
              client_certificate_file: nil,
              private_key_file: nil,
              private_key_file_password: nil,
              ssid: nil
            ); end
          end
          class PersonalPsk < Stripe::RequestParams
            # Password for connecting to the WiFi network
            sig { returns(String) }
            attr_accessor :password
            # Name of the WiFi network
            sig { returns(String) }
            attr_accessor :ssid
            sig { params(password: String, ssid: String).void }
            def initialize(password: nil, ssid: nil); end
          end
          # Credentials for a WPA-Enterprise WiFi network using the EAP-PEAP authentication method.
          sig {
            returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Wifi::EnterpriseEapPeap))
           }
          attr_accessor :enterprise_eap_peap
          # Credentials for a WPA-Enterprise WiFi network using the EAP-TLS authentication method.
          sig {
            returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Wifi::EnterpriseEapTls))
           }
          attr_accessor :enterprise_eap_tls
          # Credentials for a WPA-Personal WiFi network.
          sig {
            returns(T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Wifi::PersonalPsk))
           }
          attr_accessor :personal_psk
          # Security type of the WiFi network. Fill out the hash with the corresponding name to provide the set of credentials for this security type.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(enterprise_eap_peap: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Wifi::EnterpriseEapPeap), enterprise_eap_tls: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Wifi::EnterpriseEapTls), personal_psk: T.nilable(::Stripe::Terminal::Configuration::UpdateParams::Wifi::PersonalPsk), type: String).void
           }
          def initialize(
            enterprise_eap_peap: nil,
            enterprise_eap_tls: nil,
            personal_psk: nil,
            type: nil
          ); end
        end
        # An object containing device type specific settings for BBPOS WisePOS E readers
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Terminal::Configuration::UpdateParams::BbposWiseposE)))
         }
        attr_accessor :bbpos_wisepos_e
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Name of the configuration
        sig { returns(T.nilable(String)) }
        attr_accessor :name
        # Configurations for collecting transactions offline.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Terminal::Configuration::UpdateParams::Offline)))
         }
        attr_accessor :offline
        # Reboot time settings for readers that support customized reboot time configuration.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Terminal::Configuration::UpdateParams::RebootWindow)))
         }
        attr_accessor :reboot_window
        # An object containing device type specific settings for Stripe S700 readers
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Terminal::Configuration::UpdateParams::StripeS700)))
         }
        attr_accessor :stripe_s700
        # Tipping configurations for readers supporting on-reader tips
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Terminal::Configuration::UpdateParams::Tipping)))
         }
        attr_accessor :tipping
        # An object containing device type specific settings for Verifone P400 readers
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Terminal::Configuration::UpdateParams::VerifoneP400)))
         }
        attr_accessor :verifone_p400
        # Configurations for connecting to a WiFi network.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Terminal::Configuration::UpdateParams::Wifi)))
         }
        attr_accessor :wifi
        sig {
          params(bbpos_wisepos_e: T.nilable(T.any(String, ::Stripe::Terminal::Configuration::UpdateParams::BbposWiseposE)), expand: T.nilable(T::Array[String]), name: T.nilable(String), offline: T.nilable(T.any(String, ::Stripe::Terminal::Configuration::UpdateParams::Offline)), reboot_window: T.nilable(T.any(String, ::Stripe::Terminal::Configuration::UpdateParams::RebootWindow)), stripe_s700: T.nilable(T.any(String, ::Stripe::Terminal::Configuration::UpdateParams::StripeS700)), tipping: T.nilable(T.any(String, ::Stripe::Terminal::Configuration::UpdateParams::Tipping)), verifone_p400: T.nilable(T.any(String, ::Stripe::Terminal::Configuration::UpdateParams::VerifoneP400)), wifi: T.nilable(T.any(String, ::Stripe::Terminal::Configuration::UpdateParams::Wifi))).void
         }
        def initialize(
          bbpos_wisepos_e: nil,
          expand: nil,
          name: nil,
          offline: nil,
          reboot_window: nil,
          stripe_s700: nil,
          tipping: nil,
          verifone_p400: nil,
          wifi: nil
        ); end
      end
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # if present, only return the account default or non-default configurations.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :is_account_default
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), is_account_default: T.nilable(T::Boolean), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
         }
        def initialize(
          ending_before: nil,
          expand: nil,
          is_account_default: nil,
          limit: nil,
          starting_after: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class BbposWiseposE < Stripe::RequestParams
          # A File ID representing an image to display on the reader
          sig { returns(T.nilable(String)) }
          attr_accessor :splashscreen
          sig { params(splashscreen: T.nilable(String)).void }
          def initialize(splashscreen: nil); end
        end
        class Offline < Stripe::RequestParams
          # Determines whether to allow transactions to be collected while reader is offline. Defaults to false.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          sig { params(enabled: T::Boolean).void }
          def initialize(enabled: nil); end
        end
        class RebootWindow < Stripe::RequestParams
          # Integer between 0 to 23 that represents the end hour of the reboot time window. The value must be different than the start_hour.
          sig { returns(Integer) }
          attr_accessor :end_hour
          # Integer between 0 to 23 that represents the start hour of the reboot time window.
          sig { returns(Integer) }
          attr_accessor :start_hour
          sig { params(end_hour: Integer, start_hour: Integer).void }
          def initialize(end_hour: nil, start_hour: nil); end
        end
        class StripeS700 < Stripe::RequestParams
          # A File ID representing an image you would like displayed on the reader.
          sig { returns(T.nilable(String)) }
          attr_accessor :splashscreen
          sig { params(splashscreen: T.nilable(String)).void }
          def initialize(splashscreen: nil); end
        end
        class Tipping < Stripe::RequestParams
          class Aed < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Aud < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Bgn < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Cad < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Chf < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Czk < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Dkk < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Eur < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Gbp < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Hkd < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Huf < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Jpy < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Mxn < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Myr < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Nok < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Nzd < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Pln < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Ron < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Sek < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Sgd < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          class Usd < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            sig { returns(T.nilable(Integer)) }
            attr_accessor :smart_tip_threshold
            sig {
              params(fixed_amounts: T.nilable(T::Array[Integer]), percentages: T.nilable(T::Array[Integer]), smart_tip_threshold: T.nilable(Integer)).void
             }
            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil); end
          end
          # Tipping configuration for AED
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Aed)) }
          attr_accessor :aed
          # Tipping configuration for AUD
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Aud)) }
          attr_accessor :aud
          # Tipping configuration for BGN
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Bgn)) }
          attr_accessor :bgn
          # Tipping configuration for CAD
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Cad)) }
          attr_accessor :cad
          # Tipping configuration for CHF
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Chf)) }
          attr_accessor :chf
          # Tipping configuration for CZK
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Czk)) }
          attr_accessor :czk
          # Tipping configuration for DKK
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Dkk)) }
          attr_accessor :dkk
          # Tipping configuration for EUR
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Eur)) }
          attr_accessor :eur
          # Tipping configuration for GBP
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Gbp)) }
          attr_accessor :gbp
          # Tipping configuration for HKD
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Hkd)) }
          attr_accessor :hkd
          # Tipping configuration for HUF
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Huf)) }
          attr_accessor :huf
          # Tipping configuration for JPY
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Jpy)) }
          attr_accessor :jpy
          # Tipping configuration for MXN
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Mxn)) }
          attr_accessor :mxn
          # Tipping configuration for MYR
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Myr)) }
          attr_accessor :myr
          # Tipping configuration for NOK
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Nok)) }
          attr_accessor :nok
          # Tipping configuration for NZD
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Nzd)) }
          attr_accessor :nzd
          # Tipping configuration for PLN
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Pln)) }
          attr_accessor :pln
          # Tipping configuration for RON
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Ron)) }
          attr_accessor :ron
          # Tipping configuration for SEK
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Sek)) }
          attr_accessor :sek
          # Tipping configuration for SGD
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Sgd)) }
          attr_accessor :sgd
          # Tipping configuration for USD
          sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Usd)) }
          attr_accessor :usd
          sig {
            params(aed: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Aed), aud: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Aud), bgn: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Bgn), cad: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Cad), chf: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Chf), czk: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Czk), dkk: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Dkk), eur: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Eur), gbp: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Gbp), hkd: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Hkd), huf: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Huf), jpy: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Jpy), mxn: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Mxn), myr: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Myr), nok: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Nok), nzd: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Nzd), pln: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Pln), ron: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Ron), sek: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Sek), sgd: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Sgd), usd: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Tipping::Usd)).void
           }
          def initialize(
            aed: nil,
            aud: nil,
            bgn: nil,
            cad: nil,
            chf: nil,
            czk: nil,
            dkk: nil,
            eur: nil,
            gbp: nil,
            hkd: nil,
            huf: nil,
            jpy: nil,
            mxn: nil,
            myr: nil,
            nok: nil,
            nzd: nil,
            pln: nil,
            ron: nil,
            sek: nil,
            sgd: nil,
            usd: nil
          ); end
        end
        class VerifoneP400 < Stripe::RequestParams
          # A File ID representing an image you would like displayed on the reader.
          sig { returns(T.nilable(String)) }
          attr_accessor :splashscreen
          sig { params(splashscreen: T.nilable(String)).void }
          def initialize(splashscreen: nil); end
        end
        class Wifi < Stripe::RequestParams
          class EnterpriseEapPeap < Stripe::RequestParams
            # A File ID representing a PEM file containing the server certificate
            sig { returns(T.nilable(String)) }
            attr_accessor :ca_certificate_file
            # Password for connecting to the WiFi network
            sig { returns(String) }
            attr_accessor :password
            # Name of the WiFi network
            sig { returns(String) }
            attr_accessor :ssid
            # Username for connecting to the WiFi network
            sig { returns(String) }
            attr_accessor :username
            sig {
              params(ca_certificate_file: T.nilable(String), password: String, ssid: String, username: String).void
             }
            def initialize(ca_certificate_file: nil, password: nil, ssid: nil, username: nil); end
          end
          class EnterpriseEapTls < Stripe::RequestParams
            # A File ID representing a PEM file containing the server certificate
            sig { returns(T.nilable(String)) }
            attr_accessor :ca_certificate_file
            # A File ID representing a PEM file containing the client certificate
            sig { returns(String) }
            attr_accessor :client_certificate_file
            # A File ID representing a PEM file containing the client RSA private key
            sig { returns(String) }
            attr_accessor :private_key_file
            # Password for the private key file
            sig { returns(T.nilable(String)) }
            attr_accessor :private_key_file_password
            # Name of the WiFi network
            sig { returns(String) }
            attr_accessor :ssid
            sig {
              params(ca_certificate_file: T.nilable(String), client_certificate_file: String, private_key_file: String, private_key_file_password: T.nilable(String), ssid: String).void
             }
            def initialize(
              ca_certificate_file: nil,
              client_certificate_file: nil,
              private_key_file: nil,
              private_key_file_password: nil,
              ssid: nil
            ); end
          end
          class PersonalPsk < Stripe::RequestParams
            # Password for connecting to the WiFi network
            sig { returns(String) }
            attr_accessor :password
            # Name of the WiFi network
            sig { returns(String) }
            attr_accessor :ssid
            sig { params(password: String, ssid: String).void }
            def initialize(password: nil, ssid: nil); end
          end
          # Credentials for a WPA-Enterprise WiFi network using the EAP-PEAP authentication method.
          sig {
            returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Wifi::EnterpriseEapPeap))
           }
          attr_accessor :enterprise_eap_peap
          # Credentials for a WPA-Enterprise WiFi network using the EAP-TLS authentication method.
          sig {
            returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Wifi::EnterpriseEapTls))
           }
          attr_accessor :enterprise_eap_tls
          # Credentials for a WPA-Personal WiFi network.
          sig {
            returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::Wifi::PersonalPsk))
           }
          attr_accessor :personal_psk
          # Security type of the WiFi network. Fill out the hash with the corresponding name to provide the set of credentials for this security type.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(enterprise_eap_peap: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Wifi::EnterpriseEapPeap), enterprise_eap_tls: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Wifi::EnterpriseEapTls), personal_psk: T.nilable(::Stripe::Terminal::Configuration::CreateParams::Wifi::PersonalPsk), type: String).void
           }
          def initialize(
            enterprise_eap_peap: nil,
            enterprise_eap_tls: nil,
            personal_psk: nil,
            type: nil
          ); end
        end
        # An object containing device type specific settings for BBPOS WisePOS E readers
        sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::BbposWiseposE)) }
        attr_accessor :bbpos_wisepos_e
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Name of the configuration
        sig { returns(T.nilable(String)) }
        attr_accessor :name
        # Configurations for collecting transactions offline.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Terminal::Configuration::CreateParams::Offline)))
         }
        attr_accessor :offline
        # Reboot time settings for readers that support customized reboot time configuration.
        sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::RebootWindow)) }
        attr_accessor :reboot_window
        # An object containing device type specific settings for Stripe S700 readers
        sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::StripeS700)) }
        attr_accessor :stripe_s700
        # Tipping configurations for readers supporting on-reader tips
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Terminal::Configuration::CreateParams::Tipping)))
         }
        attr_accessor :tipping
        # An object containing device type specific settings for Verifone P400 readers
        sig { returns(T.nilable(::Stripe::Terminal::Configuration::CreateParams::VerifoneP400)) }
        attr_accessor :verifone_p400
        # Configurations for connecting to a WiFi network.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Terminal::Configuration::CreateParams::Wifi)))
         }
        attr_accessor :wifi
        sig {
          params(bbpos_wisepos_e: T.nilable(::Stripe::Terminal::Configuration::CreateParams::BbposWiseposE), expand: T.nilable(T::Array[String]), name: T.nilable(String), offline: T.nilable(T.any(String, ::Stripe::Terminal::Configuration::CreateParams::Offline)), reboot_window: T.nilable(::Stripe::Terminal::Configuration::CreateParams::RebootWindow), stripe_s700: T.nilable(::Stripe::Terminal::Configuration::CreateParams::StripeS700), tipping: T.nilable(T.any(String, ::Stripe::Terminal::Configuration::CreateParams::Tipping)), verifone_p400: T.nilable(::Stripe::Terminal::Configuration::CreateParams::VerifoneP400), wifi: T.nilable(T.any(String, ::Stripe::Terminal::Configuration::CreateParams::Wifi))).void
         }
        def initialize(
          bbpos_wisepos_e: nil,
          expand: nil,
          name: nil,
          offline: nil,
          reboot_window: nil,
          stripe_s700: nil,
          tipping: nil,
          verifone_p400: nil,
          wifi: nil
        ); end
      end
      # Creates a new Configuration object.
      sig {
        params(params: T.any(::Stripe::Terminal::Configuration::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Configuration)
       }
      def self.create(params = {}, opts = {}); end

      # Deletes a Configuration object.
      sig {
        params(configuration: String, params: T.any(::Stripe::Terminal::Configuration::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Configuration)
       }
      def self.delete(configuration, params = {}, opts = {}); end

      # Deletes a Configuration object.
      sig {
        params(params: T.any(::Stripe::Terminal::Configuration::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Configuration)
       }
      def delete(params = {}, opts = {}); end

      # Returns a list of Configuration objects.
      sig {
        params(params: T.any(::Stripe::Terminal::Configuration::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Updates a new Configuration object.
      sig {
        params(configuration: String, params: T.any(::Stripe::Terminal::Configuration::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Configuration)
       }
      def self.update(configuration, params = {}, opts = {}); end
    end
  end
end