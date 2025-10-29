# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module DelegatedCheckout
    class RequestedSessionConfirmParams < ::Stripe::RequestParams
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
          returns(T.nilable(DelegatedCheckout::RequestedSessionConfirmParams::RiskDetails::ClientDeviceMetadataDetails))
         }
        def client_device_metadata_details; end
        sig {
          params(_client_device_metadata_details: T.nilable(DelegatedCheckout::RequestedSessionConfirmParams::RiskDetails::ClientDeviceMetadataDetails)).returns(T.nilable(DelegatedCheckout::RequestedSessionConfirmParams::RiskDetails::ClientDeviceMetadataDetails))
         }
        def client_device_metadata_details=(_client_device_metadata_details); end
        sig {
          params(client_device_metadata_details: T.nilable(DelegatedCheckout::RequestedSessionConfirmParams::RiskDetails::ClientDeviceMetadataDetails)).void
         }
        def initialize(client_device_metadata_details: nil); end
      end
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
      # Risk details/signals associated with the requested session
      sig { returns(T.nilable(DelegatedCheckout::RequestedSessionConfirmParams::RiskDetails)) }
      def risk_details; end
      sig {
        params(_risk_details: T.nilable(DelegatedCheckout::RequestedSessionConfirmParams::RiskDetails)).returns(T.nilable(DelegatedCheckout::RequestedSessionConfirmParams::RiskDetails))
       }
      def risk_details=(_risk_details); end
      sig {
        params(expand: T.nilable(T::Array[String]), payment_method: T.nilable(String), risk_details: T.nilable(DelegatedCheckout::RequestedSessionConfirmParams::RiskDetails)).void
       }
      def initialize(expand: nil, payment_method: nil, risk_details: nil); end
    end
  end
end