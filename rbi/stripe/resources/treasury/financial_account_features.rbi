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
          # Represents the reason why the status is `pending` or `restricted`.
          sig { returns(String) }
          def code; end
          # Represents what the user should do, if anything, to activate the Feature.
          sig { returns(T.nilable(String)) }
          def resolution; end
          # The `platform_restrictions` that are restricting this Feature.
          sig { returns(String) }
          def restriction; end
        end
        # Whether the FinancialAccount should have the Feature.
        sig { returns(T::Boolean) }
        def requested; end
        # Whether the Feature is operational.
        sig { returns(String) }
        def status; end
        # Additional details; includes at least one entry when the status is not `active`.
        sig { returns(T::Array[StatusDetail]) }
        def status_details; end
      end
      class DepositInsurance < Stripe::StripeObject
        class StatusDetail < Stripe::StripeObject
          # Represents the reason why the status is `pending` or `restricted`.
          sig { returns(String) }
          def code; end
          # Represents what the user should do, if anything, to activate the Feature.
          sig { returns(T.nilable(String)) }
          def resolution; end
          # The `platform_restrictions` that are restricting this Feature.
          sig { returns(String) }
          def restriction; end
        end
        # Whether the FinancialAccount should have the Feature.
        sig { returns(T::Boolean) }
        def requested; end
        # Whether the Feature is operational.
        sig { returns(String) }
        def status; end
        # Additional details; includes at least one entry when the status is not `active`.
        sig { returns(T::Array[StatusDetail]) }
        def status_details; end
      end
      class FinancialAddresses < Stripe::StripeObject
        class Aba < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            # Represents the reason why the status is `pending` or `restricted`.
            sig { returns(String) }
            def code; end
            # Represents what the user should do, if anything, to activate the Feature.
            sig { returns(T.nilable(String)) }
            def resolution; end
            # The `platform_restrictions` that are restricting this Feature.
            sig { returns(String) }
            def restriction; end
          end
          # Whether the FinancialAccount should have the Feature.
          sig { returns(T::Boolean) }
          def requested; end
          # Whether the Feature is operational.
          sig { returns(String) }
          def status; end
          # Additional details; includes at least one entry when the status is not `active`.
          sig { returns(T::Array[StatusDetail]) }
          def status_details; end
        end
        # Toggle settings for enabling/disabling the ABA address feature
        sig { returns(Aba) }
        def aba; end
      end
      class InboundTransfers < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            # Represents the reason why the status is `pending` or `restricted`.
            sig { returns(String) }
            def code; end
            # Represents what the user should do, if anything, to activate the Feature.
            sig { returns(T.nilable(String)) }
            def resolution; end
            # The `platform_restrictions` that are restricting this Feature.
            sig { returns(String) }
            def restriction; end
          end
          # Whether the FinancialAccount should have the Feature.
          sig { returns(T::Boolean) }
          def requested; end
          # Whether the Feature is operational.
          sig { returns(String) }
          def status; end
          # Additional details; includes at least one entry when the status is not `active`.
          sig { returns(T::Array[StatusDetail]) }
          def status_details; end
        end
        # Toggle settings for enabling/disabling an inbound ACH specific feature
        sig { returns(Ach) }
        def ach; end
      end
      class IntraStripeFlows < Stripe::StripeObject
        class StatusDetail < Stripe::StripeObject
          # Represents the reason why the status is `pending` or `restricted`.
          sig { returns(String) }
          def code; end
          # Represents what the user should do, if anything, to activate the Feature.
          sig { returns(T.nilable(String)) }
          def resolution; end
          # The `platform_restrictions` that are restricting this Feature.
          sig { returns(String) }
          def restriction; end
        end
        # Whether the FinancialAccount should have the Feature.
        sig { returns(T::Boolean) }
        def requested; end
        # Whether the Feature is operational.
        sig { returns(String) }
        def status; end
        # Additional details; includes at least one entry when the status is not `active`.
        sig { returns(T::Array[StatusDetail]) }
        def status_details; end
      end
      class OutboundPayments < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            # Represents the reason why the status is `pending` or `restricted`.
            sig { returns(String) }
            def code; end
            # Represents what the user should do, if anything, to activate the Feature.
            sig { returns(T.nilable(String)) }
            def resolution; end
            # The `platform_restrictions` that are restricting this Feature.
            sig { returns(String) }
            def restriction; end
          end
          # Whether the FinancialAccount should have the Feature.
          sig { returns(T::Boolean) }
          def requested; end
          # Whether the Feature is operational.
          sig { returns(String) }
          def status; end
          # Additional details; includes at least one entry when the status is not `active`.
          sig { returns(T::Array[StatusDetail]) }
          def status_details; end
        end
        class UsDomesticWire < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            # Represents the reason why the status is `pending` or `restricted`.
            sig { returns(String) }
            def code; end
            # Represents what the user should do, if anything, to activate the Feature.
            sig { returns(T.nilable(String)) }
            def resolution; end
            # The `platform_restrictions` that are restricting this Feature.
            sig { returns(String) }
            def restriction; end
          end
          # Whether the FinancialAccount should have the Feature.
          sig { returns(T::Boolean) }
          def requested; end
          # Whether the Feature is operational.
          sig { returns(String) }
          def status; end
          # Additional details; includes at least one entry when the status is not `active`.
          sig { returns(T::Array[StatusDetail]) }
          def status_details; end
        end
        # Toggle settings for enabling/disabling an outbound ACH specific feature
        sig { returns(Ach) }
        def ach; end
        # Toggle settings for enabling/disabling a feature
        sig { returns(UsDomesticWire) }
        def us_domestic_wire; end
      end
      class OutboundTransfers < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            # Represents the reason why the status is `pending` or `restricted`.
            sig { returns(String) }
            def code; end
            # Represents what the user should do, if anything, to activate the Feature.
            sig { returns(T.nilable(String)) }
            def resolution; end
            # The `platform_restrictions` that are restricting this Feature.
            sig { returns(String) }
            def restriction; end
          end
          # Whether the FinancialAccount should have the Feature.
          sig { returns(T::Boolean) }
          def requested; end
          # Whether the Feature is operational.
          sig { returns(String) }
          def status; end
          # Additional details; includes at least one entry when the status is not `active`.
          sig { returns(T::Array[StatusDetail]) }
          def status_details; end
        end
        class UsDomesticWire < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            # Represents the reason why the status is `pending` or `restricted`.
            sig { returns(String) }
            def code; end
            # Represents what the user should do, if anything, to activate the Feature.
            sig { returns(T.nilable(String)) }
            def resolution; end
            # The `platform_restrictions` that are restricting this Feature.
            sig { returns(String) }
            def restriction; end
          end
          # Whether the FinancialAccount should have the Feature.
          sig { returns(T::Boolean) }
          def requested; end
          # Whether the Feature is operational.
          sig { returns(String) }
          def status; end
          # Additional details; includes at least one entry when the status is not `active`.
          sig { returns(T::Array[StatusDetail]) }
          def status_details; end
        end
        # Toggle settings for enabling/disabling an outbound ACH specific feature
        sig { returns(Ach) }
        def ach; end
        # Toggle settings for enabling/disabling a feature
        sig { returns(UsDomesticWire) }
        def us_domestic_wire; end
      end
      # Toggle settings for enabling/disabling a feature
      sig { returns(CardIssuing) }
      def card_issuing; end
      # Toggle settings for enabling/disabling a feature
      sig { returns(DepositInsurance) }
      def deposit_insurance; end
      # Settings related to Financial Addresses features on a Financial Account
      sig { returns(FinancialAddresses) }
      def financial_addresses; end
      # InboundTransfers contains inbound transfers features for a FinancialAccount.
      sig { returns(InboundTransfers) }
      def inbound_transfers; end
      # Toggle settings for enabling/disabling a feature
      sig { returns(IntraStripeFlows) }
      def intra_stripe_flows; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Settings related to Outbound Payments features on a Financial Account
      sig { returns(OutboundPayments) }
      def outbound_payments; end
      # OutboundTransfers contains outbound transfers features for a FinancialAccount.
      sig { returns(OutboundTransfers) }
      def outbound_transfers; end
    end
  end
end