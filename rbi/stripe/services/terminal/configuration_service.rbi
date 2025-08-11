# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Terminal
    class ConfigurationService < StripeService
      class DeleteParams < Stripe::RequestParams; end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
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
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Aed))
           }
          attr_accessor :aed
          # Tipping configuration for AUD
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Aud))
           }
          attr_accessor :aud
          # Tipping configuration for BGN
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Bgn))
           }
          attr_accessor :bgn
          # Tipping configuration for CAD
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Cad))
           }
          attr_accessor :cad
          # Tipping configuration for CHF
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Chf))
           }
          attr_accessor :chf
          # Tipping configuration for CZK
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Czk))
           }
          attr_accessor :czk
          # Tipping configuration for DKK
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Dkk))
           }
          attr_accessor :dkk
          # Tipping configuration for EUR
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Eur))
           }
          attr_accessor :eur
          # Tipping configuration for GBP
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Gbp))
           }
          attr_accessor :gbp
          # Tipping configuration for HKD
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Hkd))
           }
          attr_accessor :hkd
          # Tipping configuration for HUF
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Huf))
           }
          attr_accessor :huf
          # Tipping configuration for JPY
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Jpy))
           }
          attr_accessor :jpy
          # Tipping configuration for MXN
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Mxn))
           }
          attr_accessor :mxn
          # Tipping configuration for MYR
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Myr))
           }
          attr_accessor :myr
          # Tipping configuration for NOK
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Nok))
           }
          attr_accessor :nok
          # Tipping configuration for NZD
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Nzd))
           }
          attr_accessor :nzd
          # Tipping configuration for PLN
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Pln))
           }
          attr_accessor :pln
          # Tipping configuration for RON
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Ron))
           }
          attr_accessor :ron
          # Tipping configuration for SEK
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Sek))
           }
          attr_accessor :sek
          # Tipping configuration for SGD
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Sgd))
           }
          attr_accessor :sgd
          # Tipping configuration for USD
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Usd))
           }
          attr_accessor :usd
          sig {
            params(aed: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Aed), aud: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Aud), bgn: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Bgn), cad: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Cad), chf: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Chf), czk: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Czk), dkk: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Dkk), eur: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Eur), gbp: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Gbp), hkd: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Hkd), huf: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Huf), jpy: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Jpy), mxn: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Mxn), myr: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Myr), nok: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Nok), nzd: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Nzd), pln: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Pln), ron: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Ron), sek: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Sek), sgd: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Sgd), usd: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping::Usd)).void
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
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Wifi::EnterpriseEapPeap))
           }
          attr_accessor :enterprise_eap_peap
          # Credentials for a WPA-Enterprise WiFi network using the EAP-TLS authentication method.
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Wifi::EnterpriseEapTls))
           }
          attr_accessor :enterprise_eap_tls
          # Credentials for a WPA-Personal WiFi network.
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Wifi::PersonalPsk))
           }
          attr_accessor :personal_psk
          # Security type of the WiFi network. Fill out the hash with the corresponding name to provide the set of credentials for this security type.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(enterprise_eap_peap: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Wifi::EnterpriseEapPeap), enterprise_eap_tls: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Wifi::EnterpriseEapTls), personal_psk: T.nilable(::Stripe::Terminal::ConfigurationService::UpdateParams::Wifi::PersonalPsk), type: String).void
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
          returns(T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::UpdateParams::BbposWiseposE)))
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
          returns(T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::UpdateParams::Offline)))
         }
        attr_accessor :offline
        # Reboot time settings for readers that support customized reboot time configuration.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::UpdateParams::RebootWindow)))
         }
        attr_accessor :reboot_window
        # An object containing device type specific settings for Stripe S700 readers
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::UpdateParams::StripeS700)))
         }
        attr_accessor :stripe_s700
        # Tipping configurations for readers supporting on-reader tips
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping)))
         }
        attr_accessor :tipping
        # An object containing device type specific settings for Verifone P400 readers
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::UpdateParams::VerifoneP400)))
         }
        attr_accessor :verifone_p400
        # Configurations for connecting to a WiFi network.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::UpdateParams::Wifi)))
         }
        attr_accessor :wifi
        sig {
          params(bbpos_wisepos_e: T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::UpdateParams::BbposWiseposE)), expand: T.nilable(T::Array[String]), name: T.nilable(String), offline: T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::UpdateParams::Offline)), reboot_window: T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::UpdateParams::RebootWindow)), stripe_s700: T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::UpdateParams::StripeS700)), tipping: T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::UpdateParams::Tipping)), verifone_p400: T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::UpdateParams::VerifoneP400)), wifi: T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::UpdateParams::Wifi))).void
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
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Aed))
           }
          attr_accessor :aed
          # Tipping configuration for AUD
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Aud))
           }
          attr_accessor :aud
          # Tipping configuration for BGN
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Bgn))
           }
          attr_accessor :bgn
          # Tipping configuration for CAD
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Cad))
           }
          attr_accessor :cad
          # Tipping configuration for CHF
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Chf))
           }
          attr_accessor :chf
          # Tipping configuration for CZK
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Czk))
           }
          attr_accessor :czk
          # Tipping configuration for DKK
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Dkk))
           }
          attr_accessor :dkk
          # Tipping configuration for EUR
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Eur))
           }
          attr_accessor :eur
          # Tipping configuration for GBP
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Gbp))
           }
          attr_accessor :gbp
          # Tipping configuration for HKD
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Hkd))
           }
          attr_accessor :hkd
          # Tipping configuration for HUF
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Huf))
           }
          attr_accessor :huf
          # Tipping configuration for JPY
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Jpy))
           }
          attr_accessor :jpy
          # Tipping configuration for MXN
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Mxn))
           }
          attr_accessor :mxn
          # Tipping configuration for MYR
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Myr))
           }
          attr_accessor :myr
          # Tipping configuration for NOK
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Nok))
           }
          attr_accessor :nok
          # Tipping configuration for NZD
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Nzd))
           }
          attr_accessor :nzd
          # Tipping configuration for PLN
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Pln))
           }
          attr_accessor :pln
          # Tipping configuration for RON
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Ron))
           }
          attr_accessor :ron
          # Tipping configuration for SEK
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Sek))
           }
          attr_accessor :sek
          # Tipping configuration for SGD
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Sgd))
           }
          attr_accessor :sgd
          # Tipping configuration for USD
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Usd))
           }
          attr_accessor :usd
          sig {
            params(aed: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Aed), aud: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Aud), bgn: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Bgn), cad: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Cad), chf: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Chf), czk: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Czk), dkk: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Dkk), eur: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Eur), gbp: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Gbp), hkd: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Hkd), huf: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Huf), jpy: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Jpy), mxn: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Mxn), myr: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Myr), nok: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Nok), nzd: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Nzd), pln: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Pln), ron: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Ron), sek: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Sek), sgd: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Sgd), usd: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Tipping::Usd)).void
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
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Wifi::EnterpriseEapPeap))
           }
          attr_accessor :enterprise_eap_peap
          # Credentials for a WPA-Enterprise WiFi network using the EAP-TLS authentication method.
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Wifi::EnterpriseEapTls))
           }
          attr_accessor :enterprise_eap_tls
          # Credentials for a WPA-Personal WiFi network.
          sig {
            returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Wifi::PersonalPsk))
           }
          attr_accessor :personal_psk
          # Security type of the WiFi network. Fill out the hash with the corresponding name to provide the set of credentials for this security type.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(enterprise_eap_peap: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Wifi::EnterpriseEapPeap), enterprise_eap_tls: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Wifi::EnterpriseEapTls), personal_psk: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::Wifi::PersonalPsk), type: String).void
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
          returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::BbposWiseposE))
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
          returns(T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::CreateParams::Offline)))
         }
        attr_accessor :offline
        # Reboot time settings for readers that support customized reboot time configuration.
        sig {
          returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::RebootWindow))
         }
        attr_accessor :reboot_window
        # An object containing device type specific settings for Stripe S700 readers
        sig {
          returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::StripeS700))
         }
        attr_accessor :stripe_s700
        # Tipping configurations for readers supporting on-reader tips
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::CreateParams::Tipping)))
         }
        attr_accessor :tipping
        # An object containing device type specific settings for Verifone P400 readers
        sig {
          returns(T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::VerifoneP400))
         }
        attr_accessor :verifone_p400
        # Configurations for connecting to a WiFi network.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::CreateParams::Wifi)))
         }
        attr_accessor :wifi
        sig {
          params(bbpos_wisepos_e: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::BbposWiseposE), expand: T.nilable(T::Array[String]), name: T.nilable(String), offline: T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::CreateParams::Offline)), reboot_window: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::RebootWindow), stripe_s700: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::StripeS700), tipping: T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::CreateParams::Tipping)), verifone_p400: T.nilable(::Stripe::Terminal::ConfigurationService::CreateParams::VerifoneP400), wifi: T.nilable(T.any(String, ::Stripe::Terminal::ConfigurationService::CreateParams::Wifi))).void
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
        params(params: T.any(::Stripe::Terminal::ConfigurationService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Configuration)
       }
      def create(params = {}, opts = {}); end

      # Deletes a Configuration object.
      sig {
        params(configuration: String, params: T.any(::Stripe::Terminal::ConfigurationService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Configuration)
       }
      def delete(configuration, params = {}, opts = {}); end

      # Returns a list of Configuration objects.
      sig {
        params(params: T.any(::Stripe::Terminal::ConfigurationService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves a Configuration object.
      sig {
        params(configuration: String, params: T.any(::Stripe::Terminal::ConfigurationService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Configuration)
       }
      def retrieve(configuration, params = {}, opts = {}); end

      # Updates a new Configuration object.
      sig {
        params(configuration: String, params: T.any(::Stripe::Terminal::ConfigurationService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Configuration)
       }
      def update(configuration, params = {}, opts = {}); end
    end
  end
end