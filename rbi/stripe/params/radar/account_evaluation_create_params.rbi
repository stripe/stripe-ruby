# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    class AccountEvaluationCreateParams < ::Stripe::RequestParams
      class LoginInitiated < ::Stripe::RequestParams
        class ClientDeviceMetadataDetails < ::Stripe::RequestParams
          # ID for the Radar Session associated with the account evaluation.
          sig { returns(String) }
          def radar_session; end
          sig { params(_radar_session: String).returns(String) }
          def radar_session=(_radar_session); end
          sig { params(radar_session: String).void }
          def initialize(radar_session: nil); end
        end
        # Client device metadata details (e.g., radar_session).
        sig {
          returns(Radar::AccountEvaluationCreateParams::LoginInitiated::ClientDeviceMetadataDetails)
         }
        def client_device_metadata_details; end
        sig {
          params(_client_device_metadata_details: Radar::AccountEvaluationCreateParams::LoginInitiated::ClientDeviceMetadataDetails).returns(Radar::AccountEvaluationCreateParams::LoginInitiated::ClientDeviceMetadataDetails)
         }
        def client_device_metadata_details=(_client_device_metadata_details); end
        # Stripe customer ID
        sig { returns(String) }
        def customer; end
        sig { params(_customer: String).returns(String) }
        def customer=(_customer); end
        sig {
          params(client_device_metadata_details: Radar::AccountEvaluationCreateParams::LoginInitiated::ClientDeviceMetadataDetails, customer: String).void
         }
        def initialize(client_device_metadata_details: nil, customer: nil); end
      end
      class RegistrationInitiated < ::Stripe::RequestParams
        class ClientDeviceMetadataDetails < ::Stripe::RequestParams
          # ID for the Radar Session associated with the account evaluation.
          sig { returns(String) }
          def radar_session; end
          sig { params(_radar_session: String).returns(String) }
          def radar_session=(_radar_session); end
          sig { params(radar_session: String).void }
          def initialize(radar_session: nil); end
        end
        class CustomerData < ::Stripe::RequestParams
          # Customer email
          sig { returns(T.nilable(String)) }
          def email; end
          sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
          def email=(_email); end
          # Customer name
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # Customer phone
          sig { returns(T.nilable(String)) }
          def phone; end
          sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
          def phone=(_phone); end
          sig {
            params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
           }
          def initialize(email: nil, name: nil, phone: nil); end
        end
        # Client device metadata details (e.g., radar_session).
        sig {
          returns(Radar::AccountEvaluationCreateParams::RegistrationInitiated::ClientDeviceMetadataDetails)
         }
        def client_device_metadata_details; end
        sig {
          params(_client_device_metadata_details: Radar::AccountEvaluationCreateParams::RegistrationInitiated::ClientDeviceMetadataDetails).returns(Radar::AccountEvaluationCreateParams::RegistrationInitiated::ClientDeviceMetadataDetails)
         }
        def client_device_metadata_details=(_client_device_metadata_details); end
        # Stripe customer ID
        sig { returns(T.nilable(String)) }
        def customer; end
        sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
        def customer=(_customer); end
        # Customer data
        sig {
          returns(T.nilable(Radar::AccountEvaluationCreateParams::RegistrationInitiated::CustomerData))
         }
        def customer_data; end
        sig {
          params(_customer_data: T.nilable(Radar::AccountEvaluationCreateParams::RegistrationInitiated::CustomerData)).returns(T.nilable(Radar::AccountEvaluationCreateParams::RegistrationInitiated::CustomerData))
         }
        def customer_data=(_customer_data); end
        sig {
          params(client_device_metadata_details: Radar::AccountEvaluationCreateParams::RegistrationInitiated::ClientDeviceMetadataDetails, customer: T.nilable(String), customer_data: T.nilable(Radar::AccountEvaluationCreateParams::RegistrationInitiated::CustomerData)).void
         }
        def initialize(client_device_metadata_details: nil, customer: nil, customer_data: nil); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Event payload for login_initiated.
      sig { returns(T.nilable(Radar::AccountEvaluationCreateParams::LoginInitiated)) }
      def login_initiated; end
      sig {
        params(_login_initiated: T.nilable(Radar::AccountEvaluationCreateParams::LoginInitiated)).returns(T.nilable(Radar::AccountEvaluationCreateParams::LoginInitiated))
       }
      def login_initiated=(_login_initiated); end
      # Event payload for registration_initiated.
      sig { returns(T.nilable(Radar::AccountEvaluationCreateParams::RegistrationInitiated)) }
      def registration_initiated; end
      sig {
        params(_registration_initiated: T.nilable(Radar::AccountEvaluationCreateParams::RegistrationInitiated)).returns(T.nilable(Radar::AccountEvaluationCreateParams::RegistrationInitiated))
       }
      def registration_initiated=(_registration_initiated); end
      # The type of evaluation requested.
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig {
        params(expand: T.nilable(T::Array[String]), login_initiated: T.nilable(Radar::AccountEvaluationCreateParams::LoginInitiated), registration_initiated: T.nilable(Radar::AccountEvaluationCreateParams::RegistrationInitiated), type: String).void
       }
      def initialize(expand: nil, login_initiated: nil, registration_initiated: nil, type: nil); end
    end
  end
end