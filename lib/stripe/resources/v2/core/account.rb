# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      # A V2 Account is a representation of a company or individual that a Stripe user does business with. Accounts contain the contact details, Legal Entity information, and configuration required to enable the Account for use across Stripe products.
      class Account < APIResource
        OBJECT_NAME = "v2.core.account"
        def self.object_name
          "v2.core.account"
        end

        class Configuration < ::Stripe::StripeObject
          class Customer < ::Stripe::StripeObject
            class AutomaticIndirectTax < ::Stripe::StripeObject
              class Location < ::Stripe::StripeObject
                # The identified tax country of the customer.
                attr_reader :country
                # The identified tax state, county, province, or region of the customer.
                attr_reader :state

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Describes the customer's tax exemption status, which is `none`, `exempt`, or `reverse`. When set to reverse, invoice and receipt PDFs include the following text: “Reverse charge”.
              attr_reader :exempt
              # A recent IP address of the customer used for tax reporting and tax location inference.
              attr_reader :ip_address
              # The [identified](https://docs.stripe.com/tax/customer-locations#address-hierarchy-other) tax location of the customer. Will only be rendered if the `automatic_indirect_tax` feature is requested and `active`.
              attr_reader :location
              # The data source used to identify the customer's tax location. Will only be used for automatic tax calculation on the customer's Invoices and Subscriptions.
              attr_reader :location_source

              def self.inner_class_types
                @inner_class_types = { location: Location }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Billing < ::Stripe::StripeObject
              class Invoice < ::Stripe::StripeObject
                class CustomField < ::Stripe::StripeObject
                  # The name of the custom field. This may be up to 40 characters.
                  attr_reader :name
                  # The value of the custom field. This may be up to 140 characters. When updating, pass an empty string to remove previously-defined values.
                  attr_reader :value

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end

                class Rendering < ::Stripe::StripeObject
                  # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs. One of exclude_tax or include_inclusive_tax. include_inclusive_tax will include inclusive tax (and exclude exclusive tax) in invoice PDF amounts. exclude_tax will exclude all tax (inclusive and exclusive alike) from invoice PDF amounts.
                  attr_reader :amount_tax_display
                  # ID of the invoice rendering template to use for future invoices.
                  attr_reader :template

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The list of up to 4 default custom fields to be displayed on invoices for this customer. When updating, pass an empty string to remove previously-defined fields.
                attr_reader :custom_fields
                # Default footer to be displayed on invoices for this customer.
                attr_reader :footer
                # The sequence to be used on the customer's next invoice. Defaults to 1.
                attr_reader :next_sequence
                # The prefix for the customer used to generate unique invoice numbers. Must be 3–12 uppercase letters or numbers.
                attr_reader :prefix
                # Default options for invoice PDF rendering for this customer.
                attr_reader :rendering

                def self.inner_class_types
                  @inner_class_types = { custom_fields: CustomField, rendering: Rendering }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # ID of a payment method that’s attached to the customer, to be used as the customer’s default payment method for invoices and subscriptions.
              attr_reader :default_payment_method
              # Default settings used on invoices for this customer.
              attr_reader :invoice

              def self.inner_class_types
                @inner_class_types = { invoice: Invoice }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Capabilities < ::Stripe::StripeObject
              class AutomaticIndirectTax < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Generates requirements for enabling automatic indirect tax calculation on this customer's invoices or subscriptions. Recommended to request this capability if planning to enable automatic tax calculation on this customer's invoices or subscriptions.
              attr_reader :automatic_indirect_tax

              def self.inner_class_types
                @inner_class_types = { automatic_indirect_tax: AutomaticIndirectTax }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Shipping < ::Stripe::StripeObject
              class Address < ::Stripe::StripeObject
                # City, district, suburb, town, or village.
                attr_reader :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                attr_reader :country
                # Address line 1 (e.g., street, PO Box, or company name).
                attr_reader :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                attr_reader :line2
                # ZIP or postal code.
                attr_reader :postal_code
                # State, county, province, or region.
                attr_reader :state

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Customer shipping address.
              attr_reader :address
              # Customer name.
              attr_reader :name
              # Customer phone (including extension).
              attr_reader :phone

              def self.inner_class_types
                @inner_class_types = { address: Address }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Represents the state of the configuration, and can be updated to deactivate or re-apply a configuration.
            attr_reader :applied
            # Automatic indirect tax settings to be used when automatic tax calculation is enabled on the customer's invoices, subscriptions, checkout sessions, or payment links. Surfaces if automatic tax calculation is possible given the current customer location information.
            attr_reader :automatic_indirect_tax
            # Billing settings - default settings used for this customer in Billing flows such as Invoices and Subscriptions.
            attr_reader :billing
            # Capabilities that have been requested on the Customer Configuration.
            attr_reader :capabilities
            # The customer's shipping information. Appears on invoices emailed to this customer.
            attr_reader :shipping
            # ID of the test clock to attach to the customer. Can only be set on testmode Accounts, and when the Customer Configuration is first set on an Account.
            attr_reader :test_clock

            def self.inner_class_types
              @inner_class_types = {
                automatic_indirect_tax: AutomaticIndirectTax,
                billing: Billing,
                capabilities: Capabilities,
                shipping: Shipping,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Merchant < ::Stripe::StripeObject
            class BacsDebitPayments < ::Stripe::StripeObject
              # Display name for Bacs debit payments.
              attr_reader :display_name
              # Service user number for Bacs debit payments.
              attr_reader :service_user_number

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Branding < ::Stripe::StripeObject
              # ID of a [file upload](https://docs.stripe.com/api/persons/update#create_file): An icon for the merchant. Must be square and at least 128px x 128px.
              attr_reader :icon
              # ID of a [file upload](https://docs.stripe.com/api/persons/update#create_file): A logo for the merchant that will be used in Checkout instead of the icon and without the merchant's name next to it if provided. Must be at least 128px x 128px.
              attr_reader :logo
              # A CSS hex color value representing the primary branding color for the merchant.
              attr_reader :primary_color
              # A CSS hex color value representing the secondary branding color for the merchant.
              attr_reader :secondary_color

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Capabilities < ::Stripe::StripeObject
              class AchDebitPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class AcssDebitPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class AffirmPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class AfterpayClearpayPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class AlmaPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class AmazonPayPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class AuBecsDebitPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class BacsDebitPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class BancontactPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class BlikPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class BoletoPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class CardPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class CartesBancairesPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class CashappPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class EpsPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class FpxPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class GbBankTransferPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class GrabpayPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class IdealPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class JcbPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class JpBankTransferPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class KakaoPayPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class KlarnaPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class KonbiniPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class KrCardPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class LinkPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class MobilepayPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class MultibancoPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class MxBankTransferPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class NaverPayPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class OxxoPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class P24Payments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class PayByBankPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class PaycoPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class PaynowPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class PromptpayPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class RevolutPayPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class SamsungPayPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class SepaBankTransferPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class SepaDebitPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class StripeBalance < ::Stripe::StripeObject
                class Payouts < ::Stripe::StripeObject
                  class StatusDetail < ::Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    attr_reader :resolution

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Whether the Capability has been requested.
                  attr_reader :requested
                  # The status of the Capability.
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  attr_reader :status_details

                  def self.inner_class_types
                    @inner_class_types = { status_details: StatusDetail }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Allows the account to do payouts using their Stripe Balance (/v1/balance).
                attr_reader :payouts

                def self.inner_class_types
                  @inner_class_types = { payouts: Payouts }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class SwishPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class TwintPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class UsBankTransferPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class ZipPayments < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Allow the merchant to process ACH debit payments.
              attr_reader :ach_debit_payments
              # Allow the merchant to process ACSS debit payments.
              attr_reader :acss_debit_payments
              # Allow the merchant to process Affirm payments.
              attr_reader :affirm_payments
              # Allow the merchant to process Afterpay/Clearpay payments.
              attr_reader :afterpay_clearpay_payments
              # Allow the merchant to process Alma payments.
              attr_reader :alma_payments
              # Allow the merchant to process Amazon Pay payments.
              attr_reader :amazon_pay_payments
              # Allow the merchant to process Australian BECS Direct Debit payments.
              attr_reader :au_becs_debit_payments
              # Allow the merchant to process BACS Direct Debit payments.
              attr_reader :bacs_debit_payments
              # Allow the merchant to process Bancontact payments.
              attr_reader :bancontact_payments
              # Allow the merchant to process BLIK payments.
              attr_reader :blik_payments
              # Allow the merchant to process Boleto payments.
              attr_reader :boleto_payments
              # Allow the merchant to collect card payments.
              attr_reader :card_payments
              # Allow the merchant to process Cartes Bancaires payments.
              attr_reader :cartes_bancaires_payments
              # Allow the merchant to process Cash App payments.
              attr_reader :cashapp_payments
              # Allow the merchant to process EPS payments.
              attr_reader :eps_payments
              # Allow the merchant to process FPX payments.
              attr_reader :fpx_payments
              # Allow the merchant to process UK bank transfer payments.
              attr_reader :gb_bank_transfer_payments
              # Allow the merchant to process GrabPay payments.
              attr_reader :grabpay_payments
              # Allow the merchant to process iDEAL payments.
              attr_reader :ideal_payments
              # Allow the merchant to process JCB card payments.
              attr_reader :jcb_payments
              # Allow the merchant to process Japanese bank transfer payments.
              attr_reader :jp_bank_transfer_payments
              # Allow the merchant to process Kakao Pay payments.
              attr_reader :kakao_pay_payments
              # Allow the merchant to process Klarna payments.
              attr_reader :klarna_payments
              # Allow the merchant to process Konbini convenience store payments.
              attr_reader :konbini_payments
              # Allow the merchant to process Korean card payments.
              attr_reader :kr_card_payments
              # Allow the merchant to process Link payments.
              attr_reader :link_payments
              # Allow the merchant to process MobilePay payments.
              attr_reader :mobilepay_payments
              # Allow the merchant to process Multibanco payments.
              attr_reader :multibanco_payments
              # Allow the merchant to process Mexican bank transfer payments.
              attr_reader :mx_bank_transfer_payments
              # Allow the merchant to process Naver Pay payments.
              attr_reader :naver_pay_payments
              # Allow the merchant to process OXXO payments.
              attr_reader :oxxo_payments
              # Allow the merchant to process Przelewy24 (P24) payments.
              attr_reader :p24_payments
              # Allow the merchant to process Pay by Bank payments.
              attr_reader :pay_by_bank_payments
              # Allow the merchant to process PAYCO payments.
              attr_reader :payco_payments
              # Allow the merchant to process PayNow payments.
              attr_reader :paynow_payments
              # Allow the merchant to process PromptPay payments.
              attr_reader :promptpay_payments
              # Allow the merchant to process Revolut Pay payments.
              attr_reader :revolut_pay_payments
              # Allow the merchant to process Samsung Pay payments.
              attr_reader :samsung_pay_payments
              # Allow the merchant to process SEPA bank transfer payments.
              attr_reader :sepa_bank_transfer_payments
              # Allow the merchant to process SEPA Direct Debit payments.
              attr_reader :sepa_debit_payments
              # Capabilities that enable the merchant to manage their Stripe Balance (/v1/balance).
              attr_reader :stripe_balance
              # Allow the merchant to process Swish payments.
              attr_reader :swish_payments
              # Allow the merchant to process TWINT payments.
              attr_reader :twint_payments
              # Allow the merchant to process US bank transfer payments.
              attr_reader :us_bank_transfer_payments
              # Allow the merchant to process Zip payments.
              attr_reader :zip_payments

              def self.inner_class_types
                @inner_class_types = {
                  ach_debit_payments: AchDebitPayments,
                  acss_debit_payments: AcssDebitPayments,
                  affirm_payments: AffirmPayments,
                  afterpay_clearpay_payments: AfterpayClearpayPayments,
                  alma_payments: AlmaPayments,
                  amazon_pay_payments: AmazonPayPayments,
                  au_becs_debit_payments: AuBecsDebitPayments,
                  bacs_debit_payments: BacsDebitPayments,
                  bancontact_payments: BancontactPayments,
                  blik_payments: BlikPayments,
                  boleto_payments: BoletoPayments,
                  card_payments: CardPayments,
                  cartes_bancaires_payments: CartesBancairesPayments,
                  cashapp_payments: CashappPayments,
                  eps_payments: EpsPayments,
                  fpx_payments: FpxPayments,
                  gb_bank_transfer_payments: GbBankTransferPayments,
                  grabpay_payments: GrabpayPayments,
                  ideal_payments: IdealPayments,
                  jcb_payments: JcbPayments,
                  jp_bank_transfer_payments: JpBankTransferPayments,
                  kakao_pay_payments: KakaoPayPayments,
                  klarna_payments: KlarnaPayments,
                  konbini_payments: KonbiniPayments,
                  kr_card_payments: KrCardPayments,
                  link_payments: LinkPayments,
                  mobilepay_payments: MobilepayPayments,
                  multibanco_payments: MultibancoPayments,
                  mx_bank_transfer_payments: MxBankTransferPayments,
                  naver_pay_payments: NaverPayPayments,
                  oxxo_payments: OxxoPayments,
                  p24_payments: P24Payments,
                  pay_by_bank_payments: PayByBankPayments,
                  payco_payments: PaycoPayments,
                  paynow_payments: PaynowPayments,
                  promptpay_payments: PromptpayPayments,
                  revolut_pay_payments: RevolutPayPayments,
                  samsung_pay_payments: SamsungPayPayments,
                  sepa_bank_transfer_payments: SepaBankTransferPayments,
                  sepa_debit_payments: SepaDebitPayments,
                  stripe_balance: StripeBalance,
                  swish_payments: SwishPayments,
                  twint_payments: TwintPayments,
                  us_bank_transfer_payments: UsBankTransferPayments,
                  zip_payments: ZipPayments,
                }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class CardPayments < ::Stripe::StripeObject
              class DeclineOn < ::Stripe::StripeObject
                # Whether Stripe automatically declines charges with an incorrect ZIP or postal code. This setting only applies when a ZIP or postal code is provided and they fail bank verification.
                attr_reader :avs_failure
                # Whether Stripe automatically declines charges with an incorrect CVC. This setting only applies when a CVC is provided and it fails bank verification.
                attr_reader :cvc_failure

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Automatically declines certain charge types regardless of whether the card issuer accepted or declined the charge.
              attr_reader :decline_on

              def self.inner_class_types
                @inner_class_types = { decline_on: DeclineOn }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class KonbiniPayments < ::Stripe::StripeObject
              class Support < ::Stripe::StripeObject
                class Hours < ::Stripe::StripeObject
                  # Support hours end time (JST time of day) for in `HH:MM` format.
                  attr_reader :end_time
                  # Support hours start time (JST time of day) for in `HH:MM` format.
                  attr_reader :start_time

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Support email address for Konbini payments.
                attr_reader :email
                # Support hours for Konbini payments.
                attr_reader :hours
                # Support phone number for Konbini payments.
                attr_reader :phone

                def self.inner_class_types
                  @inner_class_types = { hours: Hours }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Support for Konbini payments.
              attr_reader :support

              def self.inner_class_types
                @inner_class_types = { support: Support }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class ScriptStatementDescriptor < ::Stripe::StripeObject
              class Kana < ::Stripe::StripeObject
                # The default text that appears on statements for non-card charges outside of Japan. For card charges, if you don’t set a statement_descriptor_prefix, this text is also used as the statement descriptor prefix. In that case, if concatenating the statement descriptor suffix causes the combined statement descriptor to exceed 22 characters, we truncate the statement_descriptor text to limit the full descriptor to 22 characters. For more information about statement descriptors and their requirements, see the Merchant Configuration settings documentation.
                attr_reader :descriptor
                # Default text that appears on statements for card charges outside of Japan, prefixing any dynamic statement_descriptor_suffix specified on the charge. To maximize space for the dynamic part of the descriptor, keep this text short. If you don’t specify this value, statement_descriptor is used as the prefix. For more information about statement descriptors and their requirements, see the Merchant Configuration settings documentation.
                attr_reader :prefix

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class Kanji < ::Stripe::StripeObject
                # The default text that appears on statements for non-card charges outside of Japan. For card charges, if you don’t set a statement_descriptor_prefix, this text is also used as the statement descriptor prefix. In that case, if concatenating the statement descriptor suffix causes the combined statement descriptor to exceed 22 characters, we truncate the statement_descriptor text to limit the full descriptor to 22 characters. For more information about statement descriptors and their requirements, see the Merchant Configuration settings documentation.
                attr_reader :descriptor
                # Default text that appears on statements for card charges outside of Japan, prefixing any dynamic statement_descriptor_suffix specified on the charge. To maximize space for the dynamic part of the descriptor, keep this text short. If you don’t specify this value, statement_descriptor is used as the prefix. For more information about statement descriptors and their requirements, see the Merchant Configuration settings documentation.
                attr_reader :prefix

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # The Kana variation of statement_descriptor used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
              attr_reader :kana
              # The Kanji variation of statement_descriptor used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
              attr_reader :kanji

              def self.inner_class_types
                @inner_class_types = { kana: Kana, kanji: Kanji }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class SepaDebitPayments < ::Stripe::StripeObject
              # Creditor ID for SEPA debit payments.
              attr_reader :creditor_id

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class StatementDescriptor < ::Stripe::StripeObject
              # The default text that appears on statements for non-card charges outside of Japan. For card charges, if you don’t set a statement_descriptor_prefix, this text is also used as the statement descriptor prefix. In that case, if concatenating the statement descriptor suffix causes the combined statement descriptor to exceed 22 characters, we truncate the statement_descriptor text to limit the full descriptor to 22 characters. For more information about statement descriptors and their requirements, see the Merchant Configuration settings documentation.
              attr_reader :descriptor
              # Default text that appears on statements for card charges outside of Japan, prefixing any dynamic statement_descriptor_suffix specified on the charge. To maximize space for the dynamic part of the descriptor, keep this text short. If you don’t specify this value, statement_descriptor is used as the prefix. For more information about statement descriptors and their requirements, see the Merchant Configuration settings documentation.
              attr_reader :prefix

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Support < ::Stripe::StripeObject
              class Address < ::Stripe::StripeObject
                # City, district, suburb, town, or village.
                attr_reader :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                attr_reader :country
                # Address line 1 (e.g., street, PO Box, or company name).
                attr_reader :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                attr_reader :line2
                # ZIP or postal code.
                attr_reader :postal_code
                # State, county, province, or region.
                attr_reader :state
                # Town or cho-me.
                attr_reader :town

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # A publicly available mailing address for sending support issues to.
              attr_reader :address
              # A publicly available email address for sending support issues to.
              attr_reader :email
              # A publicly available phone number to call with support issues.
              attr_reader :phone
              # A publicly available website for handling support issues.
              attr_reader :url

              def self.inner_class_types
                @inner_class_types = { address: Address }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Represents the state of the configuration, and can be updated to deactivate or re-apply a configuration.
            attr_reader :applied
            # Settings used for Bacs debit payments.
            attr_reader :bacs_debit_payments
            # Settings used to apply the merchant's branding to email receipts, invoices, Checkout, and other products.
            attr_reader :branding
            # Capabilities that have been requested on the Merchant Configuration.
            attr_reader :capabilities
            # Card payments settings.
            attr_reader :card_payments
            # Settings specific to Konbini payments on the account.
            attr_reader :konbini_payments
            # The merchant category code for the merchant. MCCs are used to classify businesses based on the goods or services they provide.
            attr_reader :mcc
            # Settings for the default text that appears on statements for language variations.
            attr_reader :script_statement_descriptor
            # Settings used for SEPA debit payments.
            attr_reader :sepa_debit_payments
            # Statement descriptor.
            attr_reader :statement_descriptor
            # Publicly available contact information for sending support issues to.
            attr_reader :support

            def self.inner_class_types
              @inner_class_types = {
                bacs_debit_payments: BacsDebitPayments,
                branding: Branding,
                capabilities: Capabilities,
                card_payments: CardPayments,
                konbini_payments: KonbiniPayments,
                script_statement_descriptor: ScriptStatementDescriptor,
                sepa_debit_payments: SepaDebitPayments,
                statement_descriptor: StatementDescriptor,
                support: Support,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Recipient < ::Stripe::StripeObject
            class Capabilities < ::Stripe::StripeObject
              class BankAccounts < ::Stripe::StripeObject
                class Local < ::Stripe::StripeObject
                  class StatusDetail < ::Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    attr_reader :resolution

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Whether the Capability has been requested.
                  attr_reader :requested
                  # The status of the Capability.
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  attr_reader :status_details

                  def self.inner_class_types
                    @inner_class_types = { status_details: StatusDetail }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end

                class Wire < ::Stripe::StripeObject
                  class StatusDetail < ::Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    attr_reader :resolution

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Whether the Capability has been requested.
                  attr_reader :requested
                  # The status of the Capability.
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  attr_reader :status_details

                  def self.inner_class_types
                    @inner_class_types = { status_details: StatusDetail }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Enables this Account to receive OutboundPayments to linked bank accounts over local networks.
                attr_reader :local
                # Enables this Account to receive OutboundPayments to linked bank accounts over wire.
                attr_reader :wire

                def self.inner_class_types
                  @inner_class_types = { local: Local, wire: Wire }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class Cards < ::Stripe::StripeObject
                class StatusDetail < ::Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  attr_reader :resolution

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Whether the Capability has been requested.
                attr_reader :requested
                # The status of the Capability.
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                attr_reader :status_details

                def self.inner_class_types
                  @inner_class_types = { status_details: StatusDetail }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class StripeBalance < ::Stripe::StripeObject
                class Payouts < ::Stripe::StripeObject
                  class StatusDetail < ::Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    attr_reader :resolution

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Whether the Capability has been requested.
                  attr_reader :requested
                  # The status of the Capability.
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  attr_reader :status_details

                  def self.inner_class_types
                    @inner_class_types = { status_details: StatusDetail }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end

                class StripeTransfers < ::Stripe::StripeObject
                  class StatusDetail < ::Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    attr_reader :resolution

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Whether the Capability has been requested.
                  attr_reader :requested
                  # The status of the Capability.
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  attr_reader :status_details

                  def self.inner_class_types
                    @inner_class_types = { status_details: StatusDetail }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Allows the account to do payouts using their Stripe Balance (/v1/balance).
                attr_reader :payouts
                # Allows the account to receive /v1/transfers into their Stripe Balance (/v1/balance).
                attr_reader :stripe_transfers

                def self.inner_class_types
                  @inner_class_types = { payouts: Payouts, stripe_transfers: StripeTransfers }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Capabilities that enable OutboundPayments to a bank account linked to this Account.
              attr_reader :bank_accounts
              # Capability that enable OutboundPayments to a debit card linked to this Account.
              attr_reader :cards
              # Capabilities that enable the recipient to manage their Stripe Balance (/v1/balance).
              attr_reader :stripe_balance

              def self.inner_class_types
                @inner_class_types = {
                  bank_accounts: BankAccounts,
                  cards: Cards,
                  stripe_balance: StripeBalance,
                }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class DefaultOutboundDestination < ::Stripe::StripeObject
              # The payout method ID of the default outbound destination.
              attr_reader :id
              # Closed Enum. The payout method type of the default outbound destination.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Represents the state of the configuration, and can be updated to deactivate or re-apply a configuration.
            attr_reader :applied
            # Capabilities that have been requested on the Recipient Configuration.
            attr_reader :capabilities
            # The payout method to be used as a default outbound destination. This will allow the PayoutMethod to be omitted on OutboundPayments made through the dashboard or APIs.
            attr_reader :default_outbound_destination

            def self.inner_class_types
              @inner_class_types = {
                capabilities: Capabilities,
                default_outbound_destination: DefaultOutboundDestination,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Storer < ::Stripe::StripeObject
            class Capabilities < ::Stripe::StripeObject
              class FinancialAddresses < ::Stripe::StripeObject
                class BankAccounts < ::Stripe::StripeObject
                  class StatusDetail < ::Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    attr_reader :resolution

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Whether the Capability has been requested.
                  attr_reader :requested
                  # The status of the Capability.
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  attr_reader :status_details

                  def self.inner_class_types
                    @inner_class_types = { status_details: StatusDetail }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Can provision a bank-account like financial address (VBAN) to credit/debit a FinancialAccount.
                attr_reader :bank_accounts

                def self.inner_class_types
                  @inner_class_types = { bank_accounts: BankAccounts }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class HoldsCurrencies < ::Stripe::StripeObject
                class Eur < ::Stripe::StripeObject
                  class StatusDetail < ::Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    attr_reader :resolution

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Whether the Capability has been requested.
                  attr_reader :requested
                  # The status of the Capability.
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  attr_reader :status_details

                  def self.inner_class_types
                    @inner_class_types = { status_details: StatusDetail }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end

                class Gbp < ::Stripe::StripeObject
                  class StatusDetail < ::Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    attr_reader :resolution

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Whether the Capability has been requested.
                  attr_reader :requested
                  # The status of the Capability.
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  attr_reader :status_details

                  def self.inner_class_types
                    @inner_class_types = { status_details: StatusDetail }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end

                class Usd < ::Stripe::StripeObject
                  class StatusDetail < ::Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    attr_reader :resolution

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Whether the Capability has been requested.
                  attr_reader :requested
                  # The status of the Capability.
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  attr_reader :status_details

                  def self.inner_class_types
                    @inner_class_types = { status_details: StatusDetail }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Can hold storage-type funds on Stripe in EUR.
                attr_reader :eur
                # Can hold storage-type funds on Stripe in GBP.
                attr_reader :gbp
                # Can hold storage-type funds on Stripe in USD.
                attr_reader :usd

                def self.inner_class_types
                  @inner_class_types = { eur: Eur, gbp: Gbp, usd: Usd }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class InboundTransfers < ::Stripe::StripeObject
                class BankAccounts < ::Stripe::StripeObject
                  class StatusDetail < ::Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    attr_reader :resolution

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Whether the Capability has been requested.
                  attr_reader :requested
                  # The status of the Capability.
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  attr_reader :status_details

                  def self.inner_class_types
                    @inner_class_types = { status_details: StatusDetail }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Can pull funds from an external bank account, owned by yourself, to a FinancialAccount.
                attr_reader :bank_accounts

                def self.inner_class_types
                  @inner_class_types = { bank_accounts: BankAccounts }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class OutboundPayments < ::Stripe::StripeObject
                class BankAccounts < ::Stripe::StripeObject
                  class StatusDetail < ::Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    attr_reader :resolution

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Whether the Capability has been requested.
                  attr_reader :requested
                  # The status of the Capability.
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  attr_reader :status_details

                  def self.inner_class_types
                    @inner_class_types = { status_details: StatusDetail }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end

                class Cards < ::Stripe::StripeObject
                  class StatusDetail < ::Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    attr_reader :resolution

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Whether the Capability has been requested.
                  attr_reader :requested
                  # The status of the Capability.
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  attr_reader :status_details

                  def self.inner_class_types
                    @inner_class_types = { status_details: StatusDetail }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end

                class FinancialAccounts < ::Stripe::StripeObject
                  class StatusDetail < ::Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    attr_reader :resolution

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Whether the Capability has been requested.
                  attr_reader :requested
                  # The status of the Capability.
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  attr_reader :status_details

                  def self.inner_class_types
                    @inner_class_types = { status_details: StatusDetail }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Can send funds from a FinancialAccount to a bank account, owned by someone else.
                attr_reader :bank_accounts
                # Can send funds from a FinancialAccount to a debit card, owned by someone else.
                attr_reader :cards
                # Can send funds from a FinancialAccount to another FinancialAccount, owned by someone else.
                attr_reader :financial_accounts

                def self.inner_class_types
                  @inner_class_types = {
                    bank_accounts: BankAccounts,
                    cards: Cards,
                    financial_accounts: FinancialAccounts,
                  }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class OutboundTransfers < ::Stripe::StripeObject
                class BankAccounts < ::Stripe::StripeObject
                  class StatusDetail < ::Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    attr_reader :resolution

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Whether the Capability has been requested.
                  attr_reader :requested
                  # The status of the Capability.
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  attr_reader :status_details

                  def self.inner_class_types
                    @inner_class_types = { status_details: StatusDetail }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end

                class FinancialAccounts < ::Stripe::StripeObject
                  class StatusDetail < ::Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    attr_reader :resolution

                    def self.inner_class_types
                      @inner_class_types = {}
                    end

                    def self.field_remappings
                      @field_remappings = {}
                    end
                  end
                  # Whether the Capability has been requested.
                  attr_reader :requested
                  # The status of the Capability.
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  attr_reader :status_details

                  def self.inner_class_types
                    @inner_class_types = { status_details: StatusDetail }
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # Can send funds from a FinancialAccount, to a bank account, owned by yourself.
                attr_reader :bank_accounts
                # Can send funds from a FinancialAccount to another FinancialAccount, owned by yourself.
                attr_reader :financial_accounts

                def self.inner_class_types
                  @inner_class_types = {
                    bank_accounts: BankAccounts,
                    financial_accounts: FinancialAccounts,
                  }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Can provision a financial address to credit/debit a FinancialAccount.
              attr_reader :financial_addresses
              # Can hold storage-type funds on Stripe.
              attr_reader :holds_currencies
              # Can pull funds from an external source, owned by yourself, to a FinancialAccount.
              attr_reader :inbound_transfers
              # Can send funds from a FinancialAccount to a destination owned by someone else.
              attr_reader :outbound_payments
              # Can send funds from a FinancialAccount to a destination owned by yourself.
              attr_reader :outbound_transfers

              def self.inner_class_types
                @inner_class_types = {
                  financial_addresses: FinancialAddresses,
                  holds_currencies: HoldsCurrencies,
                  inbound_transfers: InboundTransfers,
                  outbound_payments: OutboundPayments,
                  outbound_transfers: OutboundTransfers,
                }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Represents the state of the configuration, and can be updated to deactivate or re-apply a configuration.
            attr_reader :applied
            # Capabilities that have been requested on the Storer Configuration.
            attr_reader :capabilities

            def self.inner_class_types
              @inner_class_types = { capabilities: Capabilities }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The Customer Configuration allows the Account to be used in inbound payment flows.
          attr_reader :customer
          # The Merchant configuration allows the Account to act as a connected account and collect payments facilitated by a Connect platform. You can add this configuration to your connected accounts only if you’ve completed onboarding as a Connect platform.
          attr_reader :merchant
          # The Recipient Configuration allows the Account to receive funds.
          attr_reader :recipient
          # The Storer Configuration allows the Account to store and move funds using stored-value FinancialAccounts.
          attr_reader :storer

          def self.inner_class_types
            @inner_class_types = {
              customer: Customer,
              merchant: Merchant,
              recipient: Recipient,
              storer: Storer,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Defaults < ::Stripe::StripeObject
          class Profile < ::Stripe::StripeObject
            # The business's publicly-available website.
            attr_reader :business_url
            # The company’s legal name.
            attr_reader :doing_business_as
            # Internal-only description of the product sold or service provided by the business. It's used by Stripe for risk and underwriting purposes.
            attr_reader :product_description

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Responsibilities < ::Stripe::StripeObject
            # A value indicating the responsible payer of a bundle of Stripe fees for pricing-control eligible products on this Account.
            attr_reader :fees_collector
            # A value indicating who is responsible for losses when this Account can’t pay back negative balances from payments.
            attr_reader :losses_collector
            # A value indicating responsibility for collecting requirements on this account.
            attr_reader :requirements_collector

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_reader :currency
          # The Account's preferred locales (languages), ordered by preference.
          attr_reader :locales
          # Account profile information.
          attr_reader :profile
          # Default responsibilities held by either Stripe or the platform.
          attr_reader :responsibilities

          def self.inner_class_types
            @inner_class_types = { profile: Profile, responsibilities: Responsibilities }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class FutureRequirements < ::Stripe::StripeObject
          class Entry < ::Stripe::StripeObject
            class Error < ::Stripe::StripeObject
              # Machine-readable code describing the error.
              attr_reader :code
              # Human-readable description of the error.
              attr_reader :description

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Impact < ::Stripe::StripeObject
              class RestrictsCapability < ::Stripe::StripeObject
                class Deadline < ::Stripe::StripeObject
                  # The current status of the requirement's impact.
                  attr_reader :status

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The name of the Capability which will be restricted.
                attr_reader :capability
                # The configuration which specifies the Capability which will be restricted.
                attr_reader :configuration
                # Details about when in the account lifecycle the requirement must be collected by the avoid the Capability restriction.
                attr_reader :deadline

                def self.inner_class_types
                  @inner_class_types = { deadline: Deadline }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # The Capabilities that will be restricted if the requirement is not collected and satisfactory to Stripe.
              attr_reader :restricts_capabilities

              def self.inner_class_types
                @inner_class_types = { restricts_capabilities: RestrictsCapability }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class MinimumDeadline < ::Stripe::StripeObject
              # The current status of the requirement's impact.
              attr_reader :status

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Reference < ::Stripe::StripeObject
              # If `inquiry` is the type, the inquiry token.
              attr_reader :inquiry
              # If `resource` is the type, the resource token.
              attr_reader :resource
              # The type of the reference. If the type is "inquiry", the inquiry token can be found in the "inquiry" field.
              # Otherwise the type is an API resource, the token for which can be found in the "resource" field.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class RequestedReason < ::Stripe::StripeObject
              # Machine-readable description of Stripe's reason for collecting the requirement.
              attr_reader :code

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether the responsibility is with the integrator or with Stripe (to review info, to wait for some condition, etc.) to action the requirement.
            attr_reader :awaiting_action_from
            # Machine-readable string describing the requirement.
            attr_reader :description
            # Descriptions of why the requirement must be collected, or why the collected information isn't satisfactory to Stripe.
            attr_reader :errors
            # A hash describing the impact of not collecting the requirement, or Stripe not being able to verify the collected information.
            attr_reader :impact
            # The soonest point when the account will be impacted by not providing the requirement.
            attr_reader :minimum_deadline
            # A reference to the location of the requirement.
            attr_reader :reference
            # A list of reasons why Stripe is collecting the requirement.
            attr_reader :requested_reasons

            def self.inner_class_types
              @inner_class_types = {
                errors: Error,
                impact: Impact,
                minimum_deadline: MinimumDeadline,
                reference: Reference,
                requested_reasons: RequestedReason,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Summary < ::Stripe::StripeObject
            class MinimumDeadline < ::Stripe::StripeObject
              # The current strictest status of all requirements on the Account.
              attr_reader :status
              # The soonest RFC3339 date & time UTC value a requirement can impact the Account.
              attr_reader :time

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The soonest date and time a requirement on the Account will become `past due`. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2022-09-18T13:22:18.123Z`.
            attr_reader :minimum_deadline

            def self.inner_class_types
              @inner_class_types = { minimum_deadline: MinimumDeadline }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # A list of requirements for the Account.
          attr_reader :entries
          # The time at which the future requirements become effective.
          attr_reader :minimum_transition_date
          # An object containing an overview of requirements for the Account.
          attr_reader :summary

          def self.inner_class_types
            @inner_class_types = { entries: Entry, summary: Summary }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Identity < ::Stripe::StripeObject
          class Attestations < ::Stripe::StripeObject
            class DirectorshipDeclaration < ::Stripe::StripeObject
              # The time marking when the director attestation was made. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
              attr_reader :date
              # The IP address from which the director attestation was made.
              attr_reader :ip
              # The user agent of the browser from which the director attestation was made.
              attr_reader :user_agent

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class OwnershipDeclaration < ::Stripe::StripeObject
              # The time marking when the beneficial owner attestation was made. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
              attr_reader :date
              # The IP address from which the beneficial owner attestation was made.
              attr_reader :ip
              # The user agent of the browser from which the beneficial owner attestation was made.
              attr_reader :user_agent

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class PersonsProvided < ::Stripe::StripeObject
              # Whether the company’s directors have been provided. Set this Boolean to true after creating all the company’s directors with the [Persons API](https://docs.stripe.com/api/v2/core/accounts/createperson).
              attr_reader :directors
              # Whether the company’s executives have been provided. Set this Boolean to true after creating all the company’s executives with the [Persons API](https://docs.stripe.com/api/v2/core/accounts/createperson).
              attr_reader :executives
              # Whether the company’s owners have been provided. Set this Boolean to true after creating all the company’s owners with the [Persons API](https://docs.stripe.com/api/v2/core/accounts/createperson).
              attr_reader :owners
              # Reason for why the company is exempt from providing ownership information.
              attr_reader :ownership_exemption_reason

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class RepresentativeDeclaration < ::Stripe::StripeObject
              # The time marking when the representative attestation was made. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
              attr_reader :date
              # The IP address from which the representative attestation was made.
              attr_reader :ip
              # The user agent of the browser from which the representative attestation was made.
              attr_reader :user_agent

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class TermsOfService < ::Stripe::StripeObject
              class Account < ::Stripe::StripeObject
                # The time when the Account's representative accepted the terms of service. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
                attr_reader :date
                # The IP address from which the Account's representative accepted the terms of service.
                attr_reader :ip
                # The user agent of the browser from which the Account's representative accepted the terms of service.
                attr_reader :user_agent

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class Storer < ::Stripe::StripeObject
                # The time when the Account's representative accepted the terms of service. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
                attr_reader :date
                # The IP address from which the Account's representative accepted the terms of service.
                attr_reader :ip
                # The user agent of the browser from which the Account's representative accepted the terms of service.
                attr_reader :user_agent

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Details on the Account's acceptance of the [Stripe Services Agreement](https://docs.stripe.com/connect/updating-accounts#tos-acceptance).
              attr_reader :account
              # Details on the Account's acceptance of Treasury-specific terms of service.
              attr_reader :storer

              def self.inner_class_types
                @inner_class_types = { account: Account, storer: Storer }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # This hash is used to attest that the directors information provided to Stripe is both current and correct.
            attr_reader :directorship_declaration
            # This hash is used to attest that the beneficial owner information provided to Stripe is both current and correct.
            attr_reader :ownership_declaration
            # Attestation that all Persons with a specific Relationship value have been provided.
            attr_reader :persons_provided
            # This hash is used to attest that the representative is authorized to act as the representative of their legal entity.
            attr_reader :representative_declaration
            # Attestations of accepted terms of service agreements.
            attr_reader :terms_of_service

            def self.inner_class_types
              @inner_class_types = {
                directorship_declaration: DirectorshipDeclaration,
                ownership_declaration: OwnershipDeclaration,
                persons_provided: PersonsProvided,
                representative_declaration: RepresentativeDeclaration,
                terms_of_service: TermsOfService,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class BusinessDetails < ::Stripe::StripeObject
            class Address < ::Stripe::StripeObject
              # City, district, suburb, town, or village.
              attr_reader :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              attr_reader :country
              # Address line 1 (e.g., street, PO Box, or company name).
              attr_reader :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              attr_reader :line2
              # ZIP or postal code.
              attr_reader :postal_code
              # State, county, province, or region.
              attr_reader :state
              # Town or cho-me.
              attr_reader :town

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class AnnualRevenue < ::Stripe::StripeObject
              class Amount < ::Stripe::StripeObject
                # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
                attr_reader :value
                # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
                attr_reader :currency

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # A non-negative integer representing the amount in the smallest currency unit.
              attr_reader :amount
              # The close-out date of the preceding fiscal year in ISO 8601 format. E.g. 2023-12-31 for the 31st of December, 2023.
              attr_reader :fiscal_year_end

              def self.inner_class_types
                @inner_class_types = { amount: Amount }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Documents < ::Stripe::StripeObject
              class BankAccountOwnershipVerification < ::Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class CompanyLicense < ::Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class CompanyMemorandumOfAssociation < ::Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class CompanyMinisterialDecree < ::Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class CompanyRegistrationVerification < ::Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class CompanyTaxIdVerification < ::Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class PrimaryVerification < ::Stripe::StripeObject
                class FrontBack < ::Stripe::StripeObject
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  attr_reader :back
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  attr_reader :front

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens for the front and back of the verification document.
                attr_reader :front_back
                # The format of the verification document. Currently supports `front_back` only.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = { front_back: FrontBack }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class ProofOfAddress < ::Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class ProofOfRegistration < ::Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class ProofOfUltimateBeneficialOwnership < ::Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # One or more documents that support the Bank account ownership verification requirement. Must be a document associated with the account’s primary active bank account that displays the last 4 digits of the account number, either a statement or a check.
              attr_reader :bank_account_ownership_verification
              # One or more documents that demonstrate proof of a company’s license to operate.
              attr_reader :company_license
              # One or more documents showing the company’s Memorandum of Association.
              attr_reader :company_memorandum_of_association
              # Certain countries only: One or more documents showing the ministerial decree legalizing the company’s establishment.
              attr_reader :company_ministerial_decree
              # One or more documents that demonstrate proof of a company’s registration with the appropriate local authorities.
              attr_reader :company_registration_verification
              # One or more documents that demonstrate proof of a company’s tax ID.
              attr_reader :company_tax_id_verification
              # A document verifying the business.
              attr_reader :primary_verification
              # One or more documents that demonstrate proof of address.
              attr_reader :proof_of_address
              # One or more documents showing the company’s proof of registration with the national business registry.
              attr_reader :proof_of_registration
              # One or more documents that demonstrate proof of ultimate beneficial ownership.
              attr_reader :proof_of_ultimate_beneficial_ownership

              def self.inner_class_types
                @inner_class_types = {
                  bank_account_ownership_verification: BankAccountOwnershipVerification,
                  company_license: CompanyLicense,
                  company_memorandum_of_association: CompanyMemorandumOfAssociation,
                  company_ministerial_decree: CompanyMinisterialDecree,
                  company_registration_verification: CompanyRegistrationVerification,
                  company_tax_id_verification: CompanyTaxIdVerification,
                  primary_verification: PrimaryVerification,
                  proof_of_address: ProofOfAddress,
                  proof_of_registration: ProofOfRegistration,
                  proof_of_ultimate_beneficial_ownership: ProofOfUltimateBeneficialOwnership,
                }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class IdNumber < ::Stripe::StripeObject
              # The registrar of the ID number (Only valid for DE ID number types).
              attr_reader :registrar
              # Open Enum. The ID number type of a business entity.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class MonthlyEstimatedRevenue < ::Stripe::StripeObject
              class Amount < ::Stripe::StripeObject
                # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
                attr_reader :value
                # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
                attr_reader :currency

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # A non-negative integer representing the amount in the smallest currency unit.
              attr_reader :amount

              def self.inner_class_types
                @inner_class_types = { amount: Amount }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class ScriptAddresses < ::Stripe::StripeObject
              class Kana < ::Stripe::StripeObject
                # City, district, suburb, town, or village.
                attr_reader :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                attr_reader :country
                # Address line 1 (e.g., street, PO Box, or company name).
                attr_reader :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                attr_reader :line2
                # ZIP or postal code.
                attr_reader :postal_code
                # State, county, province, or region.
                attr_reader :state
                # Town or cho-me.
                attr_reader :town

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class Kanji < ::Stripe::StripeObject
                # City, district, suburb, town, or village.
                attr_reader :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                attr_reader :country
                # Address line 1 (e.g., street, PO Box, or company name).
                attr_reader :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                attr_reader :line2
                # ZIP or postal code.
                attr_reader :postal_code
                # State, county, province, or region.
                attr_reader :state
                # Town or cho-me.
                attr_reader :town

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Kana Address.
              attr_reader :kana
              # Kanji Address.
              attr_reader :kanji

              def self.inner_class_types
                @inner_class_types = { kana: Kana, kanji: Kanji }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class ScriptNames < ::Stripe::StripeObject
              class Kana < ::Stripe::StripeObject
                # Registered name of the business.
                attr_reader :registered_name

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class Kanji < ::Stripe::StripeObject
                # Registered name of the business.
                attr_reader :registered_name

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Kana name.
              attr_reader :kana
              # Kanji name.
              attr_reader :kanji

              def self.inner_class_types
                @inner_class_types = { kana: Kana, kanji: Kanji }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The company’s primary address.
            attr_reader :address
            # The business gross annual revenue for its preceding fiscal year.
            attr_reader :annual_revenue
            # Documents that may be submitted to satisfy various informational requests.
            attr_reader :documents
            # An estimated upper bound of employees, contractors, vendors, etc. currently working for the business.
            attr_reader :estimated_worker_count
            # The provided ID numbers of a business entity.
            attr_reader :id_numbers
            # An estimate of the monthly revenue of the business.
            attr_reader :monthly_estimated_revenue
            # The company’s phone number (used for verification).
            attr_reader :phone
            # The business legal name.
            attr_reader :registered_name
            # The business registration address of the business entity in non latin script.
            attr_reader :script_addresses
            # The business legal name in non latin script.
            attr_reader :script_names
            # The category identifying the legal structure of the business.
            attr_reader :structure

            def self.inner_class_types
              @inner_class_types = {
                address: Address,
                annual_revenue: AnnualRevenue,
                documents: Documents,
                id_numbers: IdNumber,
                monthly_estimated_revenue: MonthlyEstimatedRevenue,
                script_addresses: ScriptAddresses,
                script_names: ScriptNames,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Individual < ::Stripe::StripeObject
            class AdditionalAddress < ::Stripe::StripeObject
              # City, district, suburb, town, or village.
              attr_reader :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              attr_reader :country
              # Address line 1 (e.g., street, PO Box, or company name).
              attr_reader :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              attr_reader :line2
              # ZIP or postal code.
              attr_reader :postal_code
              # Purpose of additional address.
              attr_reader :purpose
              # State, county, province, or region.
              attr_reader :state
              # Town or cho-me.
              attr_reader :town

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class AdditionalName < ::Stripe::StripeObject
              # The individual's full name.
              attr_reader :full_name
              # The individual's first or given name.
              attr_reader :given_name
              # The purpose or type of the additional name.
              attr_reader :purpose
              # The individual's last or family name.
              attr_reader :surname

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class AdditionalTermsOfService < ::Stripe::StripeObject
              class Account < ::Stripe::StripeObject
                # The time when the Account's representative accepted the terms of service. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
                attr_reader :date
                # The IP address from which the Account's representative accepted the terms of service.
                attr_reader :ip
                # The user agent of the browser from which the Account's representative accepted the terms of service.
                attr_reader :user_agent

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Stripe terms of service agreement.
              attr_reader :account

              def self.inner_class_types
                @inner_class_types = { account: Account }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Address < ::Stripe::StripeObject
              # City, district, suburb, town, or village.
              attr_reader :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              attr_reader :country
              # Address line 1 (e.g., street, PO Box, or company name).
              attr_reader :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              attr_reader :line2
              # ZIP or postal code.
              attr_reader :postal_code
              # State, county, province, or region.
              attr_reader :state
              # Town or cho-me.
              attr_reader :town

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class DateOfBirth < ::Stripe::StripeObject
              # The day of birth, between 1 and 31.
              attr_reader :day
              # The month of birth, between 1 and 12.
              attr_reader :month
              # The four-digit year of birth.
              attr_reader :year

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Documents < ::Stripe::StripeObject
              class CompanyAuthorization < ::Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class Passport < ::Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class PrimaryVerification < ::Stripe::StripeObject
                class FrontBack < ::Stripe::StripeObject
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  attr_reader :back
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  attr_reader :front

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens for the front and back of the verification document.
                attr_reader :front_back
                # The format of the verification document. Currently supports `front_back` only.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = { front_back: FrontBack }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class SecondaryVerification < ::Stripe::StripeObject
                class FrontBack < ::Stripe::StripeObject
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  attr_reader :back
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  attr_reader :front

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens for the front and back of the verification document.
                attr_reader :front_back
                # The format of the verification document. Currently supports `front_back` only.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = { front_back: FrontBack }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class Visa < ::Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                attr_reader :type

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # One or more documents that demonstrate proof that this person is authorized to represent the company.
              attr_reader :company_authorization
              # One or more documents showing the person’s passport page with photo and personal data.
              attr_reader :passport
              # An identifying document showing the person's name, either a passport or local ID card.
              attr_reader :primary_verification
              # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
              attr_reader :secondary_verification
              # One or more documents showing the person’s visa required for living in the country where they are residing.
              attr_reader :visa

              def self.inner_class_types
                @inner_class_types = {
                  company_authorization: CompanyAuthorization,
                  passport: Passport,
                  primary_verification: PrimaryVerification,
                  secondary_verification: SecondaryVerification,
                  visa: Visa,
                }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class IdNumber < ::Stripe::StripeObject
              # The ID number type of an individual.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Relationship < ::Stripe::StripeObject
              # Whether the individual is an authorizer of the Account’s legal entity.
              attr_reader :authorizer
              # Whether the individual is a director of the Account’s legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
              attr_reader :director
              # Whether the individual has significant responsibility to control, manage, or direct the organization.
              attr_reader :executive
              # Whether the individual is the legal guardian of the Account’s representative.
              attr_reader :legal_guardian
              # Whether the individual is an owner of the Account’s legal entity.
              attr_reader :owner
              # The percent owned by the individual of the Account’s legal entity.
              attr_reader :percent_ownership
              # Whether the individual is authorized as the primary representative of the Account. This is the person nominated by the business to provide information about themselves, and general information about the account. There can only be one representative at any given time. At the time the account is created, this person should be set to the person responsible for opening the account.
              attr_reader :representative
              # The individual's title (e.g., CEO, Support Engineer).
              attr_reader :title

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class ScriptAddresses < ::Stripe::StripeObject
              class Kana < ::Stripe::StripeObject
                # City, district, suburb, town, or village.
                attr_reader :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                attr_reader :country
                # Address line 1 (e.g., street, PO Box, or company name).
                attr_reader :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                attr_reader :line2
                # ZIP or postal code.
                attr_reader :postal_code
                # State, county, province, or region.
                attr_reader :state
                # Town or cho-me.
                attr_reader :town

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class Kanji < ::Stripe::StripeObject
                # City, district, suburb, town, or village.
                attr_reader :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                attr_reader :country
                # Address line 1 (e.g., street, PO Box, or company name).
                attr_reader :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                attr_reader :line2
                # ZIP or postal code.
                attr_reader :postal_code
                # State, county, province, or region.
                attr_reader :state
                # Town or cho-me.
                attr_reader :town

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Kana Address.
              attr_reader :kana
              # Kanji Address.
              attr_reader :kanji

              def self.inner_class_types
                @inner_class_types = { kana: Kana, kanji: Kanji }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class ScriptNames < ::Stripe::StripeObject
              class Kana < ::Stripe::StripeObject
                # The person's first or given name.
                attr_reader :given_name
                # The person's last or family name.
                attr_reader :surname

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end

              class Kanji < ::Stripe::StripeObject
                # The person's first or given name.
                attr_reader :given_name
                # The person's last or family name.
                attr_reader :surname

                def self.inner_class_types
                  @inner_class_types = {}
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Persons name in kana script.
              attr_reader :kana
              # Persons name in kanji script.
              attr_reader :kanji

              def self.inner_class_types
                @inner_class_types = { kana: Kana, kanji: Kanji }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The account ID which the individual belongs to.
            attr_reader :account
            # Additional addresses associated with the individual.
            attr_reader :additional_addresses
            # Additional names (e.g. aliases) associated with the individual.
            attr_reader :additional_names
            # Terms of service acceptances.
            attr_reader :additional_terms_of_service
            # The individual's residential address.
            attr_reader :address
            # Time at which the object was created. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
            attr_reader :created
            # The individual's date of birth.
            attr_reader :date_of_birth
            # Documents that may be submitted to satisfy various informational requests.
            attr_reader :documents
            # The individual's email address.
            attr_reader :email
            # The individual's first name.
            attr_reader :given_name
            # Unique identifier for the object.
            attr_reader :id
            # The identification numbers (e.g., SSN) associated with the individual.
            attr_reader :id_numbers
            # The individual's gender (International regulations require either "male” or "female").
            attr_reader :legal_gender
            # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
            attr_reader :metadata
            # The countries where the individual is a national. Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_reader :nationalities
            # String representing the object's type. Objects of the same type share the same value.
            attr_reader :object
            # The individual's phone number.
            attr_reader :phone
            # Indicates if the individual or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
            attr_reader :political_exposure
            # The relationship that this individual has with the Account's identity.
            attr_reader :relationship
            # The script addresses (e.g., non-Latin characters) associated with the individual.
            attr_reader :script_addresses
            # The script names (e.g. non-Latin characters) associated with the individual.
            attr_reader :script_names
            # The individual's last name.
            attr_reader :surname
            # Time at which the object was last updated.
            attr_reader :updated

            def self.inner_class_types
              @inner_class_types = {
                additional_addresses: AdditionalAddress,
                additional_names: AdditionalName,
                additional_terms_of_service: AdditionalTermsOfService,
                address: Address,
                date_of_birth: DateOfBirth,
                documents: Documents,
                id_numbers: IdNumber,
                relationship: Relationship,
                script_addresses: ScriptAddresses,
                script_names: ScriptNames,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Attestations from the identity's key people, e.g. owners, executives, directors, representatives.
          attr_reader :attestations
          # Information about the company or business.
          attr_reader :business_details
          # The country in which the account holder resides, or in which the business is legally established. This should be an [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code.
          attr_reader :country
          # The entity type.
          attr_reader :entity_type
          # Information about the individual represented by the Account. This property is `null` unless `entity_type` is set to `individual`.
          attr_reader :individual

          def self.inner_class_types
            @inner_class_types = {
              attestations: Attestations,
              business_details: BusinessDetails,
              individual: Individual,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Requirements < ::Stripe::StripeObject
          class Entry < ::Stripe::StripeObject
            class Error < ::Stripe::StripeObject
              # Machine-readable code describing the error.
              attr_reader :code
              # Human-readable description of the error.
              attr_reader :description

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Impact < ::Stripe::StripeObject
              class RestrictsCapability < ::Stripe::StripeObject
                class Deadline < ::Stripe::StripeObject
                  # The current status of the requirement's impact.
                  attr_reader :status

                  def self.inner_class_types
                    @inner_class_types = {}
                  end

                  def self.field_remappings
                    @field_remappings = {}
                  end
                end
                # The name of the Capability which will be restricted.
                attr_reader :capability
                # The configuration which specifies the Capability which will be restricted.
                attr_reader :configuration
                # Details about when in the account lifecycle the requirement must be collected by the avoid the Capability restriction.
                attr_reader :deadline

                def self.inner_class_types
                  @inner_class_types = { deadline: Deadline }
                end

                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # The Capabilities that will be restricted if the requirement is not collected and satisfactory to Stripe.
              attr_reader :restricts_capabilities

              def self.inner_class_types
                @inner_class_types = { restricts_capabilities: RestrictsCapability }
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class MinimumDeadline < ::Stripe::StripeObject
              # The current status of the requirement's impact.
              attr_reader :status

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class Reference < ::Stripe::StripeObject
              # If `inquiry` is the type, the inquiry token.
              attr_reader :inquiry
              # If `resource` is the type, the resource token.
              attr_reader :resource
              # The type of the reference. If the type is "inquiry", the inquiry token can be found in the "inquiry" field.
              # Otherwise the type is an API resource, the token for which can be found in the "resource" field.
              attr_reader :type

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end

            class RequestedReason < ::Stripe::StripeObject
              # Machine-readable description of Stripe's reason for collecting the requirement.
              attr_reader :code

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Whether the responsibility is with the integrator or with Stripe (to review info, to wait for some condition, etc.) to action the requirement.
            attr_reader :awaiting_action_from
            # Machine-readable string describing the requirement.
            attr_reader :description
            # Descriptions of why the requirement must be collected, or why the collected information isn't satisfactory to Stripe.
            attr_reader :errors
            # A hash describing the impact of not collecting the requirement, or Stripe not being able to verify the collected information.
            attr_reader :impact
            # The soonest point when the account will be impacted by not providing the requirement.
            attr_reader :minimum_deadline
            # A reference to the location of the requirement.
            attr_reader :reference
            # A list of reasons why Stripe is collecting the requirement.
            attr_reader :requested_reasons

            def self.inner_class_types
              @inner_class_types = {
                errors: Error,
                impact: Impact,
                minimum_deadline: MinimumDeadline,
                reference: Reference,
                requested_reasons: RequestedReason,
              }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Summary < ::Stripe::StripeObject
            class MinimumDeadline < ::Stripe::StripeObject
              # The current strictest status of all requirements on the Account.
              attr_reader :status
              # The soonest RFC3339 date & time UTC value a requirement can impact the Account.
              attr_reader :time

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The soonest date and time a requirement on the Account will become `past due`. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2022-09-18T13:22:18.123Z`.
            attr_reader :minimum_deadline

            def self.inner_class_types
              @inner_class_types = { minimum_deadline: MinimumDeadline }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # A list of requirements for the Account.
          attr_reader :entries
          # An object containing an overview of requirements for the Account.
          attr_reader :summary

          def self.inner_class_types
            @inner_class_types = { entries: Entry, summary: Summary }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Filter only accounts that have all of the configurations specified. If omitted, returns all accounts regardless of which configurations they have.
        attr_reader :applied_configurations
        # A value indicating if the Account has been closed.
        attr_reader :closed
        # An Account Configuration which allows the Account to take on a key persona across Stripe products.
        attr_reader :configuration
        # The default contact email address for the Account. Required when configuring the account as a merchant or recipient.
        attr_reader :contact_email
        # Time at which the object was created. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        attr_reader :created
        # A value indicating the Stripe dashboard this Account has access to. This will depend on which configurations are enabled for this account.
        attr_reader :dashboard
        # Default values to be used on Account Configurations.
        attr_reader :defaults
        # A descriptive name for the Account. This name will be surfaced in the Stripe Dashboard and on any invoices sent to the Account.
        attr_reader :display_name
        # Information about the future requirements for the Account that will eventually come into effect, including what information needs to be collected, and by when.
        attr_reader :future_requirements
        # Unique identifier for the Account.
        attr_reader :id
        # Information about the company, individual, and business represented by the Account.
        attr_reader :identity
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Information about the active requirements for the Account, including what information needs to be collected, and by when.
        attr_reader :requirements
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = {
            configuration: Configuration,
            defaults: Defaults,
            future_requirements: FutureRequirements,
            identity: Identity,
            requirements: Requirements,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
