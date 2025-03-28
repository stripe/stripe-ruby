# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    class FinancialAccountFeaturesService < StripeService
      class UpdateParams < Stripe::RequestParams
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
            returns(T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::FinancialAddresses::Aba))
           }
          attr_accessor :aba
          sig {
            params(aba: T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::FinancialAddresses::Aba)).void
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
            returns(T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::InboundTransfers::Ach))
           }
          attr_accessor :ach
          sig {
            params(ach: T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::InboundTransfers::Ach)).void
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
            returns(T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::OutboundPayments::Ach))
           }
          attr_accessor :ach
          # Enables US domestic wire transfers via the OutboundPayments API.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::OutboundPayments::UsDomesticWire))
           }
          attr_accessor :us_domestic_wire
          sig {
            params(ach: T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::OutboundPayments::Ach), us_domestic_wire: T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::OutboundPayments::UsDomesticWire)).void
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
            returns(T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::OutboundTransfers::Ach))
           }
          attr_accessor :ach
          # Enables US domestic wire transfers via the OutboundTransfers API.
          sig {
            returns(T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::OutboundTransfers::UsDomesticWire))
           }
          attr_accessor :us_domestic_wire
          sig {
            params(ach: T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::OutboundTransfers::Ach), us_domestic_wire: T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::OutboundTransfers::UsDomesticWire)).void
           }
          def initialize(ach: nil, us_domestic_wire: nil); end
        end
        # Encodes the FinancialAccount's ability to be used with the Issuing product, including attaching cards to and drawing funds from the FinancialAccount.
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::CardIssuing))
         }
        attr_accessor :card_issuing
        # Represents whether this FinancialAccount is eligible for deposit insurance. Various factors determine the insurance amount.
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::DepositInsurance))
         }
        attr_accessor :deposit_insurance
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Contains Features that add FinancialAddresses to the FinancialAccount.
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::FinancialAddresses))
         }
        attr_accessor :financial_addresses
        # Contains settings related to adding funds to a FinancialAccount from another Account with the same owner.
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::InboundTransfers))
         }
        attr_accessor :inbound_transfers
        # Represents the ability for the FinancialAccount to send money to, or receive money from other FinancialAccounts (for example, via OutboundPayment).
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::IntraStripeFlows))
         }
        attr_accessor :intra_stripe_flows
        # Includes Features related to initiating money movement out of the FinancialAccount to someone else's bucket of money.
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::OutboundPayments))
         }
        attr_accessor :outbound_payments
        # Contains a Feature and settings related to moving money out of the FinancialAccount into another Account with the same owner.
        sig {
          returns(T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::OutboundTransfers))
         }
        attr_accessor :outbound_transfers
        sig {
          params(card_issuing: T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::CardIssuing), deposit_insurance: T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::DepositInsurance), expand: T.nilable(T::Array[String]), financial_addresses: T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::FinancialAddresses), inbound_transfers: T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::InboundTransfers), intra_stripe_flows: T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::IntraStripeFlows), outbound_payments: T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::OutboundPayments), outbound_transfers: T.nilable(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams::OutboundTransfers)).void
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
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Retrieves Features information associated with the FinancialAccount.
      sig {
        params(financial_account: String, params: T.any(::Stripe::Treasury::FinancialAccountFeaturesService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::FinancialAccountFeatures)
       }
      def retrieve(financial_account, params = {}, opts = {}); end

      # Updates the Features associated with a FinancialAccount.
      sig {
        params(financial_account: String, params: T.any(::Stripe::Treasury::FinancialAccountFeaturesService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::FinancialAccountFeatures)
       }
      def update(financial_account, params = {}, opts = {}); end
    end
  end
end