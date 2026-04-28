# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module DelegatedCheckout
    class RequestedSessionConfirmParams < ::Stripe::RequestParams
      class AffiliateAttribution < ::Stripe::RequestParams
        class Source < ::Stripe::RequestParams
          # The platform where the attribution originated.
          attr_accessor :platform
          # The type of the attribution source.
          attr_accessor :type
          # The URL where the attribution originated.
          attr_accessor :url

          def initialize(platform: nil, type: nil, url: nil)
            @platform = platform
            @type = type
            @url = url
          end
        end
        # Agent-scoped campaign identifier.
        attr_accessor :campaign_id
        # Agent-scoped creative identifier.
        attr_accessor :creative_id
        # Timestamp when the attribution token expires.
        attr_accessor :expires_at
        # Agent-issued secret to validate the legitimacy of the source of this data.
        attr_accessor :identification_token
        # Timestamp for when the attribution token was issued.
        attr_accessor :issued_at
        # Identifier for the attribution agent / affiliate network namespace.
        attr_accessor :provider
        # Agent-scoped affiliate/publisher identifier.
        attr_accessor :publisher_id
        # Freeform key/value pairs for additional non-sensitive per-agent data.
        attr_accessor :shared_metadata
        # Context about where the attribution originated.
        attr_accessor :source
        # Agent-scoped sub-tracking identifier.
        attr_accessor :sub_id
        # Whether this is the first or last touchpoint.
        attr_accessor :touchpoint

        def initialize(
          campaign_id: nil,
          creative_id: nil,
          expires_at: nil,
          identification_token: nil,
          issued_at: nil,
          provider: nil,
          publisher_id: nil,
          shared_metadata: nil,
          source: nil,
          sub_id: nil,
          touchpoint: nil
        )
          @campaign_id = campaign_id
          @creative_id = creative_id
          @expires_at = expires_at
          @identification_token = identification_token
          @issued_at = issued_at
          @provider = provider
          @publisher_id = publisher_id
          @shared_metadata = shared_metadata
          @source = source
          @sub_id = sub_id
          @touchpoint = touchpoint
        end
      end

      class BuyerConsents < ::Stripe::RequestParams
        class Marketing < ::Stripe::RequestParams
          class Consent < ::Stripe::RequestParams
            # The marketing consent channel.
            attr_accessor :channel
            # The consent status. Use 'granted' to indicate the buyer has opted in.
            attr_accessor :status

            def initialize(channel: nil, status: nil)
              @channel = channel
              @status = status
            end
          end
          # The list of marketing consent entries.
          attr_accessor :consents

          def initialize(consents: nil)
            @consents = consents
          end
        end
        # The marketing consent data for the buyer.
        attr_accessor :marketing

        def initialize(marketing: nil)
          @marketing = marketing
        end
      end

      class RiskDetails < ::Stripe::RequestParams
        class ClientDeviceMetadataDetails < ::Stripe::RequestParams
          # The radar session.
          attr_accessor :radar_session
          # The referrer of the client device.
          attr_accessor :referrer
          # The remote IP address of the client device.
          attr_accessor :remote_ip
          # The time on page in milliseconds.
          attr_accessor :time_on_page_ms
          # The user agent of the client device.
          attr_accessor :user_agent

          def initialize(
            radar_session: nil,
            referrer: nil,
            remote_ip: nil,
            time_on_page_ms: nil,
            user_agent: nil
          )
            @radar_session = radar_session
            @referrer = referrer
            @remote_ip = remote_ip
            @time_on_page_ms = time_on_page_ms
            @user_agent = user_agent
          end
        end
        # The client device metadata details for this requested session.
        attr_accessor :client_device_metadata_details

        def initialize(client_device_metadata_details: nil)
          @client_device_metadata_details = client_device_metadata_details
        end
      end
      # Affiliate attribution data associated with this requested session.
      attr_accessor :affiliate_attribution
      # The buyer's consent choices for marketing communications.
      attr_accessor :buyer_consents
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The PaymentMethod to use with the requested session.
      attr_accessor :payment_method
      # The URL to redirect your customer back to after they authenticate or complete a payment action. Required for redirect-based payment methods such as Affirm or Klarna.
      attr_accessor :return_url
      # Risk details/signals associated with the requested session
      attr_accessor :risk_details

      def initialize(
        affiliate_attribution: nil,
        buyer_consents: nil,
        expand: nil,
        payment_method: nil,
        return_url: nil,
        risk_details: nil
      )
        @affiliate_attribution = affiliate_attribution
        @buyer_consents = buyer_consents
        @expand = expand
        @payment_method = payment_method
        @return_url = return_url
        @risk_details = risk_details
      end
    end
  end
end
