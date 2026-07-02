# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Crypto
    class OnrampSessionCreateParams < ::Stripe::RequestParams
      class KycDetails < ::Stripe::RequestParams; end
      class WalletAddresses < ::Stripe::RequestParams
        class DestinationTags < ::Stripe::RequestParams
          # Attribute for param field stellar
          sig { returns(T.nilable(String)) }
          def stellar; end
          sig { params(_stellar: T.nilable(String)).returns(T.nilable(String)) }
          def stellar=(_stellar); end
          sig { params(stellar: T.nilable(String)).void }
          def initialize(stellar: nil); end
        end
        # The end customer's crypto wallet destination tag (for each network) to use for this transaction. This only applies for tag-based assets such as XLM.
        #
        # * When left null, the user enters their wallet in the onramp UI.
        sig {
          returns(T.nilable(::Stripe::Crypto::OnrampSessionCreateParams::WalletAddresses::DestinationTags))
         }
        def destination_tags; end
        sig {
          params(_destination_tags: T.nilable(::Stripe::Crypto::OnrampSessionCreateParams::WalletAddresses::DestinationTags)).returns(T.nilable(::Stripe::Crypto::OnrampSessionCreateParams::WalletAddresses::DestinationTags))
         }
        def destination_tags=(_destination_tags); end
        sig {
          params(destination_tags: T.nilable(::Stripe::Crypto::OnrampSessionCreateParams::WalletAddresses::DestinationTags)).void
         }
        def initialize(destination_tags: nil); end
      end
      # The IP address of the customer the platform intends to onramp.
      #
      # If the user's IP is in a region we can't support, we return an `HTTP 400` with an appropriate error code.
      #
      # We support IPv4 and IPv6 addresses. Geographic supportability is checked again later in the onramp flow, which provides a way to hide the onramp option from ineligible users for a better user experience.
      sig { returns(T.nilable(String)) }
      def customer_ip_address; end
      sig { params(_customer_ip_address: T.nilable(String)).returns(T.nilable(String)) }
      def customer_ip_address=(_customer_ip_address); end
      # The default amount of crypto to exchange into.
      #
      # * When left null, a default value is computed if `source_amount`, `destination_currency`, and `destination_network` are set.
      # * When set, both `destination_currency` and `destination_network` must also be set. All cryptocurrencies are supported to their full precisions (for example, 18 decimal places for `eth`). We validate and generate an error if the amount exceeds the supported precision based on the exchange currency. Setting `source_amount` is mutually exclusive with setting `destination_amount` (only one or the other is supported). Users can update the amount in the onramp UI.
      sig { returns(T.nilable(String)) }
      def destination_amount; end
      sig { params(_destination_amount: T.nilable(String)).returns(T.nilable(String)) }
      def destination_amount=(_destination_amount); end
      # The list of destination cryptocurrencies a user can choose from.
      #
      # * When left null, all supported cryptocurrencies are shown in the onramp UI subject to `destination_networks` if set.
      # * When set, it must be a non-empty array where all values in the array are valid cryptocurrencies. You can use it to lock users to a specific cryptocurrency by passing a single value array. Users **cannot** override this parameter.
      sig { returns(T.nilable(T::Array[String])) }
      def destination_currencies; end
      sig {
        params(_destination_currencies: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
       }
      def destination_currencies=(_destination_currencies); end
      # The default destination cryptocurrency.
      #
      # * When left null, the first value of `destination_currencies` is selected.
      # * When set, if `destination_currencies` is also set, the value of `destination_currency` must be present in that array. To lock a `destination_currency`, specify that value as the single value for `destination_currencies`. Users can select a different cryptocurrency in the onramp UI subject to `destination_currencies` if set.
      sig { returns(T.nilable(String)) }
      def destination_currency; end
      sig { params(_destination_currency: T.nilable(String)).returns(T.nilable(String)) }
      def destination_currency=(_destination_currency); end
      # The default destination crypto network.
      #
      # * When left null, the first value of `destination_networks` is selected.
      # * When set, if `destination_networks` is also set, the value of `destination_network` must be present in that array. To lock a `destination_network`, specify that value as the single value for `destination_networks`. Users can select a different network in the onramp UI subject to `destination_networks` if set.
      sig { returns(T.nilable(String)) }
      def destination_network; end
      sig { params(_destination_network: T.nilable(String)).returns(T.nilable(String)) }
      def destination_network=(_destination_network); end
      # The list of destination crypto networks user can choose from.
      #
      # * When left null, all supported crypto networks are shown in the onramp UI.
      # * When set, it must be a non-empty array where values in the array are each a valid crypto network. It can be used to lock users to a specific network by passing a single value array. Users **cannot** override this parameter.
      sig { returns(T.nilable(T::Array[String])) }
      def destination_networks; end
      sig {
        params(_destination_networks: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
       }
      def destination_networks=(_destination_networks); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Pre-populate some of the required KYC information for the user if you've already collected it within your application.
      #
      # Related guide: [Using the API](https://docs.stripe.com/crypto/using-the-api#how-to-pre-populate-customer-information)
      sig { returns(T.nilable(::Stripe::Crypto::OnrampSessionCreateParams::KycDetails)) }
      def kyc_details; end
      sig {
        params(_kyc_details: T.nilable(::Stripe::Crypto::OnrampSessionCreateParams::KycDetails)).returns(T.nilable(::Stripe::Crypto::OnrampSessionCreateParams::KycDetails))
       }
      def kyc_details=(_kyc_details); end
      # Whether or not to lock the suggested wallet address. If destination tags are provided, this will also lock the destination tags.
      sig { returns(T.nilable(T::Boolean)) }
      def lock_wallet_address; end
      sig { params(_lock_wallet_address: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def lock_wallet_address=(_lock_wallet_address); end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # Speed at which the cryptocurrency is delivered to the wallet
      # One of:
      #  `instant` (default): crypto is delivered when payment is confirmed
      #  `standard`: crypto is delivered when payment settles
      sig { returns(T.nilable(String)) }
      def settlement_speed; end
      sig { params(_settlement_speed: T.nilable(String)).returns(T.nilable(String)) }
      def settlement_speed=(_settlement_speed); end
      # The default amount of fiat (in decimal) to exchange into crypto.
      #
      # * When left null, a default value is computed if `destination_amount` is set.
      # * When set, setting `source_amount` is mutually exclusive with setting `destination_amount` (only one or the other is supported). We don't support fractional pennies. If fractional minor units of a currency are passed in, it generates an error. Users can update the value in the onramp UI.
      sig { returns(T.nilable(String)) }
      def source_amount; end
      sig { params(_source_amount: T.nilable(String)).returns(T.nilable(String)) }
      def source_amount=(_source_amount); end
      # The default source fiat currency for the onramp session.
      #
      # * When left null, a default currency is selected based on user locale.
      # * When set, it must be one of the fiat currencies supported by onramp. Users can still select a different currency in the onramp UI.
      sig { returns(T.nilable(String)) }
      def source_currency; end
      sig { params(_source_currency: T.nilable(String)).returns(T.nilable(String)) }
      def source_currency=(_source_currency); end
      # The end customer's crypto wallet address (for each network) to use for this transaction.
      #
      # * When left null, the user enters their wallet in the onramp UI.
      # * When set, the platform must set either `destination_networks` or `destination_network` and we perform address validation. Users can still select a different wallet in the onramp UI.
      sig { returns(T.nilable(::Stripe::Crypto::OnrampSessionCreateParams::WalletAddresses)) }
      def wallet_addresses; end
      sig {
        params(_wallet_addresses: T.nilable(::Stripe::Crypto::OnrampSessionCreateParams::WalletAddresses)).returns(T.nilable(::Stripe::Crypto::OnrampSessionCreateParams::WalletAddresses))
       }
      def wallet_addresses=(_wallet_addresses); end
      sig {
        params(customer_ip_address: T.nilable(String), destination_amount: T.nilable(String), destination_currencies: T.nilable(T::Array[String]), destination_currency: T.nilable(String), destination_network: T.nilable(String), destination_networks: T.nilable(T::Array[String]), expand: T.nilable(T::Array[String]), kyc_details: T.nilable(::Stripe::Crypto::OnrampSessionCreateParams::KycDetails), lock_wallet_address: T.nilable(T::Boolean), metadata: T.nilable(T::Hash[String, String]), settlement_speed: T.nilable(String), source_amount: T.nilable(String), source_currency: T.nilable(String), wallet_addresses: T.nilable(::Stripe::Crypto::OnrampSessionCreateParams::WalletAddresses)).void
       }
      def initialize(
        customer_ip_address: nil,
        destination_amount: nil,
        destination_currencies: nil,
        destination_currency: nil,
        destination_network: nil,
        destination_networks: nil,
        expand: nil,
        kyc_details: nil,
        lock_wallet_address: nil,
        metadata: nil,
        settlement_speed: nil,
        source_amount: nil,
        source_currency: nil,
        wallet_addresses: nil
      ); end
    end
  end
end