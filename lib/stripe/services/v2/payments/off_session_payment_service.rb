# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      class OffSessionPaymentService < StripeService
        class ListParams < Stripe::RequestParams
          # The page size limit, if not provided the default is 20.
          attr_accessor :limit

          def initialize(limit: nil)
            @limit = limit
          end
        end

        class CreateParams < Stripe::RequestParams
          class RetryDetails < Stripe::RequestParams
            # How you want Stripe to retry the payment.
            attr_accessor :retry_strategy

            def initialize(retry_strategy: nil)
              @retry_strategy = retry_strategy
            end
          end

          class TransferData < Stripe::RequestParams
            # Amount in minor units that you want to transfer.
            attr_accessor :amount
            # ID of the connected account where you want money to go.
            attr_accessor :destination

            def initialize(amount: nil, destination: nil)
              @amount = amount
              @destination = destination
            end
          end
          # Amount you want to collect.
          attr_accessor :amount
          # The frequency of the OSP.
          attr_accessor :cadence
          # Customer that owns the provided payment method.
          attr_accessor :customer
          # Any of your internal data you want to track here.
          attr_accessor :metadata
          # The OBO merchant you want to use.
          attr_accessor :on_behalf_of
          # Payment method you want to debit. Must be attached to a customer and set up for off-session usage.
          attr_accessor :payment_method
          # How you want stripe to retry the OSP.
          attr_accessor :retry_details
          # String you want to appear on your customer's statement.
          attr_accessor :statement_descriptor
          # Suffix appended to your account level descriptor.
          attr_accessor :statement_descriptor_suffix
          # Test clock to be used for testing your retry handling. Only usable in a sandbox.
          attr_accessor :test_clock
          # How you want to transfer the funds to your connected accounts.
          attr_accessor :transfer_data

          def initialize(
            amount: nil,
            cadence: nil,
            customer: nil,
            metadata: nil,
            on_behalf_of: nil,
            payment_method: nil,
            retry_details: nil,
            statement_descriptor: nil,
            statement_descriptor_suffix: nil,
            test_clock: nil,
            transfer_data: nil
          )
            @amount = amount
            @cadence = cadence
            @customer = customer
            @metadata = metadata
            @on_behalf_of = on_behalf_of
            @payment_method = payment_method
            @retry_details = retry_details
            @statement_descriptor = statement_descriptor
            @statement_descriptor_suffix = statement_descriptor_suffix
            @test_clock = test_clock
            @transfer_data = transfer_data
          end
        end

        class RetrieveParams < Stripe::RequestParams; end
        class CancelParams < Stripe::RequestParams; end

        # Cancel OSP.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/payments/off_session_payments/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Create OSP.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/payments/off_session_payments",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List OSPs matching filter.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/payments/off_session_payments",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve OSP by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/payments/off_session_payments/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
