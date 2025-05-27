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
        # A File ID representing an image to display on the reader
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
        # A File ID representing an image to display on the reader
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

        class Jpy < Stripe::StripeObject
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
        # Attribute for field jpy
        attr_reader :jpy
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
        # A File ID representing an image to display on the reader
        attr_reader :splashscreen
      end

      class Wifi < Stripe::StripeObject
        class EnterpriseEapPeap < Stripe::StripeObject
          # A File ID representing a PEM file containing the server certificate
          attr_reader :ca_certificate_file
          # Password for connecting to the WiFi network
          attr_reader :password
          # Name of the WiFi network
          attr_reader :ssid
          # Username for connecting to the WiFi network
          attr_reader :username
        end

        class EnterpriseEapTls < Stripe::StripeObject
          # A File ID representing a PEM file containing the server certificate
          attr_reader :ca_certificate_file
          # A File ID representing a PEM file containing the client certificate
          attr_reader :client_certificate_file
          # A File ID representing a PEM file containing the client RSA private key
          attr_reader :private_key_file
          # Password for the private key file
          attr_reader :private_key_file_password
          # Name of the WiFi network
          attr_reader :ssid
        end

        class PersonalPsk < Stripe::StripeObject
          # Password for connecting to the WiFi network
          attr_reader :password
          # Name of the WiFi network
          attr_reader :ssid
        end
        # Attribute for field enterprise_eap_peap
        attr_reader :enterprise_eap_peap
        # Attribute for field enterprise_eap_tls
        attr_reader :enterprise_eap_tls
        # Attribute for field personal_psk
        attr_reader :personal_psk
        # Security type of the WiFi network. The hash with the corresponding name contains the credentials for this security type.
        attr_reader :type
      end

      class DeleteParams < Stripe::RequestParams; end

      class UpdateParams < Stripe::RequestParams
        class BbposWiseposE < Stripe::RequestParams
          # A File ID representing an image to display on the reader
          attr_accessor :splashscreen

          def initialize(splashscreen: nil)
            @splashscreen = splashscreen
          end
        end

        class Offline < Stripe::RequestParams
          # Determines whether to allow transactions to be collected while reader is offline. Defaults to false.
          attr_accessor :enabled

          def initialize(enabled: nil)
            @enabled = enabled
          end
        end

        class RebootWindow < Stripe::RequestParams
          # Integer between 0 to 23 that represents the end hour of the reboot time window. The value must be different than the start_hour.
          attr_accessor :end_hour
          # Integer between 0 to 23 that represents the start hour of the reboot time window.
          attr_accessor :start_hour

          def initialize(end_hour: nil, start_hour: nil)
            @end_hour = end_hour
            @start_hour = start_hour
          end
        end

        class StripeS700 < Stripe::RequestParams
          # A File ID representing an image you would like displayed on the reader.
          attr_accessor :splashscreen

          def initialize(splashscreen: nil)
            @splashscreen = splashscreen
          end
        end

        class Tipping < Stripe::RequestParams
          class Aud < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Cad < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Chf < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Czk < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Dkk < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Eur < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Gbp < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Hkd < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Jpy < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Myr < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Nok < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Nzd < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Pln < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Sek < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Sgd < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Usd < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end
          # Tipping configuration for AUD
          attr_accessor :aud
          # Tipping configuration for CAD
          attr_accessor :cad
          # Tipping configuration for CHF
          attr_accessor :chf
          # Tipping configuration for CZK
          attr_accessor :czk
          # Tipping configuration for DKK
          attr_accessor :dkk
          # Tipping configuration for EUR
          attr_accessor :eur
          # Tipping configuration for GBP
          attr_accessor :gbp
          # Tipping configuration for HKD
          attr_accessor :hkd
          # Tipping configuration for JPY
          attr_accessor :jpy
          # Tipping configuration for MYR
          attr_accessor :myr
          # Tipping configuration for NOK
          attr_accessor :nok
          # Tipping configuration for NZD
          attr_accessor :nzd
          # Tipping configuration for PLN
          attr_accessor :pln
          # Tipping configuration for SEK
          attr_accessor :sek
          # Tipping configuration for SGD
          attr_accessor :sgd
          # Tipping configuration for USD
          attr_accessor :usd

          def initialize(
            aud: nil,
            cad: nil,
            chf: nil,
            czk: nil,
            dkk: nil,
            eur: nil,
            gbp: nil,
            hkd: nil,
            jpy: nil,
            myr: nil,
            nok: nil,
            nzd: nil,
            pln: nil,
            sek: nil,
            sgd: nil,
            usd: nil
          )
            @aud = aud
            @cad = cad
            @chf = chf
            @czk = czk
            @dkk = dkk
            @eur = eur
            @gbp = gbp
            @hkd = hkd
            @jpy = jpy
            @myr = myr
            @nok = nok
            @nzd = nzd
            @pln = pln
            @sek = sek
            @sgd = sgd
            @usd = usd
          end
        end

        class VerifoneP400 < Stripe::RequestParams
          # A File ID representing an image you would like displayed on the reader.
          attr_accessor :splashscreen

          def initialize(splashscreen: nil)
            @splashscreen = splashscreen
          end
        end

        class Wifi < Stripe::RequestParams
          class EnterpriseEapPeap < Stripe::RequestParams
            # A File ID representing a PEM file containing the server certificate
            attr_accessor :ca_certificate_file
            # Password for connecting to the WiFi network
            attr_accessor :password
            # Name of the WiFi network
            attr_accessor :ssid
            # Username for connecting to the WiFi network
            attr_accessor :username

            def initialize(ca_certificate_file: nil, password: nil, ssid: nil, username: nil)
              @ca_certificate_file = ca_certificate_file
              @password = password
              @ssid = ssid
              @username = username
            end
          end

          class EnterpriseEapTls < Stripe::RequestParams
            # A File ID representing a PEM file containing the server certificate
            attr_accessor :ca_certificate_file
            # A File ID representing a PEM file containing the client certificate
            attr_accessor :client_certificate_file
            # A File ID representing a PEM file containing the client RSA private key
            attr_accessor :private_key_file
            # Password for the private key file
            attr_accessor :private_key_file_password
            # Name of the WiFi network
            attr_accessor :ssid

            def initialize(
              ca_certificate_file: nil,
              client_certificate_file: nil,
              private_key_file: nil,
              private_key_file_password: nil,
              ssid: nil
            )
              @ca_certificate_file = ca_certificate_file
              @client_certificate_file = client_certificate_file
              @private_key_file = private_key_file
              @private_key_file_password = private_key_file_password
              @ssid = ssid
            end
          end

          class PersonalPsk < Stripe::RequestParams
            # Password for connecting to the WiFi network
            attr_accessor :password
            # Name of the WiFi network
            attr_accessor :ssid

            def initialize(password: nil, ssid: nil)
              @password = password
              @ssid = ssid
            end
          end
          # Credentials for a WPA-Enterprise WiFi network using the EAP-PEAP authentication method.
          attr_accessor :enterprise_eap_peap
          # Credentials for a WPA-Enterprise WiFi network using the EAP-TLS authentication method.
          attr_accessor :enterprise_eap_tls
          # Credentials for a WPA-Personal WiFi network.
          attr_accessor :personal_psk
          # Security type of the WiFi network. Fill out the hash with the corresponding name to provide the set of credentials for this security type.
          attr_accessor :type

          def initialize(
            enterprise_eap_peap: nil,
            enterprise_eap_tls: nil,
            personal_psk: nil,
            type: nil
          )
            @enterprise_eap_peap = enterprise_eap_peap
            @enterprise_eap_tls = enterprise_eap_tls
            @personal_psk = personal_psk
            @type = type
          end
        end
        # An object containing device type specific settings for BBPOS WisePOS E readers
        attr_accessor :bbpos_wisepos_e
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Name of the configuration
        attr_accessor :name
        # Configurations for collecting transactions offline.
        attr_accessor :offline
        # Reboot time settings for readers that support customized reboot time configuration.
        attr_accessor :reboot_window
        # An object containing device type specific settings for Stripe S700 readers
        attr_accessor :stripe_s700
        # Tipping configurations for readers supporting on-reader tips
        attr_accessor :tipping
        # An object containing device type specific settings for Verifone P400 readers
        attr_accessor :verifone_p400
        # Configurations for connecting to a WiFi network.
        attr_accessor :wifi

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
        )
          @bbpos_wisepos_e = bbpos_wisepos_e
          @expand = expand
          @name = name
          @offline = offline
          @reboot_window = reboot_window
          @stripe_s700 = stripe_s700
          @tipping = tipping
          @verifone_p400 = verifone_p400
          @wifi = wifi
        end
      end

      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # if present, only return the account default or non-default configurations.
        attr_accessor :is_account_default
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(
          ending_before: nil,
          expand: nil,
          is_account_default: nil,
          limit: nil,
          starting_after: nil
        )
          @ending_before = ending_before
          @expand = expand
          @is_account_default = is_account_default
          @limit = limit
          @starting_after = starting_after
        end
      end

      class CreateParams < Stripe::RequestParams
        class BbposWiseposE < Stripe::RequestParams
          # A File ID representing an image to display on the reader
          attr_accessor :splashscreen

          def initialize(splashscreen: nil)
            @splashscreen = splashscreen
          end
        end

        class Offline < Stripe::RequestParams
          # Determines whether to allow transactions to be collected while reader is offline. Defaults to false.
          attr_accessor :enabled

          def initialize(enabled: nil)
            @enabled = enabled
          end
        end

        class RebootWindow < Stripe::RequestParams
          # Integer between 0 to 23 that represents the end hour of the reboot time window. The value must be different than the start_hour.
          attr_accessor :end_hour
          # Integer between 0 to 23 that represents the start hour of the reboot time window.
          attr_accessor :start_hour

          def initialize(end_hour: nil, start_hour: nil)
            @end_hour = end_hour
            @start_hour = start_hour
          end
        end

        class StripeS700 < Stripe::RequestParams
          # A File ID representing an image you would like displayed on the reader.
          attr_accessor :splashscreen

          def initialize(splashscreen: nil)
            @splashscreen = splashscreen
          end
        end

        class Tipping < Stripe::RequestParams
          class Aud < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Cad < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Chf < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Czk < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Dkk < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Eur < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Gbp < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Hkd < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Jpy < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Myr < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Nok < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Nzd < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Pln < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Sek < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Sgd < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end

          class Usd < Stripe::RequestParams
            # Fixed amounts displayed when collecting a tip
            attr_accessor :fixed_amounts
            # Percentages displayed when collecting a tip
            attr_accessor :percentages
            # Below this amount, fixed amounts will be displayed; above it, percentages will be displayed
            attr_accessor :smart_tip_threshold

            def initialize(fixed_amounts: nil, percentages: nil, smart_tip_threshold: nil)
              @fixed_amounts = fixed_amounts
              @percentages = percentages
              @smart_tip_threshold = smart_tip_threshold
            end
          end
          # Tipping configuration for AUD
          attr_accessor :aud
          # Tipping configuration for CAD
          attr_accessor :cad
          # Tipping configuration for CHF
          attr_accessor :chf
          # Tipping configuration for CZK
          attr_accessor :czk
          # Tipping configuration for DKK
          attr_accessor :dkk
          # Tipping configuration for EUR
          attr_accessor :eur
          # Tipping configuration for GBP
          attr_accessor :gbp
          # Tipping configuration for HKD
          attr_accessor :hkd
          # Tipping configuration for JPY
          attr_accessor :jpy
          # Tipping configuration for MYR
          attr_accessor :myr
          # Tipping configuration for NOK
          attr_accessor :nok
          # Tipping configuration for NZD
          attr_accessor :nzd
          # Tipping configuration for PLN
          attr_accessor :pln
          # Tipping configuration for SEK
          attr_accessor :sek
          # Tipping configuration for SGD
          attr_accessor :sgd
          # Tipping configuration for USD
          attr_accessor :usd

          def initialize(
            aud: nil,
            cad: nil,
            chf: nil,
            czk: nil,
            dkk: nil,
            eur: nil,
            gbp: nil,
            hkd: nil,
            jpy: nil,
            myr: nil,
            nok: nil,
            nzd: nil,
            pln: nil,
            sek: nil,
            sgd: nil,
            usd: nil
          )
            @aud = aud
            @cad = cad
            @chf = chf
            @czk = czk
            @dkk = dkk
            @eur = eur
            @gbp = gbp
            @hkd = hkd
            @jpy = jpy
            @myr = myr
            @nok = nok
            @nzd = nzd
            @pln = pln
            @sek = sek
            @sgd = sgd
            @usd = usd
          end
        end

        class VerifoneP400 < Stripe::RequestParams
          # A File ID representing an image you would like displayed on the reader.
          attr_accessor :splashscreen

          def initialize(splashscreen: nil)
            @splashscreen = splashscreen
          end
        end

        class Wifi < Stripe::RequestParams
          class EnterpriseEapPeap < Stripe::RequestParams
            # A File ID representing a PEM file containing the server certificate
            attr_accessor :ca_certificate_file
            # Password for connecting to the WiFi network
            attr_accessor :password
            # Name of the WiFi network
            attr_accessor :ssid
            # Username for connecting to the WiFi network
            attr_accessor :username

            def initialize(ca_certificate_file: nil, password: nil, ssid: nil, username: nil)
              @ca_certificate_file = ca_certificate_file
              @password = password
              @ssid = ssid
              @username = username
            end
          end

          class EnterpriseEapTls < Stripe::RequestParams
            # A File ID representing a PEM file containing the server certificate
            attr_accessor :ca_certificate_file
            # A File ID representing a PEM file containing the client certificate
            attr_accessor :client_certificate_file
            # A File ID representing a PEM file containing the client RSA private key
            attr_accessor :private_key_file
            # Password for the private key file
            attr_accessor :private_key_file_password
            # Name of the WiFi network
            attr_accessor :ssid

            def initialize(
              ca_certificate_file: nil,
              client_certificate_file: nil,
              private_key_file: nil,
              private_key_file_password: nil,
              ssid: nil
            )
              @ca_certificate_file = ca_certificate_file
              @client_certificate_file = client_certificate_file
              @private_key_file = private_key_file
              @private_key_file_password = private_key_file_password
              @ssid = ssid
            end
          end

          class PersonalPsk < Stripe::RequestParams
            # Password for connecting to the WiFi network
            attr_accessor :password
            # Name of the WiFi network
            attr_accessor :ssid

            def initialize(password: nil, ssid: nil)
              @password = password
              @ssid = ssid
            end
          end
          # Credentials for a WPA-Enterprise WiFi network using the EAP-PEAP authentication method.
          attr_accessor :enterprise_eap_peap
          # Credentials for a WPA-Enterprise WiFi network using the EAP-TLS authentication method.
          attr_accessor :enterprise_eap_tls
          # Credentials for a WPA-Personal WiFi network.
          attr_accessor :personal_psk
          # Security type of the WiFi network. Fill out the hash with the corresponding name to provide the set of credentials for this security type.
          attr_accessor :type

          def initialize(
            enterprise_eap_peap: nil,
            enterprise_eap_tls: nil,
            personal_psk: nil,
            type: nil
          )
            @enterprise_eap_peap = enterprise_eap_peap
            @enterprise_eap_tls = enterprise_eap_tls
            @personal_psk = personal_psk
            @type = type
          end
        end
        # An object containing device type specific settings for BBPOS WisePOS E readers
        attr_accessor :bbpos_wisepos_e
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Name of the configuration
        attr_accessor :name
        # Configurations for collecting transactions offline.
        attr_accessor :offline
        # Reboot time settings for readers that support customized reboot time configuration.
        attr_accessor :reboot_window
        # An object containing device type specific settings for Stripe S700 readers
        attr_accessor :stripe_s700
        # Tipping configurations for readers supporting on-reader tips
        attr_accessor :tipping
        # An object containing device type specific settings for Verifone P400 readers
        attr_accessor :verifone_p400
        # Configurations for connecting to a WiFi network.
        attr_accessor :wifi

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
        )
          @bbpos_wisepos_e = bbpos_wisepos_e
          @expand = expand
          @name = name
          @offline = offline
          @reboot_window = reboot_window
          @stripe_s700 = stripe_s700
          @tipping = tipping
          @verifone_p400 = verifone_p400
          @wifi = wifi
        end
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
      # Attribute for field wifi
      attr_reader :wifi
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
      def self.delete(configuration, params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/terminal/configurations/%<configuration>s", { configuration: CGI.escape(configuration) }),
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
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/terminal/configurations",
          params: params,
          opts: opts
        )
      end

      # Updates a new Configuration object.
      def self.update(configuration, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/configurations/%<configuration>s", { configuration: CGI.escape(configuration) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
