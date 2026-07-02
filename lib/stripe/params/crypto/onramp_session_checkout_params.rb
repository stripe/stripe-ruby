# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    class OnrampSessionCheckoutParams < ::Stripe::RequestParams
      class MandateData < ::Stripe::RequestParams
        class CustomerAcceptance < ::Stripe::RequestParams
          class Offline < ::Stripe::RequestParams; end

          class Online < ::Stripe::RequestParams
            # The IP address from which the Mandate was accepted by the customer.
            attr_accessor :ip_address
            # The user agent of the browser from which the Mandate was accepted by the customer.
            attr_accessor :user_agent

            def initialize(ip_address: nil, user_agent: nil)
              @ip_address = ip_address
              @user_agent = user_agent
            end
          end
          # The time at which the customer accepted the Mandate.
          attr_accessor :accepted_at
          # If this is a Mandate accepted offline, this hash contains details about the offline acceptance.
          attr_accessor :offline
          # If this is a Mandate accepted online, this hash contains details about the online acceptance.
          attr_accessor :online
          # The type of customer acceptance information included with the Mandate. One of `online` or `offline`.
          attr_accessor :type

          def initialize(accepted_at: nil, offline: nil, online: nil, type: nil)
            @accepted_at = accepted_at
            @offline = offline
            @online = online
            @type = type
          end
        end
        # This hash contains details about the customer acceptance of the Mandate.
        attr_accessor :customer_acceptance

        def initialize(customer_acceptance: nil)
          @customer_acceptance = customer_acceptance
        end
      end
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # This hash contains details about the mandate to create
      attr_accessor :mandate_data

      def initialize(expand: nil, mandate_data: nil)
        @expand = expand
        @mandate_data = mandate_data
      end
    end
  end
end
