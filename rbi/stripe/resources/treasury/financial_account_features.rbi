# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    # Encodes whether a FinancialAccount has access to a particular Feature, with a `status` enum and associated `status_details`.
    # Stripe or the platform can control Features via the requested field.
    class FinancialAccountFeatures < APIResource
      class CardIssuing < Stripe::StripeObject
        class StatusDetail < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :code
          sig { returns(T.nilable(String)) }
          attr_reader :resolution
          sig { returns(String) }
          attr_reader :restriction
        end
        sig { returns(T::Boolean) }
        attr_reader :requested
        sig { returns(String) }
        attr_reader :status
        sig { returns(T::Array[StatusDetail]) }
        attr_reader :status_details
      end
      class DepositInsurance < Stripe::StripeObject
        class StatusDetail < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :code
          sig { returns(T.nilable(String)) }
          attr_reader :resolution
          sig { returns(String) }
          attr_reader :restriction
        end
        sig { returns(T::Boolean) }
        attr_reader :requested
        sig { returns(String) }
        attr_reader :status
        sig { returns(T::Array[StatusDetail]) }
        attr_reader :status_details
      end
      class FinancialAddresses < Stripe::StripeObject
        class Aba < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :code
            sig { returns(T.nilable(String)) }
            attr_reader :resolution
            sig { returns(String) }
            attr_reader :restriction
          end
          sig { returns(String) }
          attr_reader :bank
          sig { returns(T::Boolean) }
          attr_reader :requested
          sig { returns(String) }
          attr_reader :status
          sig { returns(T::Array[StatusDetail]) }
          attr_reader :status_details
        end
        sig { returns(Aba) }
        attr_reader :aba
      end
      class InboundTransfers < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :code
            sig { returns(T.nilable(String)) }
            attr_reader :resolution
            sig { returns(String) }
            attr_reader :restriction
          end
          sig { returns(T::Boolean) }
          attr_reader :requested
          sig { returns(String) }
          attr_reader :status
          sig { returns(T::Array[StatusDetail]) }
          attr_reader :status_details
        end
        sig { returns(Ach) }
        attr_reader :ach
      end
      class IntraStripeFlows < Stripe::StripeObject
        class StatusDetail < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :code
          sig { returns(T.nilable(String)) }
          attr_reader :resolution
          sig { returns(String) }
          attr_reader :restriction
        end
        sig { returns(T::Boolean) }
        attr_reader :requested
        sig { returns(String) }
        attr_reader :status
        sig { returns(T::Array[StatusDetail]) }
        attr_reader :status_details
      end
      class OutboundPayments < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :code
            sig { returns(T.nilable(String)) }
            attr_reader :resolution
            sig { returns(String) }
            attr_reader :restriction
          end
          sig { returns(T::Boolean) }
          attr_reader :requested
          sig { returns(String) }
          attr_reader :status
          sig { returns(T::Array[StatusDetail]) }
          attr_reader :status_details
        end
        class UsDomesticWire < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :code
            sig { returns(T.nilable(String)) }
            attr_reader :resolution
            sig { returns(String) }
            attr_reader :restriction
          end
          sig { returns(T::Boolean) }
          attr_reader :requested
          sig { returns(String) }
          attr_reader :status
          sig { returns(T::Array[StatusDetail]) }
          attr_reader :status_details
        end
        sig { returns(Ach) }
        attr_reader :ach
        sig { returns(UsDomesticWire) }
        attr_reader :us_domestic_wire
      end
      class OutboundTransfers < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :code
            sig { returns(T.nilable(String)) }
            attr_reader :resolution
            sig { returns(String) }
            attr_reader :restriction
          end
          sig { returns(T::Boolean) }
          attr_reader :requested
          sig { returns(String) }
          attr_reader :status
          sig { returns(T::Array[StatusDetail]) }
          attr_reader :status_details
        end
        class UsDomesticWire < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :code
            sig { returns(T.nilable(String)) }
            attr_reader :resolution
            sig { returns(String) }
            attr_reader :restriction
          end
          sig { returns(T::Boolean) }
          attr_reader :requested
          sig { returns(String) }
          attr_reader :status
          sig { returns(T::Array[StatusDetail]) }
          attr_reader :status_details
        end
        sig { returns(Ach) }
        attr_reader :ach
        sig { returns(UsDomesticWire) }
        attr_reader :us_domestic_wire
      end
      sig { returns(CardIssuing) }
      # Toggle settings for enabling/disabling a feature
      attr_reader :card_issuing
      sig { returns(DepositInsurance) }
      # Toggle settings for enabling/disabling a feature
      attr_reader :deposit_insurance
      sig { returns(FinancialAddresses) }
      # Settings related to Financial Addresses features on a Financial Account
      attr_reader :financial_addresses
      sig { returns(InboundTransfers) }
      # InboundTransfers contains inbound transfers features for a FinancialAccount.
      attr_reader :inbound_transfers
      sig { returns(IntraStripeFlows) }
      # Toggle settings for enabling/disabling a feature
      attr_reader :intra_stripe_flows
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(OutboundPayments) }
      # Settings related to Outbound Payments features on a Financial Account
      attr_reader :outbound_payments
      sig { returns(OutboundTransfers) }
      # OutboundTransfers contains outbound transfers features for a FinancialAccount.
      attr_reader :outbound_transfers
    end
  end
end