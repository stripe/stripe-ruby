# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module DelegatedCheckout
    class RequestedSessionConfirmParams < ::Stripe::RequestParams
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
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The PaymentMethod to use with the requested session.
      attr_accessor :payment_method
      # Risk details/signals associated with the requested session
      attr_accessor :risk_details

      def initialize(expand: nil, payment_method: nil, risk_details: nil)
        @expand = expand
        @payment_method = payment_method
        @risk_details = risk_details
      end
    end
  end
end
