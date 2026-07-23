# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Crypto
    # A Crypto Onramp Session represents your customer's session as they purchase cryptocurrency through Stripe. Once payment is successful, Stripe will fulfill the delivery of cryptocurrency to your user's wallet and contain a reference to the crypto transaction ID.
    #
    # You can create an onramp session on your server and embed the widget on your frontend. Alternatively, you can redirect your users to the standalone hosted onramp.
    #
    # Related guide: [Integrate the onramp](https://docs.stripe.com/crypto/integrate-the-onramp)
    class OnrampSession < APIResource
      class TransactionDetails < ::Stripe::StripeObject
        class Fees < ::Stripe::StripeObject
          # The cost associated with moving crypto from Stripe to the end consumer's wallet. e.g: for ETH, this is called 'gas fee', for BTC this is a 'miner's fee'.
          sig { returns(T.nilable(String)) }
          def network_fee_amount; end
          # Fee for processing the transaction.
          sig { returns(T.nilable(String)) }
          def transaction_fee_amount; end
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
            sig { returns(T.nilable(String)) }
            def stellar; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # An avalanche address
          sig { returns(T.nilable(String)) }
          def avalanche; end
          # A base address
          sig { returns(T.nilable(String)) }
          def base_network; end
          # A bitcoin address
          sig { returns(T.nilable(String)) }
          def bitcoin; end
          # The end customer's crypto wallet destination tag (for each network) to use for this transaction.
          sig { returns(T.nilable(DestinationTags)) }
          def destination_tags; end
          # An ethereum address
          sig { returns(T.nilable(String)) }
          def ethereum; end
          # An optimism address
          sig { returns(T.nilable(String)) }
          def optimism; end
          # A polygon address
          sig { returns(T.nilable(String)) }
          def polygon; end
          # A solana address
          sig { returns(T.nilable(String)) }
          def solana; end
          # A stellar address
          sig { returns(T.nilable(String)) }
          def stellar; end
          # A Sui address
          sig { returns(T.nilable(String)) }
          def sui; end
          # A worldchain address
          sig { returns(T.nilable(String)) }
          def worldchain; end
          def self.inner_class_types
            @inner_class_types = {destination_tags: DestinationTags}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount of crypto the customer will get deposited into their wallet
        sig { returns(T.nilable(String)) }
        def destination_amount; end
        # If a platform wants to lock the currencies an session will support, they can add supported currencies to this array. If left null, the experience will allow selection of all supported destination currencies.
        sig { returns(T.nilable(T::Array[String])) }
        def destination_currencies; end
        # The selected `destination_currency` to convert the `source` to. This should be a crypto currency code. If `destination_currencies` is set, it must be a value in that array.
        sig { returns(T.nilable(String)) }
        def destination_currency; end
        # The specific crypto network the `destination_currency` is settled on. If `destination_networks` is set, it must be a value in that array.
        sig { returns(T.nilable(String)) }
        def destination_network; end
        # If a platform wants to lock the supported networks, they can do so through this array. If left null, the experience will allow selection of all supported networks.
        sig { returns(T.nilable(T::Array[String])) }
        def destination_networks; end
        # Details about the fees associated with this transaction
        sig { returns(T.nilable(Fees)) }
        def fees; end
        # Whether or not to lock the suggested wallet address.
        sig { returns(T.nilable(T::Boolean)) }
        def lock_wallet_address; end
        # Speed at which the cryptocurrency is delivered to the wallet
        # One of:
        #  `instant` (default): crypto is delivered when payment is confirmed
        #  `standard`: crypto is delivered when payment settles
        sig { returns(T.nilable(String)) }
        def settlement_speed; end
        # The amount of fiat we intend to onramp - excluding fees
        sig { returns(T.nilable(String)) }
        def source_amount; end
        # A fiat currency code
        sig { returns(T.nilable(String)) }
        def source_currency; end
        # The on-chain transaction hash (also referred to as transaction ID or tx_hash) of the transaction that was sent to the customer's wallet. The format varies by chain (e.g. `0xc257...1a95` on Ethereum, `5UB1...v3xZ` on Solana, or `a1b2...bf00` on Bitcoin). This will only be set if the session reaches `status=fulfillment_complete` and we've transferred the crypto successfully to the external wallet.
        sig { returns(T.nilable(String)) }
        def transaction_id; end
        # The consumer's wallet address (where crypto will be sent to)
        sig { returns(T.nilable(String)) }
        def wallet_address; end
        # The end customer's crypto wallet address (for each network) to use for this transaction.
        sig { returns(T.nilable(WalletAddresses)) }
        def wallet_addresses; end
        def self.inner_class_types
          @inner_class_types = {fees: Fees, wallet_addresses: WalletAddresses}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # A client secret that can be used to drive a single session using our embedded widget.
      #
      # Related guide: [Set up an onramp integration](https://docs.stripe.com/crypto/integrate-the-onramp)
      sig { returns(String) }
      def client_secret; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if any user kyc details were provided during the creation of the onramp session. Otherwise, has the value `false`.
      sig { returns(T::Boolean) }
      def kyc_details_provided; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Redirect your users to the URL for a prebuilt frontend integration of the crypto onramp on the standalone hosted onramp.
      #
      # Related guide: [Mint a session with a redirect url](https://docs.stripe.com/crypto/standalone-hosted-onramp#mint-a-session-with-a-redirect-url)
      sig { returns(T.nilable(String)) }
      def redirect_url; end
      # The status of the Onramp Session. One of = `{initialized, rejected, requires_payment, fulfillment_processing, fulfillment_complete}`
      sig { returns(String) }
      def status; end
      # Attribute for field transaction_details
      sig { returns(TransactionDetails) }
      def transaction_details; end
      # Completes a headless CryptoOnrampSession.
      #
      # This method will attempt to confirm the payment and execute the quote to deliver the crypto to the customer.
      sig {
        params(params: T.any(::Stripe::Crypto::OnrampSessionCheckoutParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Crypto::OnrampSession)
       }
      def checkout(params = {}, opts = {}); end

      # Completes a headless CryptoOnrampSession.
      #
      # This method will attempt to confirm the payment and execute the quote to deliver the crypto to the customer.
      sig {
        params(id: String, params: T.any(::Stripe::Crypto::OnrampSessionCheckoutParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Crypto::OnrampSession)
       }
      def self.checkout(id, params = {}, opts = {}); end

      # Creates a CryptoOnrampSession object.
      #
      # After the CryptoOnrampSession is created, display the onramp session modal using the client_secret.
      #
      # Related guide: [Set up an onramp integration](https://docs.stripe.com/docs/crypto/integrate-the-onramp)
      sig {
        params(params: T.any(::Stripe::Crypto::OnrampSessionCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Crypto::OnrampSession)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of onramp sessions that match the filter criteria. The onramp sessions are returned in sorted order, with the most recent onramp sessions appearing first.
      sig {
        params(params: T.any(::Stripe::Crypto::OnrampSessionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Refreshes an executable quote for a CryptoOnrampSession.
      sig {
        params(params: T.any(::Stripe::Crypto::OnrampSessionQuoteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Crypto::OnrampSession)
       }
      def quote(params = {}, opts = {}); end

      # Refreshes an executable quote for a CryptoOnrampSession.
      sig {
        params(id: String, params: T.any(::Stripe::Crypto::OnrampSessionQuoteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Crypto::OnrampSession)
       }
      def self.quote(id, params = {}, opts = {}); end
    end
  end
end