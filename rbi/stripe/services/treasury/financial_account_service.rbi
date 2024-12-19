# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    class FinancialAccountService < StripeService
      attr_reader :features
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(Integer) }
          attr_accessor :gt

          # Minimum value to filter by (inclusive)
          sig { returns(Integer) }
          attr_accessor :gte

          # Maximum value to filter by (exclusive)
          sig { returns(Integer) }
          attr_accessor :lt

          # Maximum value to filter by (inclusive)
          sig { returns(Integer) }
          attr_accessor :lte

          sig { params(gt: Integer, gte: Integer, lt: Integer, lte: Integer).void }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Only return FinancialAccounts that were created during the given date interval.
        sig {
          returns(T.any(::Stripe::Treasury::FinancialAccountService::ListParams::Created, Integer))
         }
        attr_accessor :created

        # An object ID cursor for use in pagination.
        sig { returns(String) }
        attr_accessor :ending_before

        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        # A limit ranging from 1 to 100 (defaults to 10).
        sig { returns(Integer) }
        attr_accessor :limit

        # An object ID cursor for use in pagination.
        sig { returns(String) }
        attr_accessor :starting_after

        sig {
          params(created: T.any(::Stripe::Treasury::FinancialAccountService::ListParams::Created, Integer), ending_before: String, expand: T::Array[String], limit: Integer, starting_after: String).void
         }
        def initialize(
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class Features < Stripe::RequestParams
          class CardIssuing < Stripe::RequestParams
            # Whether the FinancialAccount should have the Feature.
            sig { returns(T::Boolean) }
            attr_accessor :requested

            sig { params(requested: T::Boolean).void }
            def initialize(requested: nil); end
          end
          class DepositInsurance < Stripe::RequestParams
            # Whether the FinancialAccount should have the Feature.
            sig { returns(T::Boolean) }
            attr_accessor :requested

            sig { params(requested: T::Boolean).void }
            def initialize(requested: nil); end
          end
          class FinancialAddresses < Stripe::RequestParams
            class Aba < Stripe::RequestParams
              # Requested bank partner
              sig { returns(String) }
              attr_accessor :bank

              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              attr_accessor :requested

              sig { params(bank: String, requested: T::Boolean).void }
              def initialize(bank: nil, requested: nil); end
            end
            # Adds an ABA FinancialAddress to the FinancialAccount.
            sig {
              returns(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::FinancialAddresses::Aba)
             }
            attr_accessor :aba

            sig {
              params(aba: ::Stripe::Treasury::FinancialAccountService::CreateParams::Features::FinancialAddresses::Aba).void
             }
            def initialize(aba: nil); end
          end
          class InboundTransfers < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              attr_accessor :requested

              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            # Enables ACH Debits via the InboundTransfers API.
            sig {
              returns(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::InboundTransfers::Ach)
             }
            attr_accessor :ach

            sig {
              params(ach: ::Stripe::Treasury::FinancialAccountService::CreateParams::Features::InboundTransfers::Ach).void
             }
            def initialize(ach: nil); end
          end
          class IntraStripeFlows < Stripe::RequestParams
            # Whether the FinancialAccount should have the Feature.
            sig { returns(T::Boolean) }
            attr_accessor :requested

            sig { params(requested: T::Boolean).void }
            def initialize(requested: nil); end
          end
          class OutboundPayments < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              attr_accessor :requested

              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            class UsDomesticWire < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              attr_accessor :requested

              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            # Enables ACH transfers via the OutboundPayments API.
            sig {
              returns(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments::Ach)
             }
            attr_accessor :ach

            # Enables US domestic wire transfers via the OutboundPayments API.
            sig {
              returns(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments::UsDomesticWire)
             }
            attr_accessor :us_domestic_wire

            sig {
              params(ach: ::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments::Ach, us_domestic_wire: ::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments::UsDomesticWire).void
             }
            def initialize(ach: nil, us_domestic_wire: nil); end
          end
          class OutboundTransfers < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              attr_accessor :requested

              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            class UsDomesticWire < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              attr_accessor :requested

              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            # Enables ACH transfers via the OutboundTransfers API.
            sig {
              returns(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers::Ach)
             }
            attr_accessor :ach

            # Enables US domestic wire transfers via the OutboundTransfers API.
            sig {
              returns(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers::UsDomesticWire)
             }
            attr_accessor :us_domestic_wire

            sig {
              params(ach: ::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers::Ach, us_domestic_wire: ::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers::UsDomesticWire).void
             }
            def initialize(ach: nil, us_domestic_wire: nil); end
          end
          # Encodes the FinancialAccount's ability to be used with the Issuing product, including attaching cards to and drawing funds from the FinancialAccount.
          sig {
            returns(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::CardIssuing)
           }
          attr_accessor :card_issuing

          # Represents whether this FinancialAccount is eligible for deposit insurance. Various factors determine the insurance amount.
          sig {
            returns(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::DepositInsurance)
           }
          attr_accessor :deposit_insurance

          # Contains Features that add FinancialAddresses to the FinancialAccount.
          sig {
            returns(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::FinancialAddresses)
           }
          attr_accessor :financial_addresses

          # Contains settings related to adding funds to a FinancialAccount from another Account with the same owner.
          sig {
            returns(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::InboundTransfers)
           }
          attr_accessor :inbound_transfers

          # Represents the ability for the FinancialAccount to send money to, or receive money from other FinancialAccounts (for example, via OutboundPayment).
          sig {
            returns(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::IntraStripeFlows)
           }
          attr_accessor :intra_stripe_flows

          # Includes Features related to initiating money movement out of the FinancialAccount to someone else's bucket of money.
          sig {
            returns(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments)
           }
          attr_accessor :outbound_payments

          # Contains a Feature and settings related to moving money out of the FinancialAccount into another Account with the same owner.
          sig {
            returns(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers)
           }
          attr_accessor :outbound_transfers

          sig {
            params(card_issuing: ::Stripe::Treasury::FinancialAccountService::CreateParams::Features::CardIssuing, deposit_insurance: ::Stripe::Treasury::FinancialAccountService::CreateParams::Features::DepositInsurance, financial_addresses: ::Stripe::Treasury::FinancialAccountService::CreateParams::Features::FinancialAddresses, inbound_transfers: ::Stripe::Treasury::FinancialAccountService::CreateParams::Features::InboundTransfers, intra_stripe_flows: ::Stripe::Treasury::FinancialAccountService::CreateParams::Features::IntraStripeFlows, outbound_payments: ::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments, outbound_transfers: ::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers).void
           }
          def initialize(
            card_issuing: nil,
            deposit_insurance: nil,
            financial_addresses: nil,
            inbound_transfers: nil,
            intra_stripe_flows: nil,
            outbound_payments: nil,
            outbound_transfers: nil
          ); end
        end
        class PlatformRestrictions < Stripe::RequestParams
          # Restricts all inbound money movement.
          sig { returns(String) }
          attr_accessor :inbound_flows

          # Restricts all outbound money movement.
          sig { returns(String) }
          attr_accessor :outbound_flows

          sig { params(inbound_flows: String, outbound_flows: String).void }
          def initialize(inbound_flows: nil, outbound_flows: nil); end
        end
        # The display name for the FinancialAccount. Use this field to customize the names of the FinancialAccounts for your connected accounts. Unlike the `nickname` field, `display_name` is not internal metadata and will be exposed to connected accounts.
        sig { returns(T.nilable(String)) }
        attr_accessor :display_name

        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        # Encodes whether a FinancialAccount has access to a particular feature. Stripe or the platform can control features via the requested field.
        sig { returns(::Stripe::Treasury::FinancialAccountService::CreateParams::Features) }
        attr_accessor :features

        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata

        # The set of functionalities that the platform can restrict on the FinancialAccount.
        sig {
          returns(::Stripe::Treasury::FinancialAccountService::CreateParams::PlatformRestrictions)
         }
        attr_accessor :platform_restrictions

        # The currencies the FinancialAccount can hold a balance in.
        sig { returns(T::Array[String]) }
        attr_accessor :supported_currencies

        sig {
          params(display_name: T.nilable(String), expand: T::Array[String], features: ::Stripe::Treasury::FinancialAccountService::CreateParams::Features, metadata: T::Hash[String, String], platform_restrictions: ::Stripe::Treasury::FinancialAccountService::CreateParams::PlatformRestrictions, supported_currencies: T::Array[String]).void
         }
        def initialize(
          display_name: nil,
          expand: nil,
          features: nil,
          metadata: nil,
          platform_restrictions: nil,
          supported_currencies: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        class Features < Stripe::RequestParams
          class CardIssuing < Stripe::RequestParams
            # Whether the FinancialAccount should have the Feature.
            sig { returns(T::Boolean) }
            attr_accessor :requested

            sig { params(requested: T::Boolean).void }
            def initialize(requested: nil); end
          end
          class DepositInsurance < Stripe::RequestParams
            # Whether the FinancialAccount should have the Feature.
            sig { returns(T::Boolean) }
            attr_accessor :requested

            sig { params(requested: T::Boolean).void }
            def initialize(requested: nil); end
          end
          class FinancialAddresses < Stripe::RequestParams
            class Aba < Stripe::RequestParams
              # Requested bank partner
              sig { returns(String) }
              attr_accessor :bank

              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              attr_accessor :requested

              sig { params(bank: String, requested: T::Boolean).void }
              def initialize(bank: nil, requested: nil); end
            end
            # Adds an ABA FinancialAddress to the FinancialAccount.
            sig {
              returns(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::FinancialAddresses::Aba)
             }
            attr_accessor :aba

            sig {
              params(aba: ::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::FinancialAddresses::Aba).void
             }
            def initialize(aba: nil); end
          end
          class InboundTransfers < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              attr_accessor :requested

              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            # Enables ACH Debits via the InboundTransfers API.
            sig {
              returns(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::InboundTransfers::Ach)
             }
            attr_accessor :ach

            sig {
              params(ach: ::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::InboundTransfers::Ach).void
             }
            def initialize(ach: nil); end
          end
          class IntraStripeFlows < Stripe::RequestParams
            # Whether the FinancialAccount should have the Feature.
            sig { returns(T::Boolean) }
            attr_accessor :requested

            sig { params(requested: T::Boolean).void }
            def initialize(requested: nil); end
          end
          class OutboundPayments < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              attr_accessor :requested

              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            class UsDomesticWire < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              attr_accessor :requested

              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            # Enables ACH transfers via the OutboundPayments API.
            sig {
              returns(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments::Ach)
             }
            attr_accessor :ach

            # Enables US domestic wire transfers via the OutboundPayments API.
            sig {
              returns(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments::UsDomesticWire)
             }
            attr_accessor :us_domestic_wire

            sig {
              params(ach: ::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments::Ach, us_domestic_wire: ::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments::UsDomesticWire).void
             }
            def initialize(ach: nil, us_domestic_wire: nil); end
          end
          class OutboundTransfers < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              attr_accessor :requested

              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            class UsDomesticWire < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              attr_accessor :requested

              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            # Enables ACH transfers via the OutboundTransfers API.
            sig {
              returns(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers::Ach)
             }
            attr_accessor :ach

            # Enables US domestic wire transfers via the OutboundTransfers API.
            sig {
              returns(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers::UsDomesticWire)
             }
            attr_accessor :us_domestic_wire

            sig {
              params(ach: ::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers::Ach, us_domestic_wire: ::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers::UsDomesticWire).void
             }
            def initialize(ach: nil, us_domestic_wire: nil); end
          end
          # Encodes the FinancialAccount's ability to be used with the Issuing product, including attaching cards to and drawing funds from the FinancialAccount.
          sig {
            returns(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::CardIssuing)
           }
          attr_accessor :card_issuing

          # Represents whether this FinancialAccount is eligible for deposit insurance. Various factors determine the insurance amount.
          sig {
            returns(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::DepositInsurance)
           }
          attr_accessor :deposit_insurance

          # Contains Features that add FinancialAddresses to the FinancialAccount.
          sig {
            returns(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::FinancialAddresses)
           }
          attr_accessor :financial_addresses

          # Contains settings related to adding funds to a FinancialAccount from another Account with the same owner.
          sig {
            returns(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::InboundTransfers)
           }
          attr_accessor :inbound_transfers

          # Represents the ability for the FinancialAccount to send money to, or receive money from other FinancialAccounts (for example, via OutboundPayment).
          sig {
            returns(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::IntraStripeFlows)
           }
          attr_accessor :intra_stripe_flows

          # Includes Features related to initiating money movement out of the FinancialAccount to someone else's bucket of money.
          sig {
            returns(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments)
           }
          attr_accessor :outbound_payments

          # Contains a Feature and settings related to moving money out of the FinancialAccount into another Account with the same owner.
          sig {
            returns(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers)
           }
          attr_accessor :outbound_transfers

          sig {
            params(card_issuing: ::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::CardIssuing, deposit_insurance: ::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::DepositInsurance, financial_addresses: ::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::FinancialAddresses, inbound_transfers: ::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::InboundTransfers, intra_stripe_flows: ::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::IntraStripeFlows, outbound_payments: ::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments, outbound_transfers: ::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers).void
           }
          def initialize(
            card_issuing: nil,
            deposit_insurance: nil,
            financial_addresses: nil,
            inbound_transfers: nil,
            intra_stripe_flows: nil,
            outbound_payments: nil,
            outbound_transfers: nil
          ); end
        end
        class PlatformRestrictions < Stripe::RequestParams
          # Restricts all inbound money movement.
          sig { returns(String) }
          attr_accessor :inbound_flows

          # Restricts all outbound money movement.
          sig { returns(String) }
          attr_accessor :outbound_flows

          sig { params(inbound_flows: String, outbound_flows: String).void }
          def initialize(inbound_flows: nil, outbound_flows: nil); end
        end
        # The display name for the FinancialAccount. Use this field to customize the names of the FinancialAccounts for your connected accounts. Unlike the `nickname` field, `display_name` is not internal metadata and will be exposed to connected accounts.
        sig { returns(T.nilable(String)) }
        attr_accessor :display_name

        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        # Encodes whether a FinancialAccount has access to a particular feature, with a status enum and associated `status_details`. Stripe or the platform may control features via the requested field.
        sig { returns(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features) }
        attr_accessor :features

        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata

        # The set of functionalities that the platform can restrict on the FinancialAccount.
        sig {
          returns(::Stripe::Treasury::FinancialAccountService::UpdateParams::PlatformRestrictions)
         }
        attr_accessor :platform_restrictions

        sig {
          params(display_name: T.nilable(String), expand: T::Array[String], features: ::Stripe::Treasury::FinancialAccountService::UpdateParams::Features, metadata: T::Hash[String, String], platform_restrictions: ::Stripe::Treasury::FinancialAccountService::UpdateParams::PlatformRestrictions).void
         }
        def initialize(
          display_name: nil,
          expand: nil,
          features: nil,
          metadata: nil,
          platform_restrictions: nil
        ); end
      end
      # Creates a new FinancialAccount. For now, each connected account can only have one FinancialAccount.
      sig {
        params(params: T.any(::Stripe::Treasury::FinancialAccountService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::FinancialAccount)
       }
      def create(params = {}, opts = {}); end

      # Returns a list of FinancialAccounts.
      sig {
        params(params: T.any(::Stripe::Treasury::FinancialAccountService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves the details of a FinancialAccount.
      sig {
        params(financial_account: String, params: T.any(::Stripe::Treasury::FinancialAccountService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::FinancialAccount)
       }
      def retrieve(financial_account, params = {}, opts = {}); end

      # Updates the details of a FinancialAccount.
      sig {
        params(financial_account: String, params: T.any(::Stripe::Treasury::FinancialAccountService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::FinancialAccount)
       }
      def update(financial_account, params = {}, opts = {}); end
    end
  end
end