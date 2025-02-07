# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    # Stripe Treasury provides users with a container for money called a FinancialAccount that is separate from their Payments balance.
    # FinancialAccounts serve as the source and destination of Treasury's money movement APIs.
    class FinancialAccount < APIResource
      class Balance < Stripe::StripeObject
        # Funds the user can spend right now.
        sig { returns(T::Hash[String, Integer]) }
        attr_reader :cash
        # Funds not spendable yet, but will become available at a later time.
        sig { returns(T::Hash[String, Integer]) }
        attr_reader :inbound_pending
        # Funds in the account, but not spendable because they are being held for pending outbound flows.
        sig { returns(T::Hash[String, Integer]) }
        attr_reader :outbound_pending
      end
      class FinancialAddress < Stripe::StripeObject
        class Aba < Stripe::StripeObject
          # The name of the person or business that owns the bank account.
          sig { returns(String) }
          attr_reader :account_holder_name
          # The account number.
          sig { returns(T.nilable(String)) }
          attr_reader :account_number
          # The last four characters of the account number.
          sig { returns(String) }
          attr_reader :account_number_last4
          # Name of the bank.
          sig { returns(String) }
          attr_reader :bank_name
          # Routing number for the account.
          sig { returns(String) }
          attr_reader :routing_number
        end
        # ABA Records contain U.S. bank account details per the ABA format.
        sig { returns(Aba) }
        attr_reader :aba
        # The list of networks that the address supports
        sig { returns(T::Array[String]) }
        attr_reader :supported_networks
        # The type of financial address
        sig { returns(String) }
        attr_reader :type
      end
      class PlatformRestrictions < Stripe::StripeObject
        # Restricts all inbound money movement.
        sig { returns(T.nilable(String)) }
        attr_reader :inbound_flows
        # Restricts all outbound money movement.
        sig { returns(T.nilable(String)) }
        attr_reader :outbound_flows
      end
      class StatusDetails < Stripe::StripeObject
        class Closed < Stripe::StripeObject
          # The array that contains reasons for a FinancialAccount closure.
          sig { returns(T::Array[String]) }
          attr_reader :reasons
        end
        # Details related to the closure of this FinancialAccount
        sig { returns(T.nilable(Closed)) }
        attr_reader :closed
      end
      # The array of paths to active Features in the Features hash.
      sig { returns(T::Array[String]) }
      attr_reader :active_features
      # Balance information for the FinancialAccount
      sig { returns(Balance) }
      attr_reader :balance
      # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
      sig { returns(String) }
      attr_reader :country
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # The display name for the FinancialAccount. Use this field to customize the names of the FinancialAccounts for your connected accounts. Unlike the `nickname` field, `display_name` is not internal metadata and will be exposed to connected accounts.
      sig { returns(T.nilable(String)) }
      attr_reader :display_name
      # Encodes whether a FinancialAccount has access to a particular Feature, with a `status` enum and associated `status_details`.
      # Stripe or the platform can control Features via the requested field.
      sig { returns(Stripe::Treasury::FinancialAccountFeatures) }
      attr_reader :features
      # The set of credentials that resolve to a FinancialAccount.
      sig { returns(T::Array[FinancialAddress]) }
      attr_reader :financial_addresses
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Attribute for field is_default
      sig { returns(T::Boolean) }
      attr_reader :is_default
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata
      # The nickname for the FinancialAccount.
      sig { returns(T.nilable(String)) }
      attr_reader :nickname
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # The array of paths to pending Features in the Features hash.
      sig { returns(T::Array[String]) }
      attr_reader :pending_features
      # The set of functionalities that the platform can restrict on the FinancialAccount.
      sig { returns(T.nilable(PlatformRestrictions)) }
      attr_reader :platform_restrictions
      # The array of paths to restricted Features in the Features hash.
      sig { returns(T::Array[String]) }
      attr_reader :restricted_features
      # Status of this FinancialAccount.
      sig { returns(String) }
      attr_reader :status
      # Attribute for field status_details
      sig { returns(StatusDetails) }
      attr_reader :status_details
      # The currencies the FinancialAccount can hold a balance in. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
      sig { returns(T::Array[String]) }
      attr_reader :supported_currencies
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
        sig { returns(T.any(::Stripe::Treasury::FinancialAccount::ListParams::Created, Integer)) }
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
          params(created: T.any(::Stripe::Treasury::FinancialAccount::ListParams::Created, Integer), ending_before: String, expand: T::Array[String], limit: Integer, starting_after: String).void
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
              returns(::Stripe::Treasury::FinancialAccount::CreateParams::Features::FinancialAddresses::Aba)
             }
            attr_accessor :aba
            sig {
              params(aba: ::Stripe::Treasury::FinancialAccount::CreateParams::Features::FinancialAddresses::Aba).void
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
              returns(::Stripe::Treasury::FinancialAccount::CreateParams::Features::InboundTransfers::Ach)
             }
            attr_accessor :ach
            sig {
              params(ach: ::Stripe::Treasury::FinancialAccount::CreateParams::Features::InboundTransfers::Ach).void
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
              returns(::Stripe::Treasury::FinancialAccount::CreateParams::Features::OutboundPayments::Ach)
             }
            attr_accessor :ach
            # Enables US domestic wire transfers via the OutboundPayments API.
            sig {
              returns(::Stripe::Treasury::FinancialAccount::CreateParams::Features::OutboundPayments::UsDomesticWire)
             }
            attr_accessor :us_domestic_wire
            sig {
              params(ach: ::Stripe::Treasury::FinancialAccount::CreateParams::Features::OutboundPayments::Ach, us_domestic_wire: ::Stripe::Treasury::FinancialAccount::CreateParams::Features::OutboundPayments::UsDomesticWire).void
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
              returns(::Stripe::Treasury::FinancialAccount::CreateParams::Features::OutboundTransfers::Ach)
             }
            attr_accessor :ach
            # Enables US domestic wire transfers via the OutboundTransfers API.
            sig {
              returns(::Stripe::Treasury::FinancialAccount::CreateParams::Features::OutboundTransfers::UsDomesticWire)
             }
            attr_accessor :us_domestic_wire
            sig {
              params(ach: ::Stripe::Treasury::FinancialAccount::CreateParams::Features::OutboundTransfers::Ach, us_domestic_wire: ::Stripe::Treasury::FinancialAccount::CreateParams::Features::OutboundTransfers::UsDomesticWire).void
             }
            def initialize(ach: nil, us_domestic_wire: nil); end
          end
          # Encodes the FinancialAccount's ability to be used with the Issuing product, including attaching cards to and drawing funds from the FinancialAccount.
          sig { returns(::Stripe::Treasury::FinancialAccount::CreateParams::Features::CardIssuing) }
          attr_accessor :card_issuing
          # Represents whether this FinancialAccount is eligible for deposit insurance. Various factors determine the insurance amount.
          sig {
            returns(::Stripe::Treasury::FinancialAccount::CreateParams::Features::DepositInsurance)
           }
          attr_accessor :deposit_insurance
          # Contains Features that add FinancialAddresses to the FinancialAccount.
          sig {
            returns(::Stripe::Treasury::FinancialAccount::CreateParams::Features::FinancialAddresses)
           }
          attr_accessor :financial_addresses
          # Contains settings related to adding funds to a FinancialAccount from another Account with the same owner.
          sig {
            returns(::Stripe::Treasury::FinancialAccount::CreateParams::Features::InboundTransfers)
           }
          attr_accessor :inbound_transfers
          # Represents the ability for the FinancialAccount to send money to, or receive money from other FinancialAccounts (for example, via OutboundPayment).
          sig {
            returns(::Stripe::Treasury::FinancialAccount::CreateParams::Features::IntraStripeFlows)
           }
          attr_accessor :intra_stripe_flows
          # Includes Features related to initiating money movement out of the FinancialAccount to someone else's bucket of money.
          sig {
            returns(::Stripe::Treasury::FinancialAccount::CreateParams::Features::OutboundPayments)
           }
          attr_accessor :outbound_payments
          # Contains a Feature and settings related to moving money out of the FinancialAccount into another Account with the same owner.
          sig {
            returns(::Stripe::Treasury::FinancialAccount::CreateParams::Features::OutboundTransfers)
           }
          attr_accessor :outbound_transfers
          sig {
            params(card_issuing: ::Stripe::Treasury::FinancialAccount::CreateParams::Features::CardIssuing, deposit_insurance: ::Stripe::Treasury::FinancialAccount::CreateParams::Features::DepositInsurance, financial_addresses: ::Stripe::Treasury::FinancialAccount::CreateParams::Features::FinancialAddresses, inbound_transfers: ::Stripe::Treasury::FinancialAccount::CreateParams::Features::InboundTransfers, intra_stripe_flows: ::Stripe::Treasury::FinancialAccount::CreateParams::Features::IntraStripeFlows, outbound_payments: ::Stripe::Treasury::FinancialAccount::CreateParams::Features::OutboundPayments, outbound_transfers: ::Stripe::Treasury::FinancialAccount::CreateParams::Features::OutboundTransfers).void
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
        sig { returns(::Stripe::Treasury::FinancialAccount::CreateParams::Features) }
        attr_accessor :features
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        # The nickname for the FinancialAccount.
        sig { returns(T.nilable(String)) }
        attr_accessor :nickname
        # The set of functionalities that the platform can restrict on the FinancialAccount.
        sig { returns(::Stripe::Treasury::FinancialAccount::CreateParams::PlatformRestrictions) }
        attr_accessor :platform_restrictions
        # The currencies the FinancialAccount can hold a balance in.
        sig { returns(T::Array[String]) }
        attr_accessor :supported_currencies
        sig {
          params(display_name: T.nilable(String), expand: T::Array[String], features: ::Stripe::Treasury::FinancialAccount::CreateParams::Features, metadata: T::Hash[String, String], nickname: T.nilable(String), platform_restrictions: ::Stripe::Treasury::FinancialAccount::CreateParams::PlatformRestrictions, supported_currencies: T::Array[String]).void
         }
        def initialize(
          display_name: nil,
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
              returns(::Stripe::Treasury::FinancialAccount::UpdateParams::Features::FinancialAddresses::Aba)
             }
            attr_accessor :aba
            sig {
              params(aba: ::Stripe::Treasury::FinancialAccount::UpdateParams::Features::FinancialAddresses::Aba).void
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
              returns(::Stripe::Treasury::FinancialAccount::UpdateParams::Features::InboundTransfers::Ach)
             }
            attr_accessor :ach
            sig {
              params(ach: ::Stripe::Treasury::FinancialAccount::UpdateParams::Features::InboundTransfers::Ach).void
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
              returns(::Stripe::Treasury::FinancialAccount::UpdateParams::Features::OutboundPayments::Ach)
             }
            attr_accessor :ach
            # Enables US domestic wire transfers via the OutboundPayments API.
            sig {
              returns(::Stripe::Treasury::FinancialAccount::UpdateParams::Features::OutboundPayments::UsDomesticWire)
             }
            attr_accessor :us_domestic_wire
            sig {
              params(ach: ::Stripe::Treasury::FinancialAccount::UpdateParams::Features::OutboundPayments::Ach, us_domestic_wire: ::Stripe::Treasury::FinancialAccount::UpdateParams::Features::OutboundPayments::UsDomesticWire).void
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
              returns(::Stripe::Treasury::FinancialAccount::UpdateParams::Features::OutboundTransfers::Ach)
             }
            attr_accessor :ach
            # Enables US domestic wire transfers via the OutboundTransfers API.
            sig {
              returns(::Stripe::Treasury::FinancialAccount::UpdateParams::Features::OutboundTransfers::UsDomesticWire)
             }
            attr_accessor :us_domestic_wire
            sig {
              params(ach: ::Stripe::Treasury::FinancialAccount::UpdateParams::Features::OutboundTransfers::Ach, us_domestic_wire: ::Stripe::Treasury::FinancialAccount::UpdateParams::Features::OutboundTransfers::UsDomesticWire).void
             }
            def initialize(ach: nil, us_domestic_wire: nil); end
          end
          # Encodes the FinancialAccount's ability to be used with the Issuing product, including attaching cards to and drawing funds from the FinancialAccount.
          sig { returns(::Stripe::Treasury::FinancialAccount::UpdateParams::Features::CardIssuing) }
          attr_accessor :card_issuing
          # Represents whether this FinancialAccount is eligible for deposit insurance. Various factors determine the insurance amount.
          sig {
            returns(::Stripe::Treasury::FinancialAccount::UpdateParams::Features::DepositInsurance)
           }
          attr_accessor :deposit_insurance
          # Contains Features that add FinancialAddresses to the FinancialAccount.
          sig {
            returns(::Stripe::Treasury::FinancialAccount::UpdateParams::Features::FinancialAddresses)
           }
          attr_accessor :financial_addresses
          # Contains settings related to adding funds to a FinancialAccount from another Account with the same owner.
          sig {
            returns(::Stripe::Treasury::FinancialAccount::UpdateParams::Features::InboundTransfers)
           }
          attr_accessor :inbound_transfers
          # Represents the ability for the FinancialAccount to send money to, or receive money from other FinancialAccounts (for example, via OutboundPayment).
          sig {
            returns(::Stripe::Treasury::FinancialAccount::UpdateParams::Features::IntraStripeFlows)
           }
          attr_accessor :intra_stripe_flows
          # Includes Features related to initiating money movement out of the FinancialAccount to someone else's bucket of money.
          sig {
            returns(::Stripe::Treasury::FinancialAccount::UpdateParams::Features::OutboundPayments)
           }
          attr_accessor :outbound_payments
          # Contains a Feature and settings related to moving money out of the FinancialAccount into another Account with the same owner.
          sig {
            returns(::Stripe::Treasury::FinancialAccount::UpdateParams::Features::OutboundTransfers)
           }
          attr_accessor :outbound_transfers
          sig {
            params(card_issuing: ::Stripe::Treasury::FinancialAccount::UpdateParams::Features::CardIssuing, deposit_insurance: ::Stripe::Treasury::FinancialAccount::UpdateParams::Features::DepositInsurance, financial_addresses: ::Stripe::Treasury::FinancialAccount::UpdateParams::Features::FinancialAddresses, inbound_transfers: ::Stripe::Treasury::FinancialAccount::UpdateParams::Features::InboundTransfers, intra_stripe_flows: ::Stripe::Treasury::FinancialAccount::UpdateParams::Features::IntraStripeFlows, outbound_payments: ::Stripe::Treasury::FinancialAccount::UpdateParams::Features::OutboundPayments, outbound_transfers: ::Stripe::Treasury::FinancialAccount::UpdateParams::Features::OutboundTransfers).void
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
          sig { returns(String) }
          attr_accessor :financial_account
          # The payment_method or bank account id. This needs to be a verified bank account.
          sig { returns(String) }
          attr_accessor :payment_method
          # The type of the bank account provided. This can be either "financial_account" or "payment_method"
          sig { returns(String) }
          attr_accessor :type
          sig { params(financial_account: String, payment_method: String, type: String).void }
          def initialize(financial_account: nil, payment_method: nil, type: nil); end
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
        sig { returns(::Stripe::Treasury::FinancialAccount::UpdateParams::Features) }
        attr_accessor :features
        # A different bank account where funds can be deposited/debited in order to get the closing FA's balance to $0
        sig { returns(::Stripe::Treasury::FinancialAccount::UpdateParams::ForwardingSettings) }
        attr_accessor :forwarding_settings
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        # The nickname for the FinancialAccount.
        sig { returns(T.nilable(String)) }
        attr_accessor :nickname
        # The set of functionalities that the platform can restrict on the FinancialAccount.
        sig { returns(::Stripe::Treasury::FinancialAccount::UpdateParams::PlatformRestrictions) }
        attr_accessor :platform_restrictions
        sig {
          params(display_name: T.nilable(String), expand: T::Array[String], features: ::Stripe::Treasury::FinancialAccount::UpdateParams::Features, forwarding_settings: ::Stripe::Treasury::FinancialAccount::UpdateParams::ForwardingSettings, metadata: T::Hash[String, String], nickname: T.nilable(String), platform_restrictions: ::Stripe::Treasury::FinancialAccount::UpdateParams::PlatformRestrictions).void
         }
        def initialize(
          display_name: nil,
          expand: nil,
          features: nil,
          forwarding_settings: nil,
          metadata: nil,
          nickname: nil,
          platform_restrictions: nil
        ); end
      end
      class RetrieveFeaturesParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      class UpdateFeaturesParams < Stripe::RequestParams
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
            returns(::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::FinancialAddresses::Aba)
           }
          attr_accessor :aba
          sig {
            params(aba: ::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::FinancialAddresses::Aba).void
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
            returns(::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::InboundTransfers::Ach)
           }
          attr_accessor :ach
          sig {
            params(ach: ::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::InboundTransfers::Ach).void
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
            returns(::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::OutboundPayments::Ach)
           }
          attr_accessor :ach
          # Enables US domestic wire transfers via the OutboundPayments API.
          sig {
            returns(::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::OutboundPayments::UsDomesticWire)
           }
          attr_accessor :us_domestic_wire
          sig {
            params(ach: ::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::OutboundPayments::Ach, us_domestic_wire: ::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::OutboundPayments::UsDomesticWire).void
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
            returns(::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::OutboundTransfers::Ach)
           }
          attr_accessor :ach
          # Enables US domestic wire transfers via the OutboundTransfers API.
          sig {
            returns(::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::OutboundTransfers::UsDomesticWire)
           }
          attr_accessor :us_domestic_wire
          sig {
            params(ach: ::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::OutboundTransfers::Ach, us_domestic_wire: ::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::OutboundTransfers::UsDomesticWire).void
           }
          def initialize(ach: nil, us_domestic_wire: nil); end
        end
        # Encodes the FinancialAccount's ability to be used with the Issuing product, including attaching cards to and drawing funds from the FinancialAccount.
        sig { returns(::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::CardIssuing) }
        attr_accessor :card_issuing
        # Represents whether this FinancialAccount is eligible for deposit insurance. Various factors determine the insurance amount.
        sig {
          returns(::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::DepositInsurance)
         }
        attr_accessor :deposit_insurance
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # Contains Features that add FinancialAddresses to the FinancialAccount.
        sig {
          returns(::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::FinancialAddresses)
         }
        attr_accessor :financial_addresses
        # Contains settings related to adding funds to a FinancialAccount from another Account with the same owner.
        sig {
          returns(::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::InboundTransfers)
         }
        attr_accessor :inbound_transfers
        # Represents the ability for the FinancialAccount to send money to, or receive money from other FinancialAccounts (for example, via OutboundPayment).
        sig {
          returns(::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::IntraStripeFlows)
         }
        attr_accessor :intra_stripe_flows
        # Includes Features related to initiating money movement out of the FinancialAccount to someone else's bucket of money.
        sig {
          returns(::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::OutboundPayments)
         }
        attr_accessor :outbound_payments
        # Contains a Feature and settings related to moving money out of the FinancialAccount into another Account with the same owner.
        sig {
          returns(::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::OutboundTransfers)
         }
        attr_accessor :outbound_transfers
        sig {
          params(card_issuing: ::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::CardIssuing, deposit_insurance: ::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::DepositInsurance, expand: T::Array[String], financial_addresses: ::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::FinancialAddresses, inbound_transfers: ::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::InboundTransfers, intra_stripe_flows: ::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::IntraStripeFlows, outbound_payments: ::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::OutboundPayments, outbound_transfers: ::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams::OutboundTransfers).void
         }
        def initialize(
          card_issuing: nil,
          deposit_insurance: nil,
          expand: nil,
          financial_addresses: nil,
          inbound_transfers: nil,
          intra_stripe_flows: nil,
          outbound_payments: nil,
          outbound_transfers: nil
        ); end
      end
      class CloseParams < Stripe::RequestParams
        class ForwardingSettings < Stripe::RequestParams
          # The financial_account id
          sig { returns(String) }
          attr_accessor :financial_account
          # The payment_method or bank account id. This needs to be a verified bank account.
          sig { returns(String) }
          attr_accessor :payment_method
          # The type of the bank account provided. This can be either "financial_account" or "payment_method"
          sig { returns(String) }
          attr_accessor :type
          sig { params(financial_account: String, payment_method: String, type: String).void }
          def initialize(financial_account: nil, payment_method: nil, type: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # A different bank account where funds can be deposited/debited in order to get the closing FA's balance to $0
        sig { returns(::Stripe::Treasury::FinancialAccount::CloseParams::ForwardingSettings) }
        attr_accessor :forwarding_settings
        sig {
          params(expand: T::Array[String], forwarding_settings: ::Stripe::Treasury::FinancialAccount::CloseParams::ForwardingSettings).void
         }
        def initialize(expand: nil, forwarding_settings: nil); end
      end
      # Closes a FinancialAccount. A FinancialAccount can only be closed if it has a zero balance, has no pending InboundTransfers, and has canceled all attached Issuing cards.
      sig {
        params(params: T.any(::Stripe::Treasury::FinancialAccount::CloseParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::FinancialAccount)
       }
      def close(params = {}, opts = {}); end

      # Closes a FinancialAccount. A FinancialAccount can only be closed if it has a zero balance, has no pending InboundTransfers, and has canceled all attached Issuing cards.
      sig {
        params(financial_account: String, params: T.any(::Stripe::Treasury::FinancialAccount::CloseParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::FinancialAccount)
       }
      def self.close(financial_account, params = {}, opts = {}); end

      # Creates a new FinancialAccount. For now, each connected account can only have one FinancialAccount.
      sig {
        params(params: T.any(::Stripe::Treasury::FinancialAccount::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::FinancialAccount)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of FinancialAccounts.
      sig {
        params(params: T.any(::Stripe::Treasury::FinancialAccount::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Retrieves Features information associated with the FinancialAccount.
      sig {
        params(params: T.any(::Stripe::Treasury::FinancialAccount::RetrieveFeaturesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::FinancialAccountFeatures)
       }
      def retrieve_features(params = {}, opts = {}); end

      # Retrieves Features information associated with the FinancialAccount.
      sig {
        params(financial_account: String, params: T.any(::Stripe::Treasury::FinancialAccount::RetrieveFeaturesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::FinancialAccountFeatures)
       }
      def self.retrieve_features(financial_account, params = {}, opts = {}); end

      # Updates the details of a FinancialAccount.
      sig {
        params(financial_account: String, params: T.any(::Stripe::Treasury::FinancialAccount::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::FinancialAccount)
       }
      def self.update(financial_account, params = {}, opts = {}); end

      # Updates the Features associated with a FinancialAccount.
      sig {
        params(params: T.any(::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::FinancialAccountFeatures)
       }
      def update_features(params = {}, opts = {}); end

      # Updates the Features associated with a FinancialAccount.
      sig {
        params(financial_account: String, params: T.any(::Stripe::Treasury::FinancialAccount::UpdateFeaturesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::FinancialAccountFeatures)
       }
      def self.update_features(financial_account, params = {}, opts = {}); end
    end
  end
end