# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class CustomerEvaluationCreateParams < ::Stripe::RequestParams
      class EvaluationContext < ::Stripe::RequestParams
        class ClientDetails < ::Stripe::RequestParams
          # ID for the Radar Session associated with the customer evaluation.
          attr_accessor :radar_session

          def initialize(radar_session: nil)
            @radar_session = radar_session
          end
        end

        class CustomerDetails < ::Stripe::RequestParams
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
          # The ID of an existing Customer.
          attr_accessor :customer
          # Customer data
          attr_accessor :customer_data

          def initialize(customer: nil, customer_data: nil)
            @customer = customer
            @customer_data = customer_data
          end
        end
        # Client details context.
        attr_accessor :client_details
        # Customer details context.
        attr_accessor :customer_details
        # The type of context entry.
        attr_accessor :type

        def initialize(client_details: nil, customer_details: nil, type: nil)
          @client_details = client_details
          @customer_details = customer_details
          @type = type
        end
      end
      # Array of context entries for the evaluation.
      attr_accessor :evaluation_context
      # The type of evaluation event.
      attr_accessor :event_type
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(evaluation_context: nil, event_type: nil, expand: nil)
        @evaluation_context = evaluation_context
        @event_type = event_type
        @expand = expand
      end
    end
  end
end
