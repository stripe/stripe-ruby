# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    class FinancialAccountService < StripeService
      attr_reader :features

      def initialize(requestor)
        super
        @features = Stripe::Treasury::FinancialAccountFeaturesService.new(@requestor)
      end

      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # Only return FinancialAccounts that were created during the given date interval.
        attr_accessor :created
        # An object ID cursor for use in pagination.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit ranging from 1 to 100 (defaults to 10).
        attr_accessor :limit
        # An object ID cursor for use in pagination.
        attr_accessor :starting_after

        def initialize(
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil
        )
          @created = created
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
        end
      end

      class CreateParams < Stripe::RequestParams
        class Features < Stripe::RequestParams
          class CardIssuing < Stripe::RequestParams
            # Whether the FinancialAccount should have the Feature.
            attr_accessor :requested

            def initialize(requested: nil)
              @requested = requested
            end
          end

          class DepositInsurance < Stripe::RequestParams
            # Whether the FinancialAccount should have the Feature.
            attr_accessor :requested

            def initialize(requested: nil)
              @requested = requested
            end
          end

          class FinancialAddresses < Stripe::RequestParams
            class Aba < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              attr_accessor :requested

              def initialize(requested: nil)
                @requested = requested
              end
            end
            # Adds an ABA FinancialAddress to the FinancialAccount.
            attr_accessor :aba

            def initialize(aba: nil)
              @aba = aba
            end
          end

          class InboundTransfers < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              attr_accessor :requested

              def initialize(requested: nil)
                @requested = requested
              end
            end
            # Enables ACH Debits via the InboundTransfers API.
            attr_accessor :ach

            def initialize(ach: nil)
              @ach = ach
            end
          end

          class IntraStripeFlows < Stripe::RequestParams
            # Whether the FinancialAccount should have the Feature.
            attr_accessor :requested

            def initialize(requested: nil)
              @requested = requested
            end
          end

          class OutboundPayments < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              attr_accessor :requested

              def initialize(requested: nil)
                @requested = requested
              end
            end

            class UsDomesticWire < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              attr_accessor :requested

              def initialize(requested: nil)
                @requested = requested
              end
            end
            # Enables ACH transfers via the OutboundPayments API.
            attr_accessor :ach
            # Enables US domestic wire transfers via the OutboundPayments API.
            attr_accessor :us_domestic_wire

            def initialize(ach: nil, us_domestic_wire: nil)
              @ach = ach
              @us_domestic_wire = us_domestic_wire
            end
          end

          class OutboundTransfers < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              attr_accessor :requested

              def initialize(requested: nil)
                @requested = requested
              end
            end

            class UsDomesticWire < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              attr_accessor :requested

              def initialize(requested: nil)
                @requested = requested
              end
            end
            # Enables ACH transfers via the OutboundTransfers API.
            attr_accessor :ach
            # Enables US domestic wire transfers via the OutboundTransfers API.
            attr_accessor :us_domestic_wire

            def initialize(ach: nil, us_domestic_wire: nil)
              @ach = ach
              @us_domestic_wire = us_domestic_wire
            end
          end
          # Encodes the FinancialAccount's ability to be used with the Issuing product, including attaching cards to and drawing funds from the FinancialAccount.
          attr_accessor :card_issuing
          # Represents whether this FinancialAccount is eligible for deposit insurance. Various factors determine the insurance amount.
          attr_accessor :deposit_insurance
          # Contains Features that add FinancialAddresses to the FinancialAccount.
          attr_accessor :financial_addresses
          # Contains settings related to adding funds to a FinancialAccount from another Account with the same owner.
          attr_accessor :inbound_transfers
          # Represents the ability for the FinancialAccount to send money to, or receive money from other FinancialAccounts (for example, via OutboundPayment).
          attr_accessor :intra_stripe_flows
          # Includes Features related to initiating money movement out of the FinancialAccount to someone else's bucket of money.
          attr_accessor :outbound_payments
          # Contains a Feature and settings related to moving money out of the FinancialAccount into another Account with the same owner.
          attr_accessor :outbound_transfers

          def initialize(
            card_issuing: nil,
            deposit_insurance: nil,
            financial_addresses: nil,
            inbound_transfers: nil,
            intra_stripe_flows: nil,
            outbound_payments: nil,
            outbound_transfers: nil
          )
            @card_issuing = card_issuing
            @deposit_insurance = deposit_insurance
            @financial_addresses = financial_addresses
            @inbound_transfers = inbound_transfers
            @intra_stripe_flows = intra_stripe_flows
            @outbound_payments = outbound_payments
            @outbound_transfers = outbound_transfers
          end
        end

        class PlatformRestrictions < Stripe::RequestParams
          # Restricts all inbound money movement.
          attr_accessor :inbound_flows
          # Restricts all outbound money movement.
          attr_accessor :outbound_flows

          def initialize(inbound_flows: nil, outbound_flows: nil)
            @inbound_flows = inbound_flows
            @outbound_flows = outbound_flows
          end
        end
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Encodes whether a FinancialAccount has access to a particular feature. Stripe or the platform can control features via the requested field.
        attr_accessor :features
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The nickname for the FinancialAccount.
        attr_accessor :nickname
        # The set of functionalities that the platform can restrict on the FinancialAccount.
        attr_accessor :platform_restrictions
        # The currencies the FinancialAccount can hold a balance in.
        attr_accessor :supported_currencies

        def initialize(
          expand: nil,
          features: nil,
          metadata: nil,
          nickname: nil,
          platform_restrictions: nil,
          supported_currencies: nil
        )
          @expand = expand
          @features = features
          @metadata = metadata
          @nickname = nickname
          @platform_restrictions = platform_restrictions
          @supported_currencies = supported_currencies
        end
      end

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class UpdateParams < Stripe::RequestParams
        class Features < Stripe::RequestParams
          class CardIssuing < Stripe::RequestParams
            # Whether the FinancialAccount should have the Feature.
            attr_accessor :requested

            def initialize(requested: nil)
              @requested = requested
            end
          end

          class DepositInsurance < Stripe::RequestParams
            # Whether the FinancialAccount should have the Feature.
            attr_accessor :requested

            def initialize(requested: nil)
              @requested = requested
            end
          end

          class FinancialAddresses < Stripe::RequestParams
            class Aba < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              attr_accessor :requested

              def initialize(requested: nil)
                @requested = requested
              end
            end
            # Adds an ABA FinancialAddress to the FinancialAccount.
            attr_accessor :aba

            def initialize(aba: nil)
              @aba = aba
            end
          end

          class InboundTransfers < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              attr_accessor :requested

              def initialize(requested: nil)
                @requested = requested
              end
            end
            # Enables ACH Debits via the InboundTransfers API.
            attr_accessor :ach

            def initialize(ach: nil)
              @ach = ach
            end
          end

          class IntraStripeFlows < Stripe::RequestParams
            # Whether the FinancialAccount should have the Feature.
            attr_accessor :requested

            def initialize(requested: nil)
              @requested = requested
            end
          end

          class OutboundPayments < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              attr_accessor :requested

              def initialize(requested: nil)
                @requested = requested
              end
            end

            class UsDomesticWire < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              attr_accessor :requested

              def initialize(requested: nil)
                @requested = requested
              end
            end
            # Enables ACH transfers via the OutboundPayments API.
            attr_accessor :ach
            # Enables US domestic wire transfers via the OutboundPayments API.
            attr_accessor :us_domestic_wire

            def initialize(ach: nil, us_domestic_wire: nil)
              @ach = ach
              @us_domestic_wire = us_domestic_wire
            end
          end

          class OutboundTransfers < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              attr_accessor :requested

              def initialize(requested: nil)
                @requested = requested
              end
            end

            class UsDomesticWire < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              attr_accessor :requested

              def initialize(requested: nil)
                @requested = requested
              end
            end
            # Enables ACH transfers via the OutboundTransfers API.
            attr_accessor :ach
            # Enables US domestic wire transfers via the OutboundTransfers API.
            attr_accessor :us_domestic_wire

            def initialize(ach: nil, us_domestic_wire: nil)
              @ach = ach
              @us_domestic_wire = us_domestic_wire
            end
          end
          # Encodes the FinancialAccount's ability to be used with the Issuing product, including attaching cards to and drawing funds from the FinancialAccount.
          attr_accessor :card_issuing
          # Represents whether this FinancialAccount is eligible for deposit insurance. Various factors determine the insurance amount.
          attr_accessor :deposit_insurance
          # Contains Features that add FinancialAddresses to the FinancialAccount.
          attr_accessor :financial_addresses
          # Contains settings related to adding funds to a FinancialAccount from another Account with the same owner.
          attr_accessor :inbound_transfers
          # Represents the ability for the FinancialAccount to send money to, or receive money from other FinancialAccounts (for example, via OutboundPayment).
          attr_accessor :intra_stripe_flows
          # Includes Features related to initiating money movement out of the FinancialAccount to someone else's bucket of money.
          attr_accessor :outbound_payments
          # Contains a Feature and settings related to moving money out of the FinancialAccount into another Account with the same owner.
          attr_accessor :outbound_transfers

          def initialize(
            card_issuing: nil,
            deposit_insurance: nil,
            financial_addresses: nil,
            inbound_transfers: nil,
            intra_stripe_flows: nil,
            outbound_payments: nil,
            outbound_transfers: nil
          )
            @card_issuing = card_issuing
            @deposit_insurance = deposit_insurance
            @financial_addresses = financial_addresses
            @inbound_transfers = inbound_transfers
            @intra_stripe_flows = intra_stripe_flows
            @outbound_payments = outbound_payments
            @outbound_transfers = outbound_transfers
          end
        end

        class ForwardingSettings < Stripe::RequestParams
          # The financial_account id
          attr_accessor :financial_account
          # The payment_method or bank account id. This needs to be a verified bank account.
          attr_accessor :payment_method
          # The type of the bank account provided. This can be either "financial_account" or "payment_method"
          attr_accessor :type

          def initialize(financial_account: nil, payment_method: nil, type: nil)
            @financial_account = financial_account
            @payment_method = payment_method
            @type = type
          end
        end

        class PlatformRestrictions < Stripe::RequestParams
          # Restricts all inbound money movement.
          attr_accessor :inbound_flows
          # Restricts all outbound money movement.
          attr_accessor :outbound_flows

          def initialize(inbound_flows: nil, outbound_flows: nil)
            @inbound_flows = inbound_flows
            @outbound_flows = outbound_flows
          end
        end
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Encodes whether a FinancialAccount has access to a particular feature, with a status enum and associated `status_details`. Stripe or the platform may control features via the requested field.
        attr_accessor :features
        # A different bank account where funds can be deposited/debited in order to get the closing FA's balance to $0
        attr_accessor :forwarding_settings
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The nickname for the FinancialAccount.
        attr_accessor :nickname
        # The set of functionalities that the platform can restrict on the FinancialAccount.
        attr_accessor :platform_restrictions

        def initialize(
          expand: nil,
          features: nil,
          forwarding_settings: nil,
          metadata: nil,
          nickname: nil,
          platform_restrictions: nil
        )
          @expand = expand
          @features = features
          @forwarding_settings = forwarding_settings
          @metadata = metadata
          @nickname = nickname
          @platform_restrictions = platform_restrictions
        end
      end

      class CloseParams < Stripe::RequestParams
        class ForwardingSettings < Stripe::RequestParams
          # The financial_account id
          attr_accessor :financial_account
          # The payment_method or bank account id. This needs to be a verified bank account.
          attr_accessor :payment_method
          # The type of the bank account provided. This can be either "financial_account" or "payment_method"
          attr_accessor :type

          def initialize(financial_account: nil, payment_method: nil, type: nil)
            @financial_account = financial_account
            @payment_method = payment_method
            @type = type
          end
        end
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A different bank account where funds can be deposited/debited in order to get the closing FA's balance to $0
        attr_accessor :forwarding_settings

        def initialize(expand: nil, forwarding_settings: nil)
          @expand = expand
          @forwarding_settings = forwarding_settings
        end
      end

      # Closes a FinancialAccount. A FinancialAccount can only be closed if it has a zero balance, has no pending InboundTransfers, and has canceled all attached Issuing cards.
      def close(financial_account, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/treasury/financial_accounts/%<financial_account>s/close", { financial_account: CGI.escape(financial_account) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Creates a new FinancialAccount. Each connected account can have up to three FinancialAccounts by default.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/treasury/financial_accounts",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of FinancialAccounts.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/treasury/financial_accounts",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of a FinancialAccount.
      def retrieve(financial_account, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/treasury/financial_accounts/%<financial_account>s", { financial_account: CGI.escape(financial_account) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates the details of a FinancialAccount.
      def update(financial_account, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/treasury/financial_accounts/%<financial_account>s", { financial_account: CGI.escape(financial_account) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
