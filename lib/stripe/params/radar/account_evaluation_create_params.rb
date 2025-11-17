# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class AccountEvaluationCreateParams < ::Stripe::RequestParams
      class LoginInitiated < ::Stripe::RequestParams
        class ClientDeviceMetadataDetails < ::Stripe::RequestParams
          # ID for the Radar Session associated with the account evaluation.
          attr_accessor :radar_session

          def initialize(radar_session: nil)
            @radar_session = radar_session
          end
        end
        # Client device metadata details (e.g., radar_session).
        attr_accessor :client_device_metadata_details
        # Stripe customer ID
        attr_accessor :customer

        def initialize(client_device_metadata_details: nil, customer: nil)
          @client_device_metadata_details = client_device_metadata_details
          @customer = customer
        end
      end

      class RegistrationInitiated < ::Stripe::RequestParams
        class ClientDeviceMetadataDetails < ::Stripe::RequestParams
          # ID for the Radar Session associated with the account evaluation.
          attr_accessor :radar_session

          def initialize(radar_session: nil)
            @radar_session = radar_session
          end
        end

        class CustomerData < ::Stripe::RequestParams
          # Customer email
          attr_accessor :email
          # Customer name
          attr_accessor :name
          # Customer phone
          attr_accessor :phone

          def initialize(email: nil, name: nil, phone: nil)
            @email = email
            @name = name
            @phone = phone
          end
        end
        # Client device metadata details (e.g., radar_session).
        attr_accessor :client_device_metadata_details
        # Stripe customer ID
        attr_accessor :customer
        # Customer data
        attr_accessor :customer_data

        def initialize(client_device_metadata_details: nil, customer: nil, customer_data: nil)
          @client_device_metadata_details = client_device_metadata_details
          @customer = customer
          @customer_data = customer_data
        end
      end
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Event payload for login_initiated.
      attr_accessor :login_initiated
      # Event payload for registration_initiated.
      attr_accessor :registration_initiated
      # The type of evaluation requested.
      attr_accessor :type

      def initialize(expand: nil, login_initiated: nil, registration_initiated: nil, type: nil)
        @expand = expand
        @login_initiated = login_initiated
        @registration_initiated = registration_initiated
        @type = type
      end
    end
  end
end
