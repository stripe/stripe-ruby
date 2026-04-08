# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    class CustomerEvaluationCreateParams < ::Stripe::RequestParams
      class EvaluationContext < ::Stripe::RequestParams
        class ClientDetails < ::Stripe::RequestParams
          # ID for the Radar Session associated with the customer evaluation.
          sig { returns(String) }
          def radar_session; end
          sig { params(_radar_session: String).returns(String) }
          def radar_session=(_radar_session); end
          sig { params(radar_session: String).void }
          def initialize(radar_session: nil); end
        end
        class CustomerDetails < ::Stripe::RequestParams
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
          # The ID of an existing Customer.
          sig { returns(T.nilable(String)) }
          def customer; end
          sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
          def customer=(_customer); end
          # Customer data
          sig {
            returns(T.nilable(::Stripe::Radar::CustomerEvaluationCreateParams::EvaluationContext::CustomerDetails::CustomerData))
           }
          def customer_data; end
          sig {
            params(_customer_data: T.nilable(::Stripe::Radar::CustomerEvaluationCreateParams::EvaluationContext::CustomerDetails::CustomerData)).returns(T.nilable(::Stripe::Radar::CustomerEvaluationCreateParams::EvaluationContext::CustomerDetails::CustomerData))
           }
          def customer_data=(_customer_data); end
          sig {
            params(customer: T.nilable(String), customer_data: T.nilable(::Stripe::Radar::CustomerEvaluationCreateParams::EvaluationContext::CustomerDetails::CustomerData)).void
           }
          def initialize(customer: nil, customer_data: nil); end
        end
        # Client details context.
        sig {
          returns(T.nilable(::Stripe::Radar::CustomerEvaluationCreateParams::EvaluationContext::ClientDetails))
         }
        def client_details; end
        sig {
          params(_client_details: T.nilable(::Stripe::Radar::CustomerEvaluationCreateParams::EvaluationContext::ClientDetails)).returns(T.nilable(::Stripe::Radar::CustomerEvaluationCreateParams::EvaluationContext::ClientDetails))
         }
        def client_details=(_client_details); end
        # Customer details context.
        sig {
          returns(T.nilable(::Stripe::Radar::CustomerEvaluationCreateParams::EvaluationContext::CustomerDetails))
         }
        def customer_details; end
        sig {
          params(_customer_details: T.nilable(::Stripe::Radar::CustomerEvaluationCreateParams::EvaluationContext::CustomerDetails)).returns(T.nilable(::Stripe::Radar::CustomerEvaluationCreateParams::EvaluationContext::CustomerDetails))
         }
        def customer_details=(_customer_details); end
        # The type of context entry.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(client_details: T.nilable(::Stripe::Radar::CustomerEvaluationCreateParams::EvaluationContext::ClientDetails), customer_details: T.nilable(::Stripe::Radar::CustomerEvaluationCreateParams::EvaluationContext::CustomerDetails), type: String).void
         }
        def initialize(client_details: nil, customer_details: nil, type: nil); end
      end
      # Array of context entries for the evaluation.
      sig { returns(T::Array[::Stripe::Radar::CustomerEvaluationCreateParams::EvaluationContext]) }
      def evaluation_context; end
      sig {
        params(_evaluation_context: T::Array[::Stripe::Radar::CustomerEvaluationCreateParams::EvaluationContext]).returns(T::Array[::Stripe::Radar::CustomerEvaluationCreateParams::EvaluationContext])
       }
      def evaluation_context=(_evaluation_context); end
      # The type of evaluation event.
      sig { returns(String) }
      def event_type; end
      sig { params(_event_type: String).returns(String) }
      def event_type=(_event_type); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig {
        params(evaluation_context: T::Array[::Stripe::Radar::CustomerEvaluationCreateParams::EvaluationContext], event_type: String, expand: T.nilable(T::Array[String])).void
       }
      def initialize(evaluation_context: nil, event_type: nil, expand: nil); end
    end
  end
end