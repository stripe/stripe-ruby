# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    # A Crypto Onramp Session represents your customer's session as they purchase cryptocurrency through Stripe. Once payment is successful, Stripe will fulfill the delivery of cryptocurrency to your user's wallet and contain a reference to the crypto transaction ID.
    #
    # You can create an onramp session on your server and embed the widget on your frontend. Alternatively, you can redirect your users to the standalone hosted onramp.
    #
    # Related guide: [Integrate the onramp](https://docs.stripe.com/crypto/integrate-the-onramp)
    class OnrampSession < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "crypto.onramp_session"
      def self.object_name
        "crypto.onramp_session"
      end

      class TransactionDetails < ::Stripe::StripeObject
        class Fees < ::Stripe::StripeObject
          # The cost associated with moving crypto from Stripe to the end consumer's wallet. e.g: for ETH, this is called 'gas fee', for BTC this is a 'miner's fee'.
          attr_reader :network_fee_amount
          # Fee for processing the transaction.
          attr_reader :transaction_fee_amount

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class WalletAddresses < ::Stripe::StripeObject
          class DestinationTags < ::Stripe::StripeObject
            # A stellar destination tag
            attr_reader :stellar

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # An avalanche address
          attr_reader :avalanche
          # A base address
          attr_reader :base_network
          # A bitcoin address
          attr_reader :bitcoin
          # The end customer's crypto wallet destination tag (for each network) to use for this transaction.
          attr_reader :destination_tags
          # An ethereum address
          attr_reader :ethereum
          # An optimism address
          attr_reader :optimism
          # A polygon address
          attr_reader :polygon
          # A solana address
          attr_reader :solana
          # A stellar address
          attr_reader :stellar
          # A Sui address
          attr_reader :sui
          # A worldchain address
          attr_reader :worldchain

          def self.inner_class_types
            @inner_class_types = { destination_tags: DestinationTags }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount of crypto the customer will get deposited into their wallet
        attr_reader :destination_amount
        # If a platform wants to lock the currencies an session will support, they can add supported currencies to this array. If left null, the experience will allow selection of all supported destination currencies.
        attr_reader :destination_currencies
        # The selected `destination_currency` to convert the `source` to. This should be a crypto currency code. If `destination_currencies` is set, it must be a value in that array.
        attr_reader :destination_currency
        # The specific crypto network the `destination_currency` is settled on. If `destination_networks` is set, it must be a value in that array.
        attr_reader :destination_network
        # If a platform wants to lock the supported networks, they can do so through this array. If left null, the experience will allow selection of all supported networks.
        attr_reader :destination_networks
        # Details about the fees associated with this transaction
        attr_reader :fees
        # Whether or not to lock the suggested wallet address.
        attr_reader :lock_wallet_address
        # Speed at which the cryptocurrency is delivered to the wallet
        # One of:
        #  `instant` (default): crypto is delivered when payment is confirmed
        #  `standard`: crypto is delivered when payment settles
        attr_reader :settlement_speed
        # The amount of fiat we intend to onramp - excluding fees
        attr_reader :source_amount
        # A fiat currency code
        attr_reader :source_currency
        # The on-chain transaction hash (also referred to as transaction ID or tx_hash) of the transaction that was sent to the customer's wallet. The format varies by chain (e.g. `0xc257...1a95` on Ethereum, `5UB1...v3xZ` on Solana, or `a1b2...bf00` on Bitcoin). This will only be set if the session reaches `status=fulfillment_complete` and we've transferred the crypto successfully to the external wallet.
        attr_reader :transaction_id
        # The consumer's wallet address (where crypto will be sent to)
        attr_reader :wallet_address
        # The end customer's crypto wallet address (for each network) to use for this transaction.
        attr_reader :wallet_addresses

        def self.inner_class_types
          @inner_class_types = { fees: Fees, wallet_addresses: WalletAddresses }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # A client secret that can be used to drive a single session using our embedded widget.
      #
      # Related guide: [Set up an onramp integration](https://docs.stripe.com/crypto/integrate-the-onramp)
      attr_reader :client_secret
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if any user kyc details were provided during the creation of the onramp session. Otherwise, has the value `false`.
      attr_reader :kyc_details_provided
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Redirect your users to the URL for a prebuilt frontend integration of the crypto onramp on the standalone hosted onramp.
      #
      # Related guide: [Mint a session with a redirect url](https://docs.stripe.com/crypto/standalone-hosted-onramp#mint-a-session-with-a-redirect-url)
      attr_reader :redirect_url
      # The status of the Onramp Session. One of = `{initialized, rejected, requires_payment, fulfillment_processing, fulfillment_complete}`
      attr_reader :status
      # Attribute for field transaction_details
      attr_reader :transaction_details

      # Completes a headless CryptoOnrampSession.
      #
      # This method will attempt to confirm the payment and execute the quote to deliver the crypto to the customer.
      def checkout(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/crypto/onramp_sessions/%<id>s/checkout", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Completes a headless CryptoOnrampSession.
      #
      # This method will attempt to confirm the payment and execute the quote to deliver the crypto to the customer.
      def self.checkout(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/crypto/onramp_sessions/%<id>s/checkout", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Creates a CryptoOnrampSession object.
      #
      # After the CryptoOnrampSession is created, display the onramp session modal using the client_secret.
      #
      # Related guide: [Set up an onramp integration](https://docs.stripe.com/docs/crypto/integrate-the-onramp)
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/crypto/onramp_sessions",
          params: params,
          opts: opts
        )
      end

      # Returns a list of onramp sessions that match the filter criteria. The onramp sessions are returned in sorted order, with the most recent onramp sessions appearing first.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/crypto/onramp_sessions",
          params: params,
          opts: opts
        )
      end

      # Refreshes an executable quote for a CryptoOnrampSession.
      def quote(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/crypto/onramp_sessions/%<id>s/quote", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Refreshes an executable quote for a CryptoOnrampSession.
      def self.quote(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/crypto/onramp_sessions/%<id>s/quote", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = { transaction_details: TransactionDetails }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
