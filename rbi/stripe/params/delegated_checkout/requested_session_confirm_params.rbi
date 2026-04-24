# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module DelegatedCheckout
    class RequestedSessionConfirmParams < ::Stripe::RequestParams
      class AffiliateAttribution < ::Stripe::RequestParams
        class Source < ::Stripe::RequestParams
          # The platform where the attribution originated.
          sig { returns(T.nilable(String)) }
          def platform; end
          sig { params(_platform: T.nilable(String)).returns(T.nilable(String)) }
          def platform=(_platform); end
          # The type of the attribution source.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # The URL where the attribution originated.
          sig { returns(T.nilable(String)) }
          def url; end
          sig { params(_url: T.nilable(String)).returns(T.nilable(String)) }
          def url=(_url); end
          sig { params(platform: T.nilable(String), type: String, url: T.nilable(String)).void }
          def initialize(platform: nil, type: nil, url: nil); end
        end
        # Agent-scoped campaign identifier.
        sig { returns(T.nilable(String)) }
        def campaign_id; end
        sig { params(_campaign_id: T.nilable(String)).returns(T.nilable(String)) }
        def campaign_id=(_campaign_id); end
        # Agent-scoped creative identifier.
        sig { returns(T.nilable(String)) }
        def creative_id; end
        sig { params(_creative_id: T.nilable(String)).returns(T.nilable(String)) }
        def creative_id=(_creative_id); end
        # Timestamp when the attribution token expires.
        sig { returns(Integer) }
        def expires_at; end
        sig { params(_expires_at: Integer).returns(Integer) }
        def expires_at=(_expires_at); end
        # Agent-issued secret to validate the legitimacy of the source of this data.
        sig { returns(String) }
        def identification_token; end
        sig { params(_identification_token: String).returns(String) }
        def identification_token=(_identification_token); end
        # Timestamp for when the attribution token was issued.
        sig { returns(Integer) }
        def issued_at; end
        sig { params(_issued_at: Integer).returns(Integer) }
        def issued_at=(_issued_at); end
        # Identifier for the attribution agent / affiliate network namespace.
        sig { returns(String) }
        def provider; end
        sig { params(_provider: String).returns(String) }
        def provider=(_provider); end
        # Agent-scoped affiliate/publisher identifier.
        sig { returns(T.nilable(String)) }
        def publisher_id; end
        sig { params(_publisher_id: T.nilable(String)).returns(T.nilable(String)) }
        def publisher_id=(_publisher_id); end
        # Freeform key/value pairs for additional non-sensitive per-agent data.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def shared_metadata; end
        sig {
          params(_shared_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def shared_metadata=(_shared_metadata); end
        # Context about where the attribution originated.
        sig {
          returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams::AffiliateAttribution::Source))
         }
        def source; end
        sig {
          params(_source: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams::AffiliateAttribution::Source)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams::AffiliateAttribution::Source))
         }
        def source=(_source); end
        # Agent-scoped sub-tracking identifier.
        sig { returns(T.nilable(String)) }
        def sub_id; end
        sig { params(_sub_id: T.nilable(String)).returns(T.nilable(String)) }
        def sub_id=(_sub_id); end
        # Whether this is the first or last touchpoint.
        sig { returns(String) }
        def touchpoint; end
        sig { params(_touchpoint: String).returns(String) }
        def touchpoint=(_touchpoint); end
        sig {
          params(campaign_id: T.nilable(String), creative_id: T.nilable(String), expires_at: Integer, identification_token: String, issued_at: Integer, provider: String, publisher_id: T.nilable(String), shared_metadata: T.nilable(T::Hash[String, String]), source: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams::AffiliateAttribution::Source), sub_id: T.nilable(String), touchpoint: String).void
         }
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
        ); end
      end
      class RiskDetails < ::Stripe::RequestParams
        class ClientDeviceMetadataDetails < ::Stripe::RequestParams
          # The radar session.
          sig { returns(T.nilable(String)) }
          def radar_session; end
          sig { params(_radar_session: T.nilable(String)).returns(T.nilable(String)) }
          def radar_session=(_radar_session); end
          # The referrer of the client device.
          sig { returns(T.nilable(String)) }
          def referrer; end
          sig { params(_referrer: T.nilable(String)).returns(T.nilable(String)) }
          def referrer=(_referrer); end
          # The remote IP address of the client device.
          sig { returns(T.nilable(String)) }
          def remote_ip; end
          sig { params(_remote_ip: T.nilable(String)).returns(T.nilable(String)) }
          def remote_ip=(_remote_ip); end
          # The time on page in milliseconds.
          sig { returns(T.nilable(Integer)) }
          def time_on_page_ms; end
          sig { params(_time_on_page_ms: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def time_on_page_ms=(_time_on_page_ms); end
          # The user agent of the client device.
          sig { returns(T.nilable(String)) }
          def user_agent; end
          sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
          def user_agent=(_user_agent); end
          sig {
            params(radar_session: T.nilable(String), referrer: T.nilable(String), remote_ip: T.nilable(String), time_on_page_ms: T.nilable(Integer), user_agent: T.nilable(String)).void
           }
          def initialize(
            radar_session: nil,
            referrer: nil,
            remote_ip: nil,
            time_on_page_ms: nil,
            user_agent: nil
          ); end
        end
        # The client device metadata details for this requested session.
        sig {
          returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams::RiskDetails::ClientDeviceMetadataDetails))
         }
        def client_device_metadata_details; end
        sig {
          params(_client_device_metadata_details: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams::RiskDetails::ClientDeviceMetadataDetails)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams::RiskDetails::ClientDeviceMetadataDetails))
         }
        def client_device_metadata_details=(_client_device_metadata_details); end
        sig {
          params(client_device_metadata_details: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams::RiskDetails::ClientDeviceMetadataDetails)).void
         }
        def initialize(client_device_metadata_details: nil); end
      end
      # Affiliate attribution data associated with this requested session.
      sig {
        returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams::AffiliateAttribution))
       }
      def affiliate_attribution; end
      sig {
        params(_affiliate_attribution: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams::AffiliateAttribution)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams::AffiliateAttribution))
       }
      def affiliate_attribution=(_affiliate_attribution); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The PaymentMethod to use with the requested session.
      sig { returns(T.nilable(String)) }
      def payment_method; end
      sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method=(_payment_method); end
      # The URL to redirect your customer back to after they authenticate or complete a payment action. Required for redirect-based payment methods such as Affirm or Klarna.
      sig { returns(T.nilable(String)) }
      def return_url; end
      sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
      def return_url=(_return_url); end
      # Risk details/signals associated with the requested session
      sig {
        returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams::RiskDetails))
       }
      def risk_details; end
      sig {
        params(_risk_details: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams::RiskDetails)).returns(T.nilable(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams::RiskDetails))
       }
      def risk_details=(_risk_details); end
      sig {
        params(affiliate_attribution: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams::AffiliateAttribution), expand: T.nilable(T::Array[String]), payment_method: T.nilable(String), return_url: T.nilable(String), risk_details: T.nilable(::Stripe::DelegatedCheckout::RequestedSessionConfirmParams::RiskDetails)).void
       }
      def initialize(
        affiliate_attribution: nil,
        expand: nil,
        payment_method: nil,
        return_url: nil,
        risk_details: nil
      ); end
    end
  end
end