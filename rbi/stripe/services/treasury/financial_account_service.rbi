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
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lte
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Only return FinancialAccounts that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Treasury::FinancialAccountService::ListParams::Created, Integer)))
         }
        attr_accessor :created
        # An object ID cursor for use in pagination.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit ranging from 1 to 100 (defaults to 10).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # An object ID cursor for use in pagination.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # Only return FinancialAccounts that have the given status: `open` or `closed`
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        sig {
          params(created: T.nilable(T.any(::Stripe::Treasury::FinancialAccountService::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String)).void
         }
        def initialize(
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil
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
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              attr_accessor :requested
              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            # Adds an ABA FinancialAddress to the FinancialAccount.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::FinancialAddresses::Aba))
             }
            attr_accessor :aba
            sig {
              params(aba: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::FinancialAddresses::Aba)).void
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
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::InboundTransfers::Ach))
             }
            attr_accessor :ach
            sig {
              params(ach: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::InboundTransfers::Ach)).void
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
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments::Ach))
             }
            attr_accessor :ach
            # Enables US domestic wire transfers via the OutboundPayments API.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments::UsDomesticWire))
             }
            attr_accessor :us_domestic_wire
            sig {
              params(ach: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments::Ach), us_domestic_wire: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments::UsDomesticWire)).void
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
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers::Ach))
             }
            attr_accessor :ach
            # Enables US domestic wire transfers via the OutboundTransfers API.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers::UsDomesticWire))
             }
            attr_accessor :us_domestic_wire
            sig {
              params(ach: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers::Ach), us_domestic_wire: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers::UsDomesticWire)).void
             }
            def initialize(ach: nil, us_domestic_wire: nil); end
          end
          # Encodes the FinancialAccount's ability to be used with the Issuing product, including attaching cards to and drawing funds from the FinancialAccount.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::CardIssuing))
           }
          attr_accessor :card_issuing
          # Represents whether this FinancialAccount is eligible for deposit insurance. Various factors determine the insurance amount.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::DepositInsurance))
           }
          attr_accessor :deposit_insurance
          # Contains Features that add FinancialAddresses to the FinancialAccount.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::FinancialAddresses))
           }
          attr_accessor :financial_addresses
          # Contains settings related to adding funds to a FinancialAccount from another Account with the same owner.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::InboundTransfers))
           }
          attr_accessor :inbound_transfers
          # Represents the ability for the FinancialAccount to send money to, or receive money from other FinancialAccounts (for example, via OutboundPayment).
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::IntraStripeFlows))
           }
          attr_accessor :intra_stripe_flows
          # Includes Features related to initiating money movement out of the FinancialAccount to someone else's bucket of money.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments))
           }
          attr_accessor :outbound_payments
          # Contains a Feature and settings related to moving money out of the FinancialAccount into another Account with the same owner.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers))
           }
          attr_accessor :outbound_transfers
          sig {
            params(card_issuing: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::CardIssuing), deposit_insurance: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::DepositInsurance), financial_addresses: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::FinancialAddresses), inbound_transfers: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::InboundTransfers), intra_stripe_flows: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::IntraStripeFlows), outbound_payments: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments), outbound_transfers: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers)).void
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
          sig { returns(T.nilable(String)) }
          attr_accessor :inbound_flows
          # Restricts all outbound money movement.
          sig { returns(T.nilable(String)) }
          attr_accessor :outbound_flows
          sig { params(inbound_flows: T.nilable(String), outbound_flows: T.nilable(String)).void }
          def initialize(inbound_flows: nil, outbound_flows: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Encodes whether a FinancialAccount has access to a particular feature. Stripe or the platform can control features via the requested field.
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features))
         }
        attr_accessor :features
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The nickname for the FinancialAccount.
        sig { returns(T.nilable(String)) }
        attr_accessor :nickname
        # The set of functionalities that the platform can restrict on the FinancialAccount.
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::PlatformRestrictions))
         }
        attr_accessor :platform_restrictions
        # The currencies the FinancialAccount can hold a balance in.
        sig { returns(T::Array[String]) }
        attr_accessor :supported_currencies
        sig {
          params(expand: T.nilable(T::Array[String]), features: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features), metadata: T.nilable(T::Hash[String, String]), nickname: T.nilable(String), platform_restrictions: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::PlatformRestrictions), supported_currencies: T::Array[String]).void
         }
        def initialize(
          expand: nil,
          features: nil,
          metadata: nil,
          nickname: nil,
          platform_restrictions: nil,
          supported_currencies: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
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
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              attr_accessor :requested
              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            # Adds an ABA FinancialAddress to the FinancialAccount.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::FinancialAddresses::Aba))
             }
            attr_accessor :aba
            sig {
              params(aba: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::FinancialAddresses::Aba)).void
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
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::InboundTransfers::Ach))
             }
            attr_accessor :ach
            sig {
              params(ach: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::InboundTransfers::Ach)).void
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
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments::Ach))
             }
            attr_accessor :ach
            # Enables US domestic wire transfers via the OutboundPayments API.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments::UsDomesticWire))
             }
            attr_accessor :us_domestic_wire
            sig {
              params(ach: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments::Ach), us_domestic_wire: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments::UsDomesticWire)).void
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
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers::Ach))
             }
            attr_accessor :ach
            # Enables US domestic wire transfers via the OutboundTransfers API.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers::UsDomesticWire))
             }
            attr_accessor :us_domestic_wire
            sig {
              params(ach: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers::Ach), us_domestic_wire: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers::UsDomesticWire)).void
             }
            def initialize(ach: nil, us_domestic_wire: nil); end
          end
          # Encodes the FinancialAccount's ability to be used with the Issuing product, including attaching cards to and drawing funds from the FinancialAccount.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::CardIssuing))
           }
          attr_accessor :card_issuing
          # Represents whether this FinancialAccount is eligible for deposit insurance. Various factors determine the insurance amount.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::DepositInsurance))
           }
          attr_accessor :deposit_insurance
          # Contains Features that add FinancialAddresses to the FinancialAccount.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::FinancialAddresses))
           }
          attr_accessor :financial_addresses
          # Contains settings related to adding funds to a FinancialAccount from another Account with the same owner.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::InboundTransfers))
           }
          attr_accessor :inbound_transfers
          # Represents the ability for the FinancialAccount to send money to, or receive money from other FinancialAccounts (for example, via OutboundPayment).
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::IntraStripeFlows))
           }
          attr_accessor :intra_stripe_flows
          # Includes Features related to initiating money movement out of the FinancialAccount to someone else's bucket of money.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments))
           }
          attr_accessor :outbound_payments
          # Contains a Feature and settings related to moving money out of the FinancialAccount into another Account with the same owner.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers))
           }
          attr_accessor :outbound_transfers
          sig {
            params(card_issuing: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::CardIssuing), deposit_insurance: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::DepositInsurance), financial_addresses: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::FinancialAddresses), inbound_transfers: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::InboundTransfers), intra_stripe_flows: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::IntraStripeFlows), outbound_payments: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments), outbound_transfers: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers)).void
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
        class ForwardingSettings < Stripe::RequestParams
          # The financial_account id
          sig { returns(T.nilable(String)) }
          attr_accessor :financial_account
          # The payment_method or bank account id. This needs to be a verified bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_method
          # The type of the bank account provided. This can be either "financial_account" or "payment_method"
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(financial_account: T.nilable(String), payment_method: T.nilable(String), type: String).void
           }
          def initialize(financial_account: nil, payment_method: nil, type: nil); end
        end
        class PlatformRestrictions < Stripe::RequestParams
          # Restricts all inbound money movement.
          sig { returns(T.nilable(String)) }
          attr_accessor :inbound_flows
          # Restricts all outbound money movement.
          sig { returns(T.nilable(String)) }
          attr_accessor :outbound_flows
          sig { params(inbound_flows: T.nilable(String), outbound_flows: T.nilable(String)).void }
          def initialize(inbound_flows: nil, outbound_flows: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Encodes whether a FinancialAccount has access to a particular feature, with a status enum and associated `status_details`. Stripe or the platform may control features via the requested field.
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features))
         }
        attr_accessor :features
        # A different bank account where funds can be deposited/debited in order to get the closing FA's balance to $0
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::ForwardingSettings))
         }
        attr_accessor :forwarding_settings
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The nickname for the FinancialAccount.
        sig { returns(T.nilable(String)) }
        attr_accessor :nickname
        # The set of functionalities that the platform can restrict on the FinancialAccount.
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::PlatformRestrictions))
         }
        attr_accessor :platform_restrictions
        sig {
          params(expand: T.nilable(T::Array[String]), features: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features), forwarding_settings: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::ForwardingSettings), metadata: T.nilable(T::Hash[String, String]), nickname: T.nilable(String), platform_restrictions: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::PlatformRestrictions)).void
         }
        def initialize(
          expand: nil,
          features: nil,
          forwarding_settings: nil,
          metadata: nil,
          nickname: nil,
          platform_restrictions: nil
        ); end
      end
      class CloseParams < Stripe::RequestParams
        class ForwardingSettings < Stripe::RequestParams
          # The financial_account id
          sig { returns(T.nilable(String)) }
          attr_accessor :financial_account
          # The payment_method or bank account id. This needs to be a verified bank account.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_method
          # The type of the bank account provided. This can be either "financial_account" or "payment_method"
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(financial_account: T.nilable(String), payment_method: T.nilable(String), type: String).void
           }
          def initialize(financial_account: nil, payment_method: nil, type: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A different bank account where funds can be deposited/debited in order to get the closing FA's balance to $0
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CloseParams::ForwardingSettings))
         }
        attr_accessor :forwarding_settings
        sig {
          params(expand: T.nilable(T::Array[String]), forwarding_settings: T.nilable(::Stripe::Treasury::FinancialAccountService::CloseParams::ForwardingSettings)).void
         }
        def initialize(expand: nil, forwarding_settings: nil); end
      end
      # Closes a FinancialAccount. A FinancialAccount can only be closed if it has a zero balance, has no pending InboundTransfers, and has canceled all attached Issuing cards.
      sig {
        params(financial_account: String, params: T.any(::Stripe::Treasury::FinancialAccountService::CloseParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::FinancialAccount)
       }
      def close(financial_account, params = {}, opts = {}); end

      # Creates a new FinancialAccount. Each connected account can have up to three FinancialAccounts by default.
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