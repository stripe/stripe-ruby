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
          def gt; end
          sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gt=(_gt); end
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def gte; end
          sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gte=(_gte); end
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def lt; end
          sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lt=(_lt); end
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def lte; end
          sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Only return FinancialAccounts that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Treasury::FinancialAccountService::ListParams::Created, Integer)))
         }
        def created; end
        sig {
          params(_created: T.nilable(T.any(::Stripe::Treasury::FinancialAccountService::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Treasury::FinancialAccountService::ListParams::Created, Integer)))
         }
        def created=(_created); end
        # An object ID cursor for use in pagination.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit ranging from 1 to 100 (defaults to 10).
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # An object ID cursor for use in pagination.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # Only return FinancialAccounts that have the given status: `open` or `closed`
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
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
            def requested; end
            sig { params(_requested: T::Boolean).returns(T::Boolean) }
            def requested=(_requested); end
            sig { params(requested: T::Boolean).void }
            def initialize(requested: nil); end
          end
          class DepositInsurance < Stripe::RequestParams
            # Whether the FinancialAccount should have the Feature.
            sig { returns(T::Boolean) }
            def requested; end
            sig { params(_requested: T::Boolean).returns(T::Boolean) }
            def requested=(_requested); end
            sig { params(requested: T::Boolean).void }
            def initialize(requested: nil); end
          end
          class FinancialAddresses < Stripe::RequestParams
            class Aba < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              def requested; end
              sig { params(_requested: T::Boolean).returns(T::Boolean) }
              def requested=(_requested); end
              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            # Adds an ABA FinancialAddress to the FinancialAccount.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::FinancialAddresses::Aba))
             }
            def aba; end
            sig {
              params(_aba: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::FinancialAddresses::Aba)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::FinancialAddresses::Aba))
             }
            def aba=(_aba); end
            sig {
              params(aba: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::FinancialAddresses::Aba)).void
             }
            def initialize(aba: nil); end
          end
          class InboundTransfers < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              def requested; end
              sig { params(_requested: T::Boolean).returns(T::Boolean) }
              def requested=(_requested); end
              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            # Enables ACH Debits via the InboundTransfers API.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::InboundTransfers::Ach))
             }
            def ach; end
            sig {
              params(_ach: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::InboundTransfers::Ach)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::InboundTransfers::Ach))
             }
            def ach=(_ach); end
            sig {
              params(ach: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::InboundTransfers::Ach)).void
             }
            def initialize(ach: nil); end
          end
          class IntraStripeFlows < Stripe::RequestParams
            # Whether the FinancialAccount should have the Feature.
            sig { returns(T::Boolean) }
            def requested; end
            sig { params(_requested: T::Boolean).returns(T::Boolean) }
            def requested=(_requested); end
            sig { params(requested: T::Boolean).void }
            def initialize(requested: nil); end
          end
          class OutboundPayments < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              def requested; end
              sig { params(_requested: T::Boolean).returns(T::Boolean) }
              def requested=(_requested); end
              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            class UsDomesticWire < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              def requested; end
              sig { params(_requested: T::Boolean).returns(T::Boolean) }
              def requested=(_requested); end
              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            # Enables ACH transfers via the OutboundPayments API.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments::Ach))
             }
            def ach; end
            sig {
              params(_ach: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments::Ach)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments::Ach))
             }
            def ach=(_ach); end
            # Enables US domestic wire transfers via the OutboundPayments API.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments::UsDomesticWire))
             }
            def us_domestic_wire; end
            sig {
              params(_us_domestic_wire: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments::UsDomesticWire)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments::UsDomesticWire))
             }
            def us_domestic_wire=(_us_domestic_wire); end
            sig {
              params(ach: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments::Ach), us_domestic_wire: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments::UsDomesticWire)).void
             }
            def initialize(ach: nil, us_domestic_wire: nil); end
          end
          class OutboundTransfers < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              def requested; end
              sig { params(_requested: T::Boolean).returns(T::Boolean) }
              def requested=(_requested); end
              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            class UsDomesticWire < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              def requested; end
              sig { params(_requested: T::Boolean).returns(T::Boolean) }
              def requested=(_requested); end
              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            # Enables ACH transfers via the OutboundTransfers API.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers::Ach))
             }
            def ach; end
            sig {
              params(_ach: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers::Ach)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers::Ach))
             }
            def ach=(_ach); end
            # Enables US domestic wire transfers via the OutboundTransfers API.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers::UsDomesticWire))
             }
            def us_domestic_wire; end
            sig {
              params(_us_domestic_wire: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers::UsDomesticWire)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers::UsDomesticWire))
             }
            def us_domestic_wire=(_us_domestic_wire); end
            sig {
              params(ach: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers::Ach), us_domestic_wire: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers::UsDomesticWire)).void
             }
            def initialize(ach: nil, us_domestic_wire: nil); end
          end
          # Encodes the FinancialAccount's ability to be used with the Issuing product, including attaching cards to and drawing funds from the FinancialAccount.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::CardIssuing))
           }
          def card_issuing; end
          sig {
            params(_card_issuing: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::CardIssuing)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::CardIssuing))
           }
          def card_issuing=(_card_issuing); end
          # Represents whether this FinancialAccount is eligible for deposit insurance. Various factors determine the insurance amount.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::DepositInsurance))
           }
          def deposit_insurance; end
          sig {
            params(_deposit_insurance: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::DepositInsurance)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::DepositInsurance))
           }
          def deposit_insurance=(_deposit_insurance); end
          # Contains Features that add FinancialAddresses to the FinancialAccount.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::FinancialAddresses))
           }
          def financial_addresses; end
          sig {
            params(_financial_addresses: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::FinancialAddresses)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::FinancialAddresses))
           }
          def financial_addresses=(_financial_addresses); end
          # Contains settings related to adding funds to a FinancialAccount from another Account with the same owner.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::InboundTransfers))
           }
          def inbound_transfers; end
          sig {
            params(_inbound_transfers: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::InboundTransfers)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::InboundTransfers))
           }
          def inbound_transfers=(_inbound_transfers); end
          # Represents the ability for the FinancialAccount to send money to, or receive money from other FinancialAccounts (for example, via OutboundPayment).
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::IntraStripeFlows))
           }
          def intra_stripe_flows; end
          sig {
            params(_intra_stripe_flows: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::IntraStripeFlows)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::IntraStripeFlows))
           }
          def intra_stripe_flows=(_intra_stripe_flows); end
          # Includes Features related to initiating money movement out of the FinancialAccount to someone else's bucket of money.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments))
           }
          def outbound_payments; end
          sig {
            params(_outbound_payments: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundPayments))
           }
          def outbound_payments=(_outbound_payments); end
          # Contains a Feature and settings related to moving money out of the FinancialAccount into another Account with the same owner.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers))
           }
          def outbound_transfers; end
          sig {
            params(_outbound_transfers: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features::OutboundTransfers))
           }
          def outbound_transfers=(_outbound_transfers); end
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
          def inbound_flows; end
          sig { params(_inbound_flows: T.nilable(String)).returns(T.nilable(String)) }
          def inbound_flows=(_inbound_flows); end
          # Restricts all outbound money movement.
          sig { returns(T.nilable(String)) }
          def outbound_flows; end
          sig { params(_outbound_flows: T.nilable(String)).returns(T.nilable(String)) }
          def outbound_flows=(_outbound_flows); end
          sig { params(inbound_flows: T.nilable(String), outbound_flows: T.nilable(String)).void }
          def initialize(inbound_flows: nil, outbound_flows: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Encodes whether a FinancialAccount has access to a particular feature. Stripe or the platform can control features via the requested field.
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::Features))
         }
        def features=(_features); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The nickname for the FinancialAccount.
        sig { returns(T.nilable(String)) }
        def nickname; end
        sig { params(_nickname: T.nilable(String)).returns(T.nilable(String)) }
        def nickname=(_nickname); end
        # The set of functionalities that the platform can restrict on the FinancialAccount.
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::PlatformRestrictions))
         }
        def platform_restrictions; end
        sig {
          params(_platform_restrictions: T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::PlatformRestrictions)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CreateParams::PlatformRestrictions))
         }
        def platform_restrictions=(_platform_restrictions); end
        # The currencies the FinancialAccount can hold a balance in.
        sig { returns(T::Array[String]) }
        def supported_currencies; end
        sig { params(_supported_currencies: T::Array[String]).returns(T::Array[String]) }
        def supported_currencies=(_supported_currencies); end
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
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        class Features < Stripe::RequestParams
          class CardIssuing < Stripe::RequestParams
            # Whether the FinancialAccount should have the Feature.
            sig { returns(T::Boolean) }
            def requested; end
            sig { params(_requested: T::Boolean).returns(T::Boolean) }
            def requested=(_requested); end
            sig { params(requested: T::Boolean).void }
            def initialize(requested: nil); end
          end
          class DepositInsurance < Stripe::RequestParams
            # Whether the FinancialAccount should have the Feature.
            sig { returns(T::Boolean) }
            def requested; end
            sig { params(_requested: T::Boolean).returns(T::Boolean) }
            def requested=(_requested); end
            sig { params(requested: T::Boolean).void }
            def initialize(requested: nil); end
          end
          class FinancialAddresses < Stripe::RequestParams
            class Aba < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              def requested; end
              sig { params(_requested: T::Boolean).returns(T::Boolean) }
              def requested=(_requested); end
              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            # Adds an ABA FinancialAddress to the FinancialAccount.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::FinancialAddresses::Aba))
             }
            def aba; end
            sig {
              params(_aba: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::FinancialAddresses::Aba)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::FinancialAddresses::Aba))
             }
            def aba=(_aba); end
            sig {
              params(aba: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::FinancialAddresses::Aba)).void
             }
            def initialize(aba: nil); end
          end
          class InboundTransfers < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              def requested; end
              sig { params(_requested: T::Boolean).returns(T::Boolean) }
              def requested=(_requested); end
              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            # Enables ACH Debits via the InboundTransfers API.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::InboundTransfers::Ach))
             }
            def ach; end
            sig {
              params(_ach: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::InboundTransfers::Ach)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::InboundTransfers::Ach))
             }
            def ach=(_ach); end
            sig {
              params(ach: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::InboundTransfers::Ach)).void
             }
            def initialize(ach: nil); end
          end
          class IntraStripeFlows < Stripe::RequestParams
            # Whether the FinancialAccount should have the Feature.
            sig { returns(T::Boolean) }
            def requested; end
            sig { params(_requested: T::Boolean).returns(T::Boolean) }
            def requested=(_requested); end
            sig { params(requested: T::Boolean).void }
            def initialize(requested: nil); end
          end
          class OutboundPayments < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              def requested; end
              sig { params(_requested: T::Boolean).returns(T::Boolean) }
              def requested=(_requested); end
              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            class UsDomesticWire < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              def requested; end
              sig { params(_requested: T::Boolean).returns(T::Boolean) }
              def requested=(_requested); end
              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            # Enables ACH transfers via the OutboundPayments API.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments::Ach))
             }
            def ach; end
            sig {
              params(_ach: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments::Ach)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments::Ach))
             }
            def ach=(_ach); end
            # Enables US domestic wire transfers via the OutboundPayments API.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments::UsDomesticWire))
             }
            def us_domestic_wire; end
            sig {
              params(_us_domestic_wire: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments::UsDomesticWire)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments::UsDomesticWire))
             }
            def us_domestic_wire=(_us_domestic_wire); end
            sig {
              params(ach: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments::Ach), us_domestic_wire: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments::UsDomesticWire)).void
             }
            def initialize(ach: nil, us_domestic_wire: nil); end
          end
          class OutboundTransfers < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              def requested; end
              sig { params(_requested: T::Boolean).returns(T::Boolean) }
              def requested=(_requested); end
              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            class UsDomesticWire < Stripe::RequestParams
              # Whether the FinancialAccount should have the Feature.
              sig { returns(T::Boolean) }
              def requested; end
              sig { params(_requested: T::Boolean).returns(T::Boolean) }
              def requested=(_requested); end
              sig { params(requested: T::Boolean).void }
              def initialize(requested: nil); end
            end
            # Enables ACH transfers via the OutboundTransfers API.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers::Ach))
             }
            def ach; end
            sig {
              params(_ach: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers::Ach)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers::Ach))
             }
            def ach=(_ach); end
            # Enables US domestic wire transfers via the OutboundTransfers API.
            sig {
              returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers::UsDomesticWire))
             }
            def us_domestic_wire; end
            sig {
              params(_us_domestic_wire: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers::UsDomesticWire)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers::UsDomesticWire))
             }
            def us_domestic_wire=(_us_domestic_wire); end
            sig {
              params(ach: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers::Ach), us_domestic_wire: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers::UsDomesticWire)).void
             }
            def initialize(ach: nil, us_domestic_wire: nil); end
          end
          # Encodes the FinancialAccount's ability to be used with the Issuing product, including attaching cards to and drawing funds from the FinancialAccount.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::CardIssuing))
           }
          def card_issuing; end
          sig {
            params(_card_issuing: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::CardIssuing)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::CardIssuing))
           }
          def card_issuing=(_card_issuing); end
          # Represents whether this FinancialAccount is eligible for deposit insurance. Various factors determine the insurance amount.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::DepositInsurance))
           }
          def deposit_insurance; end
          sig {
            params(_deposit_insurance: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::DepositInsurance)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::DepositInsurance))
           }
          def deposit_insurance=(_deposit_insurance); end
          # Contains Features that add FinancialAddresses to the FinancialAccount.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::FinancialAddresses))
           }
          def financial_addresses; end
          sig {
            params(_financial_addresses: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::FinancialAddresses)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::FinancialAddresses))
           }
          def financial_addresses=(_financial_addresses); end
          # Contains settings related to adding funds to a FinancialAccount from another Account with the same owner.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::InboundTransfers))
           }
          def inbound_transfers; end
          sig {
            params(_inbound_transfers: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::InboundTransfers)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::InboundTransfers))
           }
          def inbound_transfers=(_inbound_transfers); end
          # Represents the ability for the FinancialAccount to send money to, or receive money from other FinancialAccounts (for example, via OutboundPayment).
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::IntraStripeFlows))
           }
          def intra_stripe_flows; end
          sig {
            params(_intra_stripe_flows: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::IntraStripeFlows)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::IntraStripeFlows))
           }
          def intra_stripe_flows=(_intra_stripe_flows); end
          # Includes Features related to initiating money movement out of the FinancialAccount to someone else's bucket of money.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments))
           }
          def outbound_payments; end
          sig {
            params(_outbound_payments: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundPayments))
           }
          def outbound_payments=(_outbound_payments); end
          # Contains a Feature and settings related to moving money out of the FinancialAccount into another Account with the same owner.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers))
           }
          def outbound_transfers; end
          sig {
            params(_outbound_transfers: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features::OutboundTransfers))
           }
          def outbound_transfers=(_outbound_transfers); end
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
          def financial_account; end
          sig { params(_financial_account: T.nilable(String)).returns(T.nilable(String)) }
          def financial_account=(_financial_account); end
          # The payment_method or bank account id. This needs to be a verified bank account.
          sig { returns(T.nilable(String)) }
          def payment_method; end
          sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
          def payment_method=(_payment_method); end
          # The type of the bank account provided. This can be either "financial_account" or "payment_method"
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(financial_account: T.nilable(String), payment_method: T.nilable(String), type: String).void
           }
          def initialize(financial_account: nil, payment_method: nil, type: nil); end
        end
        class PlatformRestrictions < Stripe::RequestParams
          # Restricts all inbound money movement.
          sig { returns(T.nilable(String)) }
          def inbound_flows; end
          sig { params(_inbound_flows: T.nilable(String)).returns(T.nilable(String)) }
          def inbound_flows=(_inbound_flows); end
          # Restricts all outbound money movement.
          sig { returns(T.nilable(String)) }
          def outbound_flows; end
          sig { params(_outbound_flows: T.nilable(String)).returns(T.nilable(String)) }
          def outbound_flows=(_outbound_flows); end
          sig { params(inbound_flows: T.nilable(String), outbound_flows: T.nilable(String)).void }
          def initialize(inbound_flows: nil, outbound_flows: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Encodes whether a FinancialAccount has access to a particular feature, with a status enum and associated `status_details`. Stripe or the platform may control features via the requested field.
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features))
         }
        def features; end
        sig {
          params(_features: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::Features))
         }
        def features=(_features); end
        # A different bank account where funds can be deposited/debited in order to get the closing FA's balance to $0
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::ForwardingSettings))
         }
        def forwarding_settings; end
        sig {
          params(_forwarding_settings: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::ForwardingSettings)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::ForwardingSettings))
         }
        def forwarding_settings=(_forwarding_settings); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The nickname for the FinancialAccount.
        sig { returns(T.nilable(String)) }
        def nickname; end
        sig { params(_nickname: T.nilable(String)).returns(T.nilable(String)) }
        def nickname=(_nickname); end
        # The set of functionalities that the platform can restrict on the FinancialAccount.
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::PlatformRestrictions))
         }
        def platform_restrictions; end
        sig {
          params(_platform_restrictions: T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::PlatformRestrictions)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::UpdateParams::PlatformRestrictions))
         }
        def platform_restrictions=(_platform_restrictions); end
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
          def financial_account; end
          sig { params(_financial_account: T.nilable(String)).returns(T.nilable(String)) }
          def financial_account=(_financial_account); end
          # The payment_method or bank account id. This needs to be a verified bank account.
          sig { returns(T.nilable(String)) }
          def payment_method; end
          sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
          def payment_method=(_payment_method); end
          # The type of the bank account provided. This can be either "financial_account" or "payment_method"
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(financial_account: T.nilable(String), payment_method: T.nilable(String), type: String).void
           }
          def initialize(financial_account: nil, payment_method: nil, type: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A different bank account where funds can be deposited/debited in order to get the closing FA's balance to $0
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CloseParams::ForwardingSettings))
         }
        def forwarding_settings; end
        sig {
          params(_forwarding_settings: T.nilable(::Stripe::Treasury::FinancialAccountService::CloseParams::ForwardingSettings)).returns(T.nilable(::Stripe::Treasury::FinancialAccountService::CloseParams::ForwardingSettings))
         }
        def forwarding_settings=(_forwarding_settings); end
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