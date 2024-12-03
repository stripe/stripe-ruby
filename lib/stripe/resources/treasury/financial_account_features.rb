# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    # Encodes whether a FinancialAccount has access to a particular Feature, with a `status` enum and associated `status_details`.
    # Stripe or the platform can control Features via the requested field.
    class FinancialAccountFeatures < APIResource
      OBJECT_NAME = "treasury.financial_account_features"
      def self.object_name
        "treasury.financial_account_features"
      end

      class CardIssuing < Stripe::StripeObject
        class StatusDetail < Stripe::StripeObject
          # Represents the reason why the status is `pending` or `restricted`.
          attr_reader :code
          # Represents what the user should do, if anything, to activate the Feature.
          attr_reader :resolution
          # The `platform_restrictions` that are restricting this Feature.
          attr_reader :restriction
        end
        # Whether the FinancialAccount should have the Feature.
        attr_reader :requested
        # Whether the Feature is operational.
        attr_reader :status
        # Additional details; includes at least one entry when the status is not `active`.
        attr_reader :status_details
      end

      class DepositInsurance < Stripe::StripeObject
        class StatusDetail < Stripe::StripeObject
          # Represents the reason why the status is `pending` or `restricted`.
          attr_reader :code
          # Represents what the user should do, if anything, to activate the Feature.
          attr_reader :resolution
          # The `platform_restrictions` that are restricting this Feature.
          attr_reader :restriction
        end
        # Whether the FinancialAccount should have the Feature.
        attr_reader :requested
        # Whether the Feature is operational.
        attr_reader :status
        # Additional details; includes at least one entry when the status is not `active`.
        attr_reader :status_details
      end

      class FinancialAddresses < Stripe::StripeObject
        class Aba < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            # Represents the reason why the status is `pending` or `restricted`.
            attr_reader :code
            # Represents what the user should do, if anything, to activate the Feature.
            attr_reader :resolution
            # The `platform_restrictions` that are restricting this Feature.
            attr_reader :restriction
          end
          # Requested bank partner for this Financial Account
          attr_reader :bank
          # Whether the FinancialAccount should have the Feature.
          attr_reader :requested
          # Whether the Feature is operational.
          attr_reader :status
          # Additional details; includes at least one entry when the status is not `active`.
          attr_reader :status_details
        end
        # Toggle settings for enabling/disabling the ABA address feature
        attr_reader :aba
      end

      class InboundTransfers < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            # Represents the reason why the status is `pending` or `restricted`.
            attr_reader :code
            # Represents what the user should do, if anything, to activate the Feature.
            attr_reader :resolution
            # The `platform_restrictions` that are restricting this Feature.
            attr_reader :restriction
          end
          # Whether the FinancialAccount should have the Feature.
          attr_reader :requested
          # Whether the Feature is operational.
          attr_reader :status
          # Additional details; includes at least one entry when the status is not `active`.
          attr_reader :status_details
        end
        # Toggle settings for enabling/disabling an ACH specific feature
        attr_reader :ach
      end

      class IntraStripeFlows < Stripe::StripeObject
        class StatusDetail < Stripe::StripeObject
          # Represents the reason why the status is `pending` or `restricted`.
          attr_reader :code
          # Represents what the user should do, if anything, to activate the Feature.
          attr_reader :resolution
          # The `platform_restrictions` that are restricting this Feature.
          attr_reader :restriction
        end
        # Whether the FinancialAccount should have the Feature.
        attr_reader :requested
        # Whether the Feature is operational.
        attr_reader :status
        # Additional details; includes at least one entry when the status is not `active`.
        attr_reader :status_details
      end

      class OutboundPayments < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            # Represents the reason why the status is `pending` or `restricted`.
            attr_reader :code
            # Represents what the user should do, if anything, to activate the Feature.
            attr_reader :resolution
            # The `platform_restrictions` that are restricting this Feature.
            attr_reader :restriction
          end
          # Whether the FinancialAccount should have the Feature.
          attr_reader :requested
          # Whether the Feature is operational.
          attr_reader :status
          # Additional details; includes at least one entry when the status is not `active`.
          attr_reader :status_details
        end

        class UsDomesticWire < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            # Represents the reason why the status is `pending` or `restricted`.
            attr_reader :code
            # Represents what the user should do, if anything, to activate the Feature.
            attr_reader :resolution
            # The `platform_restrictions` that are restricting this Feature.
            attr_reader :restriction
          end
          # Whether the FinancialAccount should have the Feature.
          attr_reader :requested
          # Whether the Feature is operational.
          attr_reader :status
          # Additional details; includes at least one entry when the status is not `active`.
          attr_reader :status_details
        end
        # Toggle settings for enabling/disabling an ACH specific feature
        attr_reader :ach
        # Toggle settings for enabling/disabling a feature
        attr_reader :us_domestic_wire
      end

      class OutboundTransfers < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            # Represents the reason why the status is `pending` or `restricted`.
            attr_reader :code
            # Represents what the user should do, if anything, to activate the Feature.
            attr_reader :resolution
            # The `platform_restrictions` that are restricting this Feature.
            attr_reader :restriction
          end
          # Whether the FinancialAccount should have the Feature.
          attr_reader :requested
          # Whether the Feature is operational.
          attr_reader :status
          # Additional details; includes at least one entry when the status is not `active`.
          attr_reader :status_details
        end

        class UsDomesticWire < Stripe::StripeObject
          class StatusDetail < Stripe::StripeObject
            # Represents the reason why the status is `pending` or `restricted`.
            attr_reader :code
            # Represents what the user should do, if anything, to activate the Feature.
            attr_reader :resolution
            # The `platform_restrictions` that are restricting this Feature.
            attr_reader :restriction
          end
          # Whether the FinancialAccount should have the Feature.
          attr_reader :requested
          # Whether the Feature is operational.
          attr_reader :status
          # Additional details; includes at least one entry when the status is not `active`.
          attr_reader :status_details
        end
        # Toggle settings for enabling/disabling an ACH specific feature
        attr_reader :ach
        # Toggle settings for enabling/disabling a feature
        attr_reader :us_domestic_wire
      end
      # Toggle settings for enabling/disabling a feature
      attr_reader :card_issuing

      # Toggle settings for enabling/disabling a feature
      attr_reader :deposit_insurance

      # Settings related to Financial Addresses features on a Financial Account
      attr_reader :financial_addresses

      # InboundTransfers contains inbound transfers features for a FinancialAccount.
      attr_reader :inbound_transfers

      # Toggle settings for enabling/disabling a feature
      attr_reader :intra_stripe_flows

      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      # Settings related to Outbound Payments features on a Financial Account
      attr_reader :outbound_payments

      # OutboundTransfers contains outbound transfers features for a FinancialAccount.
      attr_reader :outbound_transfers
    end
  end
end
