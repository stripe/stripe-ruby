# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    # A V2 Account is a representation of a company or individual that a Stripe user does business with. Accounts contain the contact details, Legal Entity information, and configuration required to enable the Account for use across Stripe products.
    class Account < APIResource
      OBJECT_NAME = "account"
      def self.object_name
        "account"
      end

      class Configuration < Stripe::StripeObject
        class RecipientData < Stripe::StripeObject
          class DefaultOutboundDestination < Stripe::StripeObject
            # The payout method ID of the default outbound destination.
            attr_reader :id
            # Closed Enum. The payout method type of the default outbound destination.
            attr_reader :type
          end

          class Features < Stripe::StripeObject
            class BankAccounts < Stripe::StripeObject
              class Local < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Closed Enum. Status code, explaining why the Feature has a given status, if it is not `active`.
                  attr_reader :code
                  # Closed Enum. Additional information about how to resolve the Feature status, if it is not `active`.
                  attr_reader :resolution
                end
                # Whether or not the Feature has been requested.
                attr_reader :requested
                # Closed Enum. The current status of the Feature. Once the status is `active`, the Account is ready to be used in the product flow that the Feature represents.
                attr_reader :status
                # Additional details regarding the status of the Feature - will be empty if status is `active`.
                attr_reader :status_details
              end

              class Wire < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Closed Enum. Status code, explaining why the Feature has a given status, if it is not `active`.
                  attr_reader :code
                  # Closed Enum. Additional information about how to resolve the Feature status, if it is not `active`.
                  attr_reader :resolution
                end
                # Whether or not the Feature has been requested.
                attr_reader :requested
                # Closed Enum. The current status of the Feature. Once the status is `active`, the Account is ready to be used in the product flow that the Feature represents.
                attr_reader :status
                # Additional details regarding the status of the Feature - will be empty if status is `active`.
                attr_reader :status_details
              end
              # Enables this Account to receive OutboundPayments to linked bank accounts over local networks.
              attr_reader :local
              # Enables this Account to receive OutboundPayments to linked bank accounts over wire.
              attr_reader :wire
            end

            class Cards < Stripe::StripeObject
              class StatusDetail < Stripe::StripeObject
                # Closed Enum. Status code, explaining why the Feature has a given status, if it is not `active`.
                attr_reader :code
                # Closed Enum. Additional information about how to resolve the Feature status, if it is not `active`.
                attr_reader :resolution
              end
              # Whether or not the Feature has been requested.
              attr_reader :requested
              # Closed Enum. The current status of the Feature. Once the status is `active`, the Account is ready to be used in the product flow that the Feature represents.
              attr_reader :status
              # Additional details regarding the status of the Feature - will be empty if status is `active`.
              attr_reader :status_details
            end
            # Features that enable OutboundPayments to a bank account linked to this Account.
            attr_reader :bank_accounts
            # Features that enable OutboundPayments to a card linked to this Account.
            attr_reader :cards
          end
          # The payout method id to be used as a default outbound destination. This will allow the PayoutMethod to be omitted on OutboundPayments made through API or sending payouts via dashboard.
          attr_reader :default_outbound_destination
          # Features representing the functionality that should be enabled for when this Account is used as a recipient. Features need to be explicitly requested, and the `status` field indicates if the Feature is `active`, `restricted` or `pending`. Once a Feature is `active`, the Account can be used with the product flow that the Feature enables.
          attr_reader :features
        end

        class SupportableFeatures < Stripe::StripeObject
          # Closed Enum. A list of supported features that can be requested when the Account is configured as a recipient. Will be unset unless Legal Entity country has been provided for this Account.
          attr_reader :recipient_data
        end
        # Configuration to enable this Account to be used as a recipient of an OutboundPayment via the OutboundPayments API, or via the dashboard. This field will only be returned if `configuration.recipient_data` is passed in the `include` parameter. Note that you cannot pass the `include` parameter on list requests so this field cannot be populated for lists.
        attr_reader :recipient_data
        # Supported features that can be requested for the Account's configurations. This field will only be returned if `supportable_features.recipient_data` is passed in the `include` parameter. Note that you cannot pass the `include` parameter on list requests so this field cannot be populated for lists.
        attr_reader :supportable_features
      end

      class LegalEntityData < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City.
          attr_reader :city
          # Open Enum. Two-letter country code.
          attr_reader :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_reader :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_reader :line2
          # ZIP or postal code.
          attr_reader :postal_code
          # State, county, province, or region.
          attr_reader :state
          # Town.
          attr_reader :town
        end

        class Representative < Stripe::StripeObject
          class Address < Stripe::StripeObject
            # City.
            attr_reader :city
            # Open Enum. Two-letter country code.
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_reader :line2
            # ZIP or postal code.
            attr_reader :postal_code
            # State, county, province, or region.
            attr_reader :state
            # Town.
            attr_reader :town
          end

          class Dob < Stripe::StripeObject
            # The day of birth of the representative.
            attr_reader :day
            # The month of birth of the representative.
            attr_reader :month
            # The year of birth of the representative.
            attr_reader :year
          end
          # The address of the representative.
          attr_reader :address
          # The date of birth of the representative.
          attr_reader :dob
          # The given name of the representative.
          attr_reader :given_name
          # The surname of the representative.
          attr_reader :surname
        end
        # The address of the Legal Entity.
        attr_reader :address
        # Closed Enum. The business type of the Legal Entity.
        attr_reader :business_type
        # Open Enum. Two-letter country code (ISO 3166-1 alpha-2) for where the company or individual is located.
        attr_reader :country
        # The legal name of this Legal Entity. Required unless the business type is `individual`.
        attr_reader :name
        # The representative of the Legal Entity. This is the person nominated by the Legal Entity to provide information about themselves, and general information about the account. For legal entities with `individual` business type, this field is required and should contain the individual's information.
        attr_reader :representative
      end

      class Requirement < Stripe::StripeObject
        class Deadline < Stripe::StripeObject
          # Machine-readable version of the deadline.
          attr_reader :due_at
          # Closed Enum. Human-readable description of the deadline.
          attr_reader :status
        end

        class Error < Stripe::StripeObject
          # Open Enum. Machine-readable error codes.
          attr_reader :code
          # Human-readable error messages.
          attr_reader :message
        end

        class Impact < Stripe::StripeObject
          # Open Enum. The set of Features that are restricted by this requirement.
          attr_reader :required_for_features
        end
        # Closed Enum. Whether the responsibility is with the integrator to action, or with Stripe (to review info, to wait for some condition, etc.).
        attr_reader :awaiting_action_from
        # When the requirement is due.
        attr_reader :deadline
        # Open Enum. The unique identifier describing the data to be collected for this requirement.
        attr_reader :description
        # Communicate remediation steps with users if data previously submitted by user is not acceptable by Stripe.
        attr_reader :errors
        # Consequence of not completing this entry on time and in a Stripe-accepted manner.
        attr_reader :impact
        # Open Enum. Why Stripe wants this information.
        attr_reader :requested_reasons
      end
      # Closed Enum. A list of the configurations which have been applied to the Account to allow Accounts to be filtered by the products they have been configured for. Currently can only contain `recipient`, which will be present if a recipient configuration is set.
      attr_reader :applied_configurations
      # Configuration to enable this Account to be used as a recipient of an OutboundPayment via the OutboundPayments API, or via the dashboard.
      attr_reader :configuration
      # Time at which the object was created. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
      attr_reader :created
      # The default contact email address for the Account. This field is optional, but must be supplied before the recipient configuration can be populated.
      attr_reader :email
      # Unique identifier for the Account.
      attr_reader :id
      # The default set of verification information for the Account. Currently, this only includes a single Legal Entity which must be set as the default.
      attr_reader :legal_entity_data
      # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # A descriptive name for the Account. This name will be surfaced in the Account directory in the dashboard.
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value of the object field.
      attr_reader :object
      # A list of outstanding tasks users must complete before Stripe allows the Account’s Features to be activated.
      attr_reader :requirements
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
    end
  end
end
