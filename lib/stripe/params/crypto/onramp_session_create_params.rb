# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    class OnrampSessionCreateParams < ::Stripe::RequestParams
      class KycDetails < ::Stripe::RequestParams; end

      class WalletAddresses < ::Stripe::RequestParams
        class DestinationTags < ::Stripe::RequestParams
          # Attribute for param field stellar
          attr_accessor :stellar

          def initialize(stellar: nil)
            @stellar = stellar
          end
        end
        # The end customer's crypto wallet destination tag (for each network) to use for this transaction. This only applies for tag-based assets such as XLM.
        #
        # * When left null, the user enters their wallet in the onramp UI.
        attr_accessor :destination_tags

        def initialize(destination_tags: nil)
          @destination_tags = destination_tags
        end
      end
      # The IP address of the customer the platform intends to onramp.
      #
      # If the user's IP is in a region we can't support, we return an `HTTP 400` with an appropriate error code.
      #
      # We support IPv4 and IPv6 addresses. Geographic supportability is checked again later in the onramp flow, which provides a way to hide the onramp option from ineligible users for a better user experience.
      attr_accessor :customer_ip_address
      # The default amount of crypto to exchange into.
      #
      # * When left null, a default value is computed if `source_amount`, `destination_currency`, and `destination_network` are set.
      # * When set, both `destination_currency` and `destination_network` must also be set. All cryptocurrencies are supported to their full precisions (for example, 18 decimal places for `eth`). We validate and generate an error if the amount exceeds the supported precision based on the exchange currency. Setting `source_amount` is mutually exclusive with setting `destination_amount` (only one or the other is supported). Users can update the amount in the onramp UI.
      attr_accessor :destination_amount
      # The list of destination cryptocurrencies a user can choose from.
      #
      # * When left null, all supported cryptocurrencies are shown in the onramp UI subject to `destination_networks` if set.
      # * When set, it must be a non-empty array where all values in the array are valid cryptocurrencies. You can use it to lock users to a specific cryptocurrency by passing a single value array. Users **cannot** override this parameter.
      attr_accessor :destination_currencies
      # The default destination cryptocurrency.
      #
      # * When left null, the first value of `destination_currencies` is selected.
      # * When set, if `destination_currencies` is also set, the value of `destination_currency` must be present in that array. To lock a `destination_currency`, specify that value as the single value for `destination_currencies`. Users can select a different cryptocurrency in the onramp UI subject to `destination_currencies` if set.
      attr_accessor :destination_currency
      # The default destination crypto network.
      #
      # * When left null, the first value of `destination_networks` is selected.
      # * When set, if `destination_networks` is also set, the value of `destination_network` must be present in that array. To lock a `destination_network`, specify that value as the single value for `destination_networks`. Users can select a different network in the onramp UI subject to `destination_networks` if set.
      attr_accessor :destination_network
      # The list of destination crypto networks user can choose from.
      #
      # * When left null, all supported crypto networks are shown in the onramp UI.
      # * When set, it must be a non-empty array where values in the array are each a valid crypto network. It can be used to lock users to a specific network by passing a single value array. Users **cannot** override this parameter.
      attr_accessor :destination_networks
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Pre-populate some of the required KYC information for the user if you've already collected it within your application.
      #
      # Related guide: [Using the API](https://docs.stripe.com/crypto/using-the-api#how-to-pre-populate-customer-information)
      attr_accessor :kyc_details
      # Whether or not to lock the suggested wallet address. If destination tags are provided, this will also lock the destination tags.
      attr_accessor :lock_wallet_address
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Speed at which the cryptocurrency is delivered to the wallet
      # One of:
      #  `instant` (default): crypto is delivered when payment is confirmed
      #  `standard`: crypto is delivered when payment settles
      attr_accessor :settlement_speed
      # The default amount of fiat (in decimal) to exchange into crypto.
      #
      # * When left null, a default value is computed if `destination_amount` is set.
      # * When set, setting `source_amount` is mutually exclusive with setting `destination_amount` (only one or the other is supported). We don't support fractional pennies. If fractional minor units of a currency are passed in, it generates an error. Users can update the value in the onramp UI.
      attr_accessor :source_amount
      # The default source fiat currency for the onramp session.
      #
      # * When left null, a default currency is selected based on user locale.
      # * When set, it must be one of the fiat currencies supported by onramp. Users can still select a different currency in the onramp UI.
      attr_accessor :source_currency
      # The end customer's crypto wallet address (for each network) to use for this transaction.
      #
      # * When left null, the user enters their wallet in the onramp UI.
      # * When set, the platform must set either `destination_networks` or `destination_network` and we perform address validation. Users can still select a different wallet in the onramp UI.
      attr_accessor :wallet_addresses

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
      )
        @customer_ip_address = customer_ip_address
        @destination_amount = destination_amount
        @destination_currencies = destination_currencies
        @destination_currency = destination_currency
        @destination_network = destination_network
        @destination_networks = destination_networks
        @expand = expand
        @kyc_details = kyc_details
        @lock_wallet_address = lock_wallet_address
        @metadata = metadata
        @settlement_speed = settlement_speed
        @source_amount = source_amount
        @source_currency = source_currency
        @wallet_addresses = wallet_addresses
      end
    end
  end
end
