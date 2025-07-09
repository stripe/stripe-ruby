# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      # A V2 Account is a representation of a company or individual that a Stripe user does business with. Accounts contain the contact details, Legal Entity information, and configuration required to enable the Account for use across Stripe products.
      class Account < APIResource
        class Configuration < Stripe::StripeObject
          class Customer < Stripe::StripeObject
            class AutomaticIndirectTax < Stripe::StripeObject
              class Location < Stripe::StripeObject
                # The identified tax country of the customer.
                sig { returns(T.nilable(String)) }
                attr_reader :country
                # The identified tax state, county, province, or region of the customer.
                sig { returns(T.nilable(String)) }
                attr_reader :state
              end
              # Describes the customer's tax exemption status, which is `none`, `exempt`, or `reverse`. When set to reverse, invoice and receipt PDFs include the following text: “Reverse charge”.
              sig { returns(T.nilable(String)) }
              attr_reader :exempt
              # A recent IP address of the customer used for tax reporting and tax location inference.
              sig { returns(T.nilable(String)) }
              attr_reader :ip_address
              # The customer’s identified tax location - uses `location_source`. Will only be rendered if the `automatic_indirect_tax` feature is requested and `active`.
              sig { returns(T.nilable(Location)) }
              attr_reader :location
              # The data source used to identify the customer's tax location - defaults to 'identity_address'. Will only be used for automatic tax calculation on the customer's Invoices and Subscriptions.
              sig { returns(T.nilable(String)) }
              attr_reader :location_source
            end
            class Billing < Stripe::StripeObject
              class Invoice < Stripe::StripeObject
                class CustomField < Stripe::StripeObject
                  # The name of the custom field. This may be up to 40 characters.
                  sig { returns(String) }
                  attr_reader :name
                  # The value of the custom field. This may be up to 140 characters. When updating, pass an empty string to remove previously-defined values.
                  sig { returns(String) }
                  attr_reader :value
                end
                class Rendering < Stripe::StripeObject
                  # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs. One of exclude_tax or include_inclusive_tax. include_inclusive_tax will include inclusive tax (and exclude exclusive tax) in invoice PDF amounts. exclude_tax will exclude all tax (inclusive and exclusive alike) from invoice PDF amounts.
                  sig { returns(T.nilable(String)) }
                  attr_reader :amount_tax_display
                  # ID of the invoice rendering template to use for future invoices.
                  sig { returns(T.nilable(String)) }
                  attr_reader :template
                end
                # The list of up to 4 default custom fields to be displayed on invoices for this customer. When updating, pass an empty string to remove previously-defined fields.
                sig { returns(T::Array[CustomField]) }
                attr_reader :custom_fields
                # Default footer to be displayed on invoices for this customer.
                sig { returns(T.nilable(String)) }
                attr_reader :footer
                # The sequence to be used on the customer's next invoice. Defaults to 1.
                sig { returns(T.nilable(Integer)) }
                attr_reader :next_sequence
                # The prefix for the customer used to generate unique invoice numbers. Must be 3–12 uppercase letters or numbers.
                sig { returns(T.nilable(String)) }
                attr_reader :prefix
                # Default options for invoice PDF rendering for this customer.
                sig { returns(T.nilable(Rendering)) }
                attr_reader :rendering
              end
              # ID of a payment method that’s attached to the customer, to be used as the customer’s default payment method for invoices and subscriptions.
              sig { returns(T.nilable(String)) }
              attr_reader :default_payment_method
              # Default settings used on invoices for this customer.
              sig { returns(T.nilable(Invoice)) }
              attr_reader :invoice
            end
            class Capabilities < Stripe::StripeObject
              class AutomaticIndirectTax < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              # Generates requirements for enabling automatic indirect tax calculation on this customer's invoices or subscriptions. Recommended to request this capability if planning to enable automatic tax calculation on this customer's invoices or subscriptions. Uses the `location_source` field.
              sig { returns(T.nilable(AutomaticIndirectTax)) }
              attr_reader :automatic_indirect_tax
            end
            class Shipping < Stripe::StripeObject
              class Address < Stripe::StripeObject
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(String)) }
                attr_reader :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(String)) }
                attr_reader :country
                # Address line 1 (e.g., street, PO Box, or company name).
                sig { returns(T.nilable(String)) }
                attr_reader :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                sig { returns(T.nilable(String)) }
                attr_reader :line2
                # ZIP or postal code.
                sig { returns(T.nilable(String)) }
                attr_reader :postal_code
                # State, county, province, or region.
                sig { returns(T.nilable(String)) }
                attr_reader :state
              end
              # Customer shipping address.
              sig { returns(T.nilable(Address)) }
              attr_reader :address
              # Customer name.
              sig { returns(T.nilable(String)) }
              attr_reader :name
              # Customer phone (including extension).
              sig { returns(T.nilable(String)) }
              attr_reader :phone
            end
            # Automatic indirect tax settings to be used when automatic tax calculation is enabled on the customer's invoices, subscriptions, checkout sessions, or payment links. Surfaces if automatic tax calculation is possible given the current customer location information.
            sig { returns(T.nilable(AutomaticIndirectTax)) }
            attr_reader :automatic_indirect_tax
            # Billing settings - default settings used for this customer in Billing flows such as Invoices and Subscriptions.
            sig { returns(T.nilable(Billing)) }
            attr_reader :billing
            # Capabilities that have been requested on the Customer Configuration.
            sig { returns(T.nilable(Capabilities)) }
            attr_reader :capabilities
            # The customer's shipping information. Appears on invoices emailed to this customer.
            sig { returns(T.nilable(Shipping)) }
            attr_reader :shipping
            # ID of the test clock to attach to the customer. Can only be set on testmode Accounts, and when the Customer Configuration is first set on an Account.
            sig { returns(T.nilable(String)) }
            attr_reader :test_clock
          end
          class Merchant < Stripe::StripeObject
            class BacsDebitPayments < Stripe::StripeObject
              # Display name for Bacs debit payments.
              sig { returns(T.nilable(String)) }
              attr_reader :display_name
              # Service user number for Bacs debit payments.
              sig { returns(T.nilable(String)) }
              attr_reader :service_user_number
            end
            class Branding < Stripe::StripeObject
              # ID of a [file upload](https://docs.stripe.com/api/persons/update#create_file): An icon for the merchant. Must be square and at least 128px x 128px.
              sig { returns(T.nilable(String)) }
              attr_reader :icon
              # ID of a [file upload](https://docs.stripe.com/api/persons/update#create_file): A logo for the merchant that will be used in Checkout instead of the icon and without the merchant's name next to it if provided. Must be at least 128px x 128px.
              sig { returns(T.nilable(String)) }
              attr_reader :logo
              # A CSS hex color value representing the primary branding color for the merchant.
              sig { returns(T.nilable(String)) }
              attr_reader :primary_color
              # A CSS hex color value representing the secondary branding color for the merchant.
              sig { returns(T.nilable(String)) }
              attr_reader :secondary_color
            end
            class Capabilities < Stripe::StripeObject
              class AchDebitPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class AcssDebitPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class AffirmPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class AfterpayClearpayPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class AlmaPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class AmazonPayPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class AuBecsDebitPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class BacsDebitPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class BancontactPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class BlikPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class BoletoPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class CardPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class CartesBancairesPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class CashappPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class EpsPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class FpxPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class GbBankTransferPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class GrabpayPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class IdealPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class JcbPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class JpBankTransferPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class KakaoPayPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class KlarnaPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class KonbiniPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class KrCardPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class LinkPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class MobilepayPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class MultibancoPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class MxBankTransferPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class NaverPayPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class OxxoPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class P24Payments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class PayByBankPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class PaycoPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class PaynowPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class PromptpayPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class RevolutPayPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class SamsungPayPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class SepaBankTransferPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class SepaDebitPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class StripeBalance < Stripe::StripeObject
                class Payouts < Stripe::StripeObject
                  class StatusDetail < Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    sig { returns(String) }
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    sig { returns(String) }
                    attr_reader :resolution
                  end
                  # Whether the Capability has been requested.
                  sig { returns(T::Boolean) }
                  attr_reader :requested
                  # The status of the Capability.
                  sig { returns(String) }
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  sig { returns(T::Array[StatusDetail]) }
                  attr_reader :status_details
                end
                # Allows the account to do payouts using their Stripe Balance (/v1/balance).
                sig { returns(T.nilable(Payouts)) }
                attr_reader :payouts
              end
              class SwishPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class TwintPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class UsBankTransferPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class ZipPayments < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              # Allow the merchant to process ACH debit payments.
              sig { returns(T.nilable(AchDebitPayments)) }
              attr_reader :ach_debit_payments
              # Allow the merchant to process ACSS debit payments.
              sig { returns(T.nilable(AcssDebitPayments)) }
              attr_reader :acss_debit_payments
              # Allow the merchant to process Affirm payments.
              sig { returns(T.nilable(AffirmPayments)) }
              attr_reader :affirm_payments
              # Allow the merchant to process Afterpay/Clearpay payments.
              sig { returns(T.nilable(AfterpayClearpayPayments)) }
              attr_reader :afterpay_clearpay_payments
              # Allow the merchant to process Alma payments.
              sig { returns(T.nilable(AlmaPayments)) }
              attr_reader :alma_payments
              # Allow the merchant to process Amazon Pay payments.
              sig { returns(T.nilable(AmazonPayPayments)) }
              attr_reader :amazon_pay_payments
              # Allow the merchant to process Australian BECS Direct Debit payments.
              sig { returns(T.nilable(AuBecsDebitPayments)) }
              attr_reader :au_becs_debit_payments
              # Allow the merchant to process BACS Direct Debit payments.
              sig { returns(T.nilable(BacsDebitPayments)) }
              attr_reader :bacs_debit_payments
              # Allow the merchant to process Bancontact payments.
              sig { returns(T.nilable(BancontactPayments)) }
              attr_reader :bancontact_payments
              # Allow the merchant to process BLIK payments.
              sig { returns(T.nilable(BlikPayments)) }
              attr_reader :blik_payments
              # Allow the merchant to process Boleto payments.
              sig { returns(T.nilable(BoletoPayments)) }
              attr_reader :boleto_payments
              # Allow the merchant to collect card payments.
              sig { returns(T.nilable(CardPayments)) }
              attr_reader :card_payments
              # Allow the merchant to process Cartes Bancaires payments.
              sig { returns(T.nilable(CartesBancairesPayments)) }
              attr_reader :cartes_bancaires_payments
              # Allow the merchant to process Cash App payments.
              sig { returns(T.nilable(CashappPayments)) }
              attr_reader :cashapp_payments
              # Allow the merchant to process EPS payments.
              sig { returns(T.nilable(EpsPayments)) }
              attr_reader :eps_payments
              # Allow the merchant to process FPX payments.
              sig { returns(T.nilable(FpxPayments)) }
              attr_reader :fpx_payments
              # Allow the merchant to process UK bank transfer payments.
              sig { returns(T.nilable(GbBankTransferPayments)) }
              attr_reader :gb_bank_transfer_payments
              # Allow the merchant to process GrabPay payments.
              sig { returns(T.nilable(GrabpayPayments)) }
              attr_reader :grabpay_payments
              # Allow the merchant to process iDEAL payments.
              sig { returns(T.nilable(IdealPayments)) }
              attr_reader :ideal_payments
              # Allow the merchant to process JCB card payments.
              sig { returns(T.nilable(JcbPayments)) }
              attr_reader :jcb_payments
              # Allow the merchant to process Japanese bank transfer payments.
              sig { returns(T.nilable(JpBankTransferPayments)) }
              attr_reader :jp_bank_transfer_payments
              # Allow the merchant to process Kakao Pay payments.
              sig { returns(T.nilable(KakaoPayPayments)) }
              attr_reader :kakao_pay_payments
              # Allow the merchant to process Klarna payments.
              sig { returns(T.nilable(KlarnaPayments)) }
              attr_reader :klarna_payments
              # Allow the merchant to process Konbini convenience store payments.
              sig { returns(T.nilable(KonbiniPayments)) }
              attr_reader :konbini_payments
              # Allow the merchant to process Korean card payments.
              sig { returns(T.nilable(KrCardPayments)) }
              attr_reader :kr_card_payments
              # Allow the merchant to process Link payments.
              sig { returns(T.nilable(LinkPayments)) }
              attr_reader :link_payments
              # Allow the merchant to process MobilePay payments.
              sig { returns(T.nilable(MobilepayPayments)) }
              attr_reader :mobilepay_payments
              # Allow the merchant to process Multibanco payments.
              sig { returns(T.nilable(MultibancoPayments)) }
              attr_reader :multibanco_payments
              # Allow the merchant to process Mexican bank transfer payments.
              sig { returns(T.nilable(MxBankTransferPayments)) }
              attr_reader :mx_bank_transfer_payments
              # Allow the merchant to process Naver Pay payments.
              sig { returns(T.nilable(NaverPayPayments)) }
              attr_reader :naver_pay_payments
              # Allow the merchant to process OXXO payments.
              sig { returns(T.nilable(OxxoPayments)) }
              attr_reader :oxxo_payments
              # Allow the merchant to process Przelewy24 (P24) payments.
              sig { returns(T.nilable(P24Payments)) }
              attr_reader :p24_payments
              # Allow the merchant to process Pay by Bank payments.
              sig { returns(T.nilable(PayByBankPayments)) }
              attr_reader :pay_by_bank_payments
              # Allow the merchant to process PAYCO payments.
              sig { returns(T.nilable(PaycoPayments)) }
              attr_reader :payco_payments
              # Allow the merchant to process PayNow payments.
              sig { returns(T.nilable(PaynowPayments)) }
              attr_reader :paynow_payments
              # Allow the merchant to process PromptPay payments.
              sig { returns(T.nilable(PromptpayPayments)) }
              attr_reader :promptpay_payments
              # Allow the merchant to process Revolut Pay payments.
              sig { returns(T.nilable(RevolutPayPayments)) }
              attr_reader :revolut_pay_payments
              # Allow the merchant to process Samsung Pay payments.
              sig { returns(T.nilable(SamsungPayPayments)) }
              attr_reader :samsung_pay_payments
              # Allow the merchant to process SEPA bank transfer payments.
              sig { returns(T.nilable(SepaBankTransferPayments)) }
              attr_reader :sepa_bank_transfer_payments
              # Allow the merchant to process SEPA Direct Debit payments.
              sig { returns(T.nilable(SepaDebitPayments)) }
              attr_reader :sepa_debit_payments
              # Capabilities that enable the merchant to manage their Stripe Balance (/v1/balance).
              sig { returns(T.nilable(StripeBalance)) }
              attr_reader :stripe_balance
              # Allow the merchant to process Swish payments.
              sig { returns(T.nilable(SwishPayments)) }
              attr_reader :swish_payments
              # Allow the merchant to process TWINT payments.
              sig { returns(T.nilable(TwintPayments)) }
              attr_reader :twint_payments
              # Allow the merchant to process US bank transfer payments.
              sig { returns(T.nilable(UsBankTransferPayments)) }
              attr_reader :us_bank_transfer_payments
              # Allow the merchant to process Zip payments.
              sig { returns(T.nilable(ZipPayments)) }
              attr_reader :zip_payments
            end
            class CardPayments < Stripe::StripeObject
              class DeclineOn < Stripe::StripeObject
                # Whether Stripe automatically declines charges with an incorrect ZIP or postal code. This setting only applies when a ZIP or postal code is provided and they fail bank verification.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :avs_failure
                # Whether Stripe automatically declines charges with an incorrect CVC. This setting only applies when a CVC is provided and it fails bank verification.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :cvc_failure
              end
              # Automatically declines certain charge types regardless of whether the card issuer accepted or declined the charge.
              sig { returns(T.nilable(DeclineOn)) }
              attr_reader :decline_on
            end
            class SepaDebitPayments < Stripe::StripeObject
              # Creditor ID for SEPA debit payments.
              sig { returns(T.nilable(String)) }
              attr_reader :creditor_id
            end
            class StatementDescriptor < Stripe::StripeObject
              # The default text that appears on statements for non-card charges outside of Japan. For card charges, if you don’t set a statement_descriptor_prefix, this text is also used as the statement descriptor prefix. In that case, if concatenating the statement descriptor suffix causes the combined statement descriptor to exceed 22 characters, we truncate the statement_descriptor text to limit the full descriptor to 22 characters. For more information about statement descriptors and their requirements, see the Merchant Configuration settings documentation.
              sig { returns(T.nilable(String)) }
              attr_reader :descriptor
              # Default text that appears on statements for card charges outside of Japan, prefixing any dynamic statement_descriptor_suffix specified on the charge. To maximize space for the dynamic part of the descriptor, keep this text short. If you don’t specify this value, statement_descriptor is used as the prefix. For more information about statement descriptors and their requirements, see the Merchant Configuration settings documentation.
              sig { returns(T.nilable(String)) }
              attr_reader :prefix
            end
            class Support < Stripe::StripeObject
              class Address < Stripe::StripeObject
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(String)) }
                attr_reader :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(String)) }
                attr_reader :country
                # Address line 1 (e.g., street, PO Box, or company name).
                sig { returns(T.nilable(String)) }
                attr_reader :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                sig { returns(T.nilable(String)) }
                attr_reader :line2
                # ZIP or postal code.
                sig { returns(T.nilable(String)) }
                attr_reader :postal_code
                # State, county, province, or region.
                sig { returns(T.nilable(String)) }
                attr_reader :state
                # Town or cho-me.
                sig { returns(T.nilable(String)) }
                attr_reader :town
              end
              # A publicly available mailing address for sending support issues to.
              sig { returns(T.nilable(Address)) }
              attr_reader :address
              # A publicly available email address for sending support issues to.
              sig { returns(T.nilable(String)) }
              attr_reader :email
              # A publicly available phone number to call with support issues.
              sig { returns(T.nilable(String)) }
              attr_reader :phone
              # A publicly available website for handling support issues.
              sig { returns(T.nilable(String)) }
              attr_reader :url
            end
            # Settings used for Bacs debit payments.
            sig { returns(T.nilable(BacsDebitPayments)) }
            attr_reader :bacs_debit_payments
            # Settings used to apply the merchant's branding to email receipts, invoices, Checkout, and other products.
            sig { returns(T.nilable(Branding)) }
            attr_reader :branding
            # Capabilities that have been requested on the Merchant Configuration.
            sig { returns(T.nilable(Capabilities)) }
            attr_reader :capabilities
            # Card payments settings.
            sig { returns(T.nilable(CardPayments)) }
            attr_reader :card_payments
            # The merchant category code for the merchant. MCCs are used to classify businesses based on the goods or services they provide.
            sig { returns(T.nilable(String)) }
            attr_reader :mcc
            # Settings used for SEPA debit payments.
            sig { returns(T.nilable(SepaDebitPayments)) }
            attr_reader :sepa_debit_payments
            # Statement descriptor.
            sig { returns(T.nilable(StatementDescriptor)) }
            attr_reader :statement_descriptor
            # Publicly available contact information for sending support issues to.
            sig { returns(T.nilable(Support)) }
            attr_reader :support
          end
          class Recipient < Stripe::StripeObject
            class Capabilities < Stripe::StripeObject
              class BankAccounts < Stripe::StripeObject
                class Local < Stripe::StripeObject
                  class StatusDetail < Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    sig { returns(String) }
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    sig { returns(String) }
                    attr_reader :resolution
                  end
                  # Whether the Capability has been requested.
                  sig { returns(T::Boolean) }
                  attr_reader :requested
                  # The status of the Capability.
                  sig { returns(String) }
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  sig { returns(T::Array[StatusDetail]) }
                  attr_reader :status_details
                end
                class Wire < Stripe::StripeObject
                  class StatusDetail < Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    sig { returns(String) }
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    sig { returns(String) }
                    attr_reader :resolution
                  end
                  # Whether the Capability has been requested.
                  sig { returns(T::Boolean) }
                  attr_reader :requested
                  # The status of the Capability.
                  sig { returns(String) }
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  sig { returns(T::Array[StatusDetail]) }
                  attr_reader :status_details
                end
                # Enables this Account to receive OutboundPayments to linked bank accounts over local networks.
                sig { returns(T.nilable(Local)) }
                attr_reader :local
                # Enables this Account to receive OutboundPayments to linked bank accounts over wire.
                sig { returns(T.nilable(Wire)) }
                attr_reader :wire
              end
              class Cards < Stripe::StripeObject
                class StatusDetail < Stripe::StripeObject
                  # Machine-readable code explaining the reason for the Capability to be in its current status.
                  sig { returns(String) }
                  attr_reader :code
                  # Machine-readable code explaining how to make the Capability active.
                  sig { returns(String) }
                  attr_reader :resolution
                end
                # Whether the Capability has been requested.
                sig { returns(T::Boolean) }
                attr_reader :requested
                # The status of the Capability.
                sig { returns(String) }
                attr_reader :status
                # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                sig { returns(T::Array[StatusDetail]) }
                attr_reader :status_details
              end
              class StripeBalance < Stripe::StripeObject
                class Payouts < Stripe::StripeObject
                  class StatusDetail < Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    sig { returns(String) }
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    sig { returns(String) }
                    attr_reader :resolution
                  end
                  # Whether the Capability has been requested.
                  sig { returns(T::Boolean) }
                  attr_reader :requested
                  # The status of the Capability.
                  sig { returns(String) }
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  sig { returns(T::Array[StatusDetail]) }
                  attr_reader :status_details
                end
                class StripeTransfers < Stripe::StripeObject
                  class StatusDetail < Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    sig { returns(String) }
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    sig { returns(String) }
                    attr_reader :resolution
                  end
                  # Whether the Capability has been requested.
                  sig { returns(T::Boolean) }
                  attr_reader :requested
                  # The status of the Capability.
                  sig { returns(String) }
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  sig { returns(T::Array[StatusDetail]) }
                  attr_reader :status_details
                end
                # Allows the account to do payouts using their Stripe Balance (/v1/balance).
                sig { returns(T.nilable(Payouts)) }
                attr_reader :payouts
                # Allows the account to receive /v1/transfers into their Stripe Balance (/v1/balance).
                sig { returns(T.nilable(StripeTransfers)) }
                attr_reader :stripe_transfers
              end
              # Capabilities that enable OutboundPayments to a bank account linked to this Account.
              sig { returns(T.nilable(BankAccounts)) }
              attr_reader :bank_accounts
              # Capability that enable OutboundPayments to a debit card linked to this Account.
              sig { returns(T.nilable(Cards)) }
              attr_reader :cards
              # Capabilities that enable the recipient to manage their Stripe Balance (/v1/balance).
              sig { returns(T.nilable(StripeBalance)) }
              attr_reader :stripe_balance
            end
            class DefaultOutboundDestination < Stripe::StripeObject
              # The payout method ID of the default outbound destination.
              sig { returns(String) }
              attr_reader :id
              # Closed Enum. The payout method type of the default outbound destination.
              sig { returns(String) }
              attr_reader :type
            end
            # Capabilities that have been requested on the Recipient Configuration.
            sig { returns(T.nilable(Capabilities)) }
            attr_reader :capabilities
            # The payout method to be used as a default outbound destination. This will allow the PayoutMethod to be omitted on OutboundPayments made through the dashboard.
            sig { returns(T.nilable(DefaultOutboundDestination)) }
            attr_reader :default_outbound_destination
          end
          class Storer < Stripe::StripeObject
            class Capabilities < Stripe::StripeObject
              class FinancialAddresses < Stripe::StripeObject
                class BankAccounts < Stripe::StripeObject
                  class StatusDetail < Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    sig { returns(String) }
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    sig { returns(String) }
                    attr_reader :resolution
                  end
                  # Whether the Capability has been requested.
                  sig { returns(T::Boolean) }
                  attr_reader :requested
                  # The status of the Capability.
                  sig { returns(String) }
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  sig { returns(T::Array[StatusDetail]) }
                  attr_reader :status_details
                end
                # Can provision a bank-account like financial address (VBAN) to credit/debit a FinancialAccount.
                sig { returns(T.nilable(BankAccounts)) }
                attr_reader :bank_accounts
              end
              class HoldsCurrencies < Stripe::StripeObject
                class Gbp < Stripe::StripeObject
                  class StatusDetail < Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    sig { returns(String) }
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    sig { returns(String) }
                    attr_reader :resolution
                  end
                  # Whether the Capability has been requested.
                  sig { returns(T::Boolean) }
                  attr_reader :requested
                  # The status of the Capability.
                  sig { returns(String) }
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  sig { returns(T::Array[StatusDetail]) }
                  attr_reader :status_details
                end
                # Can hold storage-type funds on Stripe in GBP.
                sig { returns(T.nilable(Gbp)) }
                attr_reader :gbp
              end
              class InboundTransfers < Stripe::StripeObject
                class BankAccounts < Stripe::StripeObject
                  class StatusDetail < Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    sig { returns(String) }
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    sig { returns(String) }
                    attr_reader :resolution
                  end
                  # Whether the Capability has been requested.
                  sig { returns(T::Boolean) }
                  attr_reader :requested
                  # The status of the Capability.
                  sig { returns(String) }
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  sig { returns(T::Array[StatusDetail]) }
                  attr_reader :status_details
                end
                # Can pull funds from an external bank account, owned by yourself, to a FinancialAccount.
                sig { returns(T.nilable(BankAccounts)) }
                attr_reader :bank_accounts
              end
              class OutboundPayments < Stripe::StripeObject
                class BankAccounts < Stripe::StripeObject
                  class StatusDetail < Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    sig { returns(String) }
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    sig { returns(String) }
                    attr_reader :resolution
                  end
                  # Whether the Capability has been requested.
                  sig { returns(T::Boolean) }
                  attr_reader :requested
                  # The status of the Capability.
                  sig { returns(String) }
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  sig { returns(T::Array[StatusDetail]) }
                  attr_reader :status_details
                end
                class Cards < Stripe::StripeObject
                  class StatusDetail < Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    sig { returns(String) }
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    sig { returns(String) }
                    attr_reader :resolution
                  end
                  # Whether the Capability has been requested.
                  sig { returns(T::Boolean) }
                  attr_reader :requested
                  # The status of the Capability.
                  sig { returns(String) }
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  sig { returns(T::Array[StatusDetail]) }
                  attr_reader :status_details
                end
                class FinancialAccounts < Stripe::StripeObject
                  class StatusDetail < Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    sig { returns(String) }
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    sig { returns(String) }
                    attr_reader :resolution
                  end
                  # Whether the Capability has been requested.
                  sig { returns(T::Boolean) }
                  attr_reader :requested
                  # The status of the Capability.
                  sig { returns(String) }
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  sig { returns(T::Array[StatusDetail]) }
                  attr_reader :status_details
                end
                # Can send funds from a FinancialAccount to a bank account, owned by someone else.
                sig { returns(T.nilable(BankAccounts)) }
                attr_reader :bank_accounts
                # Can send funds from a FinancialAccount to a debit card, owned by someone else.
                sig { returns(T.nilable(Cards)) }
                attr_reader :cards
                # Can send funds from a FinancialAccount to another FinancialAccount, owned by someone else.
                sig { returns(T.nilable(FinancialAccounts)) }
                attr_reader :financial_accounts
              end
              class OutboundTransfers < Stripe::StripeObject
                class BankAccounts < Stripe::StripeObject
                  class StatusDetail < Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    sig { returns(String) }
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    sig { returns(String) }
                    attr_reader :resolution
                  end
                  # Whether the Capability has been requested.
                  sig { returns(T::Boolean) }
                  attr_reader :requested
                  # The status of the Capability.
                  sig { returns(String) }
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  sig { returns(T::Array[StatusDetail]) }
                  attr_reader :status_details
                end
                class FinancialAccounts < Stripe::StripeObject
                  class StatusDetail < Stripe::StripeObject
                    # Machine-readable code explaining the reason for the Capability to be in its current status.
                    sig { returns(String) }
                    attr_reader :code
                    # Machine-readable code explaining how to make the Capability active.
                    sig { returns(String) }
                    attr_reader :resolution
                  end
                  # Whether the Capability has been requested.
                  sig { returns(T::Boolean) }
                  attr_reader :requested
                  # The status of the Capability.
                  sig { returns(String) }
                  attr_reader :status
                  # Additional details regarding the status of the Capability. `status_details` will be empty if the Capability's status is `active`.
                  sig { returns(T::Array[StatusDetail]) }
                  attr_reader :status_details
                end
                # Can send funds from a FinancialAccount, to a bank account, owned by yourself.
                sig { returns(T.nilable(BankAccounts)) }
                attr_reader :bank_accounts
                # Can send funds from a FinancialAccount to another FinancialAccount, owned by yourself.
                sig { returns(T.nilable(FinancialAccounts)) }
                attr_reader :financial_accounts
              end
              # Can provision a financial address to credit/debit a FinancialAccount.
              sig { returns(T.nilable(FinancialAddresses)) }
              attr_reader :financial_addresses
              # Can hold storage-type funds on Stripe.
              sig { returns(T.nilable(HoldsCurrencies)) }
              attr_reader :holds_currencies
              # Can pull funds from an external source, owned by yourself, to a FinancialAccount.
              sig { returns(T.nilable(InboundTransfers)) }
              attr_reader :inbound_transfers
              # Can send funds from a FinancialAccount to a destination owned by someone else.
              sig { returns(T.nilable(OutboundPayments)) }
              attr_reader :outbound_payments
              # Can send funds from a FinancialAccount to a destination owned by yourself.
              sig { returns(T.nilable(OutboundTransfers)) }
              attr_reader :outbound_transfers
            end
            # Capabilities that have been requested on the Storer Configuration.
            sig { returns(T.nilable(Capabilities)) }
            attr_reader :capabilities
          end
          # The Customer Configuration allows the Account to be used in inbound payment flows.
          sig { returns(T.nilable(Customer)) }
          attr_reader :customer
          # The Merchant configuration allows the Account to act as a connected account and collect payments facilitated by a Connect platform. You can add this configuration to your connected accounts only if you’ve completed onboarding as a Connect platform.
          sig { returns(T.nilable(Merchant)) }
          attr_reader :merchant
          # The Recipient Configuration allows the Account to receive funds.
          sig { returns(T.nilable(Recipient)) }
          attr_reader :recipient
          # The Storer Configuration allows the Account to store and move funds using stored-value FinancialAccounts.
          sig { returns(T.nilable(Storer)) }
          attr_reader :storer
        end
        class Defaults < Stripe::StripeObject
          class Responsibilities < Stripe::StripeObject
            # A value indicating the responsible payer of a bundle of Stripe fees for pricing-control eligible products on this Account.
            sig { returns(String) }
            attr_reader :fees_collector
            # A value indicating who is responsible for losses when this Account can’t pay back negative balances from payments.
            sig { returns(String) }
            attr_reader :losses_collector
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          attr_reader :currency
          # The Account's preferred locales (languages), ordered by preference.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :locales
          # Default responsibilities held by either Stripe or the platform.
          sig { returns(T.nilable(Responsibilities)) }
          attr_reader :responsibilities
        end
        class Identity < Stripe::StripeObject
          class Attestations < Stripe::StripeObject
            class DirectorshipDeclaration < Stripe::StripeObject
              # The time marking when the director attestation was made. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
              sig { returns(T.nilable(String)) }
              attr_reader :date
              # The IP address from which the director attestation was made.
              sig { returns(T.nilable(String)) }
              attr_reader :ip
              # The user agent of the browser from which the director attestation was made.
              sig { returns(T.nilable(String)) }
              attr_reader :user_agent
            end
            class OwnershipDeclaration < Stripe::StripeObject
              # The time marking when the beneficial owner attestation was made. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
              sig { returns(T.nilable(String)) }
              attr_reader :date
              # The IP address from which the beneficial owner attestation was made.
              sig { returns(T.nilable(String)) }
              attr_reader :ip
              # The user agent of the browser from which the beneficial owner attestation was made.
              sig { returns(T.nilable(String)) }
              attr_reader :user_agent
            end
            class PersonsProvided < Stripe::StripeObject
              # Whether the company’s directors have been provided. Set this Boolean to true after creating all the company’s directors with the [Persons API](https://docs.stripe.com/api/v2/core/accounts/createperson).
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :directors
              # Whether the company’s executives have been provided. Set this Boolean to true after creating all the company’s executives with the [Persons API](https://docs.stripe.com/api/v2/core/accounts/createperson).
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :executives
              # Whether the company’s owners have been provided. Set this Boolean to true after creating all the company’s owners with the [Persons API](https://docs.stripe.com/api/v2/core/accounts/createperson).
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :owners
              # Reason for why the company is exempt from providing ownership information.
              sig { returns(T.nilable(String)) }
              attr_reader :ownership_exemption_reason
            end
            class TermsOfService < Stripe::StripeObject
              class Account < Stripe::StripeObject
                # The time when the Account's representative accepted the terms of service. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
                sig { returns(T.nilable(String)) }
                attr_reader :date
                # The IP address from which the Account's representative accepted the terms of service.
                sig { returns(T.nilable(String)) }
                attr_reader :ip
                # The user agent of the browser from which the Account's representative accepted the terms of service.
                sig { returns(T.nilable(String)) }
                attr_reader :user_agent
              end
              # Details on the Account's acceptance of the [Stripe Services Agreement](https://docs.stripe.com/connect/updating-accounts#tos-acceptance).
              sig { returns(T.nilable(Account)) }
              attr_reader :account
            end
            # This hash is used to attest that the directors information provided to Stripe is both current and correct.
            sig { returns(T.nilable(DirectorshipDeclaration)) }
            attr_reader :directorship_declaration
            # This hash is used to attest that the beneficial owner information provided to Stripe is both current and correct.
            sig { returns(T.nilable(OwnershipDeclaration)) }
            attr_reader :ownership_declaration
            # Attestation that all Persons with a specific Relationship value have been provided.
            sig { returns(T.nilable(PersonsProvided)) }
            attr_reader :persons_provided
            # Attestations of accepted terms of service agreements.
            sig { returns(T.nilable(TermsOfService)) }
            attr_reader :terms_of_service
          end
          class BusinessDetails < Stripe::StripeObject
            class Address < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              attr_reader :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              attr_reader :country
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              attr_reader :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              attr_reader :line2
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              attr_reader :postal_code
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              attr_reader :state
              # Town or cho-me.
              sig { returns(T.nilable(String)) }
              attr_reader :town
            end
            class AnnualRevenue < Stripe::StripeObject
              # A non-negative integer representing the amount in the smallest currency unit.
              sig { returns(T.nilable(Stripe::V2::Amount)) }
              attr_reader :amount
              # The close-out date of the preceding fiscal year in ISO 8601 format. E.g. 2023-12-31 for the 31st of December, 2023.
              sig { returns(T.nilable(String)) }
              attr_reader :fiscal_year_end
            end
            class Documents < Stripe::StripeObject
              class BankAccountOwnershipVerification < Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_reader :type
              end
              class CompanyLicense < Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_reader :type
              end
              class CompanyMemorandumOfAssociation < Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_reader :type
              end
              class CompanyMinisterialDecree < Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_reader :type
              end
              class CompanyRegistrationVerification < Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_reader :type
              end
              class CompanyTaxIdVerification < Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_reader :type
              end
              class PrimaryVerification < Stripe::StripeObject
                class FrontBack < Stripe::StripeObject
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(T.nilable(String)) }
                  attr_reader :back
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(String) }
                  attr_reader :front
                end
                # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens for the front and back of the verification document.
                sig { returns(FrontBack) }
                attr_reader :front_back
                # The format of the verification document. Currently supports `front_back` only.
                sig { returns(String) }
                attr_reader :type
              end
              class ProofOfAddress < Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_reader :type
              end
              class ProofOfRegistration < Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_reader :type
              end
              class ProofOfUltimateBeneficialOwnership < Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_reader :type
              end
              # One or more documents that support the Bank account ownership verification requirement. Must be a document associated with the account’s primary active bank account that displays the last 4 digits of the account number, either a statement or a check.
              sig { returns(T.nilable(BankAccountOwnershipVerification)) }
              attr_reader :bank_account_ownership_verification
              # One or more documents that demonstrate proof of a company’s license to operate.
              sig { returns(T.nilable(CompanyLicense)) }
              attr_reader :company_license
              # One or more documents showing the company’s Memorandum of Association.
              sig { returns(T.nilable(CompanyMemorandumOfAssociation)) }
              attr_reader :company_memorandum_of_association
              # Certain countries only: One or more documents showing the ministerial decree legalizing the company’s establishment.
              sig { returns(T.nilable(CompanyMinisterialDecree)) }
              attr_reader :company_ministerial_decree
              # One or more documents that demonstrate proof of a company’s registration with the appropriate local authorities.
              sig { returns(T.nilable(CompanyRegistrationVerification)) }
              attr_reader :company_registration_verification
              # One or more documents that demonstrate proof of a company’s tax ID.
              sig { returns(T.nilable(CompanyTaxIdVerification)) }
              attr_reader :company_tax_id_verification
              # A document verifying the business.
              sig { returns(T.nilable(PrimaryVerification)) }
              attr_reader :primary_verification
              # One or more documents that demonstrate proof of address.
              sig { returns(T.nilable(ProofOfAddress)) }
              attr_reader :proof_of_address
              # One or more documents showing the company’s proof of registration with the national business registry.
              sig { returns(T.nilable(ProofOfRegistration)) }
              attr_reader :proof_of_registration
              # One or more documents that demonstrate proof of ultimate beneficial ownership.
              sig { returns(T.nilable(ProofOfUltimateBeneficialOwnership)) }
              attr_reader :proof_of_ultimate_beneficial_ownership
            end
            class IdNumber < Stripe::StripeObject
              # The registrar of the ID number (Only valid for DE ID number types).
              sig { returns(T.nilable(String)) }
              attr_reader :registrar
              # Open Enum. The ID number type of a business entity.
              sig { returns(String) }
              attr_reader :type
            end
            class MonthlyEstimatedRevenue < Stripe::StripeObject
              # A non-negative integer representing the amount in the smallest currency unit.
              sig { returns(T.nilable(Stripe::V2::Amount)) }
              attr_reader :amount
            end
            class ScriptAddresses < Stripe::StripeObject
              class Kana < Stripe::StripeObject
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(String)) }
                attr_reader :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(String)) }
                attr_reader :country
                # Address line 1 (e.g., street, PO Box, or company name).
                sig { returns(T.nilable(String)) }
                attr_reader :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                sig { returns(T.nilable(String)) }
                attr_reader :line2
                # ZIP or postal code.
                sig { returns(T.nilable(String)) }
                attr_reader :postal_code
                # State, county, province, or region.
                sig { returns(T.nilable(String)) }
                attr_reader :state
                # Town or cho-me.
                sig { returns(T.nilable(String)) }
                attr_reader :town
              end
              class Kanji < Stripe::StripeObject
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(String)) }
                attr_reader :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(String)) }
                attr_reader :country
                # Address line 1 (e.g., street, PO Box, or company name).
                sig { returns(T.nilable(String)) }
                attr_reader :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                sig { returns(T.nilable(String)) }
                attr_reader :line2
                # ZIP or postal code.
                sig { returns(T.nilable(String)) }
                attr_reader :postal_code
                # State, county, province, or region.
                sig { returns(T.nilable(String)) }
                attr_reader :state
                # Town or cho-me.
                sig { returns(T.nilable(String)) }
                attr_reader :town
              end
              # Kana Address.
              sig { returns(T.nilable(Kana)) }
              attr_reader :kana
              # Kanji Address.
              sig { returns(T.nilable(Kanji)) }
              attr_reader :kanji
            end
            class ScriptNames < Stripe::StripeObject
              class Kana < Stripe::StripeObject
                # Registered name of the business.
                sig { returns(T.nilable(String)) }
                attr_reader :registered_name
              end
              class Kanji < Stripe::StripeObject
                # Registered name of the business.
                sig { returns(T.nilable(String)) }
                attr_reader :registered_name
              end
              # Kana name.
              sig { returns(T.nilable(Kana)) }
              attr_reader :kana
              # Kanji name.
              sig { returns(T.nilable(Kanji)) }
              attr_reader :kanji
            end
            # The company’s primary address.
            sig { returns(T.nilable(Address)) }
            attr_reader :address
            # The business gross annual revenue for its preceding fiscal year.
            sig { returns(T.nilable(AnnualRevenue)) }
            attr_reader :annual_revenue
            # Documents that may be submitted to satisfy various informational requests.
            sig { returns(T.nilable(Documents)) }
            attr_reader :documents
            # The company’s legal name.
            sig { returns(T.nilable(String)) }
            attr_reader :doing_business_as
            # An estimated upper bound of employees, contractors, vendors, etc. currently working for the business.
            sig { returns(T.nilable(Integer)) }
            attr_reader :estimated_worker_count
            # The provided ID numbers of a business entity.
            sig { returns(T.nilable(T::Array[IdNumber])) }
            attr_reader :id_numbers
            # An estimate of the monthly revenue of the business.
            sig { returns(T.nilable(MonthlyEstimatedRevenue)) }
            attr_reader :monthly_estimated_revenue
            # The company’s phone number (used for verification).
            sig { returns(T.nilable(String)) }
            attr_reader :phone
            # Internal-only description of the product sold or service provided by the business. It’s used by Stripe for risk and underwriting purposes.
            sig { returns(T.nilable(String)) }
            attr_reader :product_description
            # The business legal name.
            sig { returns(T.nilable(String)) }
            attr_reader :registered_name
            # The business registration address of the business entity in non latin script.
            sig { returns(T.nilable(ScriptAddresses)) }
            attr_reader :script_addresses
            # The business legal name in non latin script.
            sig { returns(T.nilable(ScriptNames)) }
            attr_reader :script_names
            # The category identifying the legal structure of the business.
            sig { returns(T.nilable(String)) }
            attr_reader :structure
            # The business's publicly available website.
            sig { returns(T.nilable(String)) }
            attr_reader :url
          end
          class Individual < Stripe::StripeObject
            class AdditionalAddress < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              attr_reader :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              attr_reader :country
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              attr_reader :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              attr_reader :line2
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              attr_reader :postal_code
              # Purpose of additional address.
              sig { returns(String) }
              attr_reader :purpose
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              attr_reader :state
              # Town or cho-me.
              sig { returns(T.nilable(String)) }
              attr_reader :town
            end
            class AdditionalName < Stripe::StripeObject
              # The individual's full name.
              sig { returns(T.nilable(String)) }
              attr_reader :full_name
              # The individual's first or given name.
              sig { returns(T.nilable(String)) }
              attr_reader :given_name
              # The purpose or type of the additional name.
              sig { returns(String) }
              attr_reader :purpose
              # The individual's last or family name.
              sig { returns(T.nilable(String)) }
              attr_reader :surname
            end
            class AdditionalTermsOfService < Stripe::StripeObject
              class Account < Stripe::StripeObject
                # The time when the Account's representative accepted the terms of service. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
                sig { returns(T.nilable(String)) }
                attr_reader :date
                # The IP address from which the Account's representative accepted the terms of service.
                sig { returns(T.nilable(String)) }
                attr_reader :ip
                # The user agent of the browser from which the Account's representative accepted the terms of service.
                sig { returns(T.nilable(String)) }
                attr_reader :user_agent
              end
              # Stripe terms of service agreement.
              sig { returns(T.nilable(Account)) }
              attr_reader :account
            end
            class Address < Stripe::StripeObject
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              attr_reader :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              attr_reader :country
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              attr_reader :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              attr_reader :line2
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              attr_reader :postal_code
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              attr_reader :state
              # Town or cho-me.
              sig { returns(T.nilable(String)) }
              attr_reader :town
            end
            class DateOfBirth < Stripe::StripeObject
              # The day of birth, between 1 and 31.
              sig { returns(Integer) }
              attr_reader :day
              # The month of birth, between 1 and 12.
              sig { returns(Integer) }
              attr_reader :month
              # The four-digit year of birth.
              sig { returns(Integer) }
              attr_reader :year
            end
            class Documents < Stripe::StripeObject
              class CompanyAuthorization < Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_reader :type
              end
              class Passport < Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_reader :type
              end
              class PrimaryVerification < Stripe::StripeObject
                class FrontBack < Stripe::StripeObject
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(T.nilable(String)) }
                  attr_reader :back
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(String) }
                  attr_reader :front
                end
                # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens for the front and back of the verification document.
                sig { returns(FrontBack) }
                attr_reader :front_back
                # The format of the verification document. Currently supports `front_back` only.
                sig { returns(String) }
                attr_reader :type
              end
              class SecondaryVerification < Stripe::StripeObject
                class FrontBack < Stripe::StripeObject
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(T.nilable(String)) }
                  attr_reader :back
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(String) }
                  attr_reader :front
                end
                # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens for the front and back of the verification document.
                sig { returns(FrontBack) }
                attr_reader :front_back
                # The format of the verification document. Currently supports `front_back` only.
                sig { returns(String) }
                attr_reader :type
              end
              class Visa < Stripe::StripeObject
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_reader :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_reader :type
              end
              # One or more documents that demonstrate proof that this person is authorized to represent the company.
              sig { returns(T.nilable(CompanyAuthorization)) }
              attr_reader :company_authorization
              # One or more documents showing the person’s passport page with photo and personal data.
              sig { returns(T.nilable(Passport)) }
              attr_reader :passport
              # An identifying document showing the person's name, either a passport or local ID card.
              sig { returns(T.nilable(PrimaryVerification)) }
              attr_reader :primary_verification
              # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
              sig { returns(T.nilable(SecondaryVerification)) }
              attr_reader :secondary_verification
              # One or more documents showing the person’s visa required for living in the country where they are residing.
              sig { returns(T.nilable(Visa)) }
              attr_reader :visa
            end
            class IdNumber < Stripe::StripeObject
              # The ID number type of an individual.
              sig { returns(String) }
              attr_reader :type
            end
            class Relationship < Stripe::StripeObject
              # Whether the individual is an authorizer of the Account’s legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :authorizer
              # Whether the individual is a director of the Account’s legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :director
              # Whether the individual has significant responsibility to control, manage, or direct the organization.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :executive
              # Whether the individual is the legal guardian of the Account’s representative.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :legal_guardian
              # Whether the individual is an owner of the Account’s legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :owner
              # The percent owned by the individual of the Account’s legal entity.
              sig { returns(T.nilable(String)) }
              attr_reader :percent_ownership
              # Whether the individual is authorized as the primary representative of the Account. This is the person nominated by the business to provide information about themselves, and general information about the account. There can only be one representative at any given time. At the time the account is created, this person should be set to the person responsible for opening the account.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :representative
              # The individual's title (e.g., CEO, Support Engineer).
              sig { returns(T.nilable(String)) }
              attr_reader :title
            end
            class ScriptAddresses < Stripe::StripeObject
              class Kana < Stripe::StripeObject
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(String)) }
                attr_reader :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(String)) }
                attr_reader :country
                # Address line 1 (e.g., street, PO Box, or company name).
                sig { returns(T.nilable(String)) }
                attr_reader :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                sig { returns(T.nilable(String)) }
                attr_reader :line2
                # ZIP or postal code.
                sig { returns(T.nilable(String)) }
                attr_reader :postal_code
                # State, county, province, or region.
                sig { returns(T.nilable(String)) }
                attr_reader :state
                # Town or cho-me.
                sig { returns(T.nilable(String)) }
                attr_reader :town
              end
              class Kanji < Stripe::StripeObject
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(String)) }
                attr_reader :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(String)) }
                attr_reader :country
                # Address line 1 (e.g., street, PO Box, or company name).
                sig { returns(T.nilable(String)) }
                attr_reader :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                sig { returns(T.nilable(String)) }
                attr_reader :line2
                # ZIP or postal code.
                sig { returns(T.nilable(String)) }
                attr_reader :postal_code
                # State, county, province, or region.
                sig { returns(T.nilable(String)) }
                attr_reader :state
                # Town or cho-me.
                sig { returns(T.nilable(String)) }
                attr_reader :town
              end
              # Kana Address.
              sig { returns(T.nilable(Kana)) }
              attr_reader :kana
              # Kanji Address.
              sig { returns(T.nilable(Kanji)) }
              attr_reader :kanji
            end
            class ScriptNames < Stripe::StripeObject
              class Kana < Stripe::StripeObject
                # The person's first or given name.
                sig { returns(T.nilable(String)) }
                attr_reader :given_name
                # The person's last or family name.
                sig { returns(T.nilable(String)) }
                attr_reader :surname
              end
              class Kanji < Stripe::StripeObject
                # The person's first or given name.
                sig { returns(T.nilable(String)) }
                attr_reader :given_name
                # The person's last or family name.
                sig { returns(T.nilable(String)) }
                attr_reader :surname
              end
              # Persons name in kana script.
              sig { returns(T.nilable(Kana)) }
              attr_reader :kana
              # Persons name in kanji script.
              sig { returns(T.nilable(Kanji)) }
              attr_reader :kanji
            end
            # The account ID which the individual belongs to.
            sig { returns(String) }
            attr_reader :account
            # Additional addresses associated with the individual.
            sig { returns(T.nilable(T::Array[AdditionalAddress])) }
            attr_reader :additional_addresses
            # Additional names (e.g. aliases) associated with the individual.
            sig { returns(T.nilable(T::Array[AdditionalName])) }
            attr_reader :additional_names
            # Terms of service acceptances.
            sig { returns(T.nilable(AdditionalTermsOfService)) }
            attr_reader :additional_terms_of_service
            # The individual's residential address.
            sig { returns(T.nilable(Address)) }
            attr_reader :address
            # Time at which the object was created. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
            sig { returns(String) }
            attr_reader :created
            # The individual's date of birth.
            sig { returns(T.nilable(DateOfBirth)) }
            attr_reader :date_of_birth
            # Documents that may be submitted to satisfy various informational requests.
            sig { returns(T.nilable(Documents)) }
            attr_reader :documents
            # The individual's email address.
            sig { returns(T.nilable(String)) }
            attr_reader :email
            # The individual's first name.
            sig { returns(T.nilable(String)) }
            attr_reader :given_name
            # Unique identifier for the object.
            sig { returns(String) }
            attr_reader :id
            # The identification numbers (e.g., SSN) associated with the individual.
            sig { returns(T.nilable(T::Array[IdNumber])) }
            attr_reader :id_numbers
            # The individual's gender (International regulations require either "male” or "female").
            sig { returns(T.nilable(String)) }
            attr_reader :legal_gender
            # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_reader :metadata
            # The countries where the individual is a national. Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :nationalities
            # String representing the object's type. Objects of the same type share the same value.
            sig { returns(String) }
            attr_reader :object
            # The individual's phone number.
            sig { returns(T.nilable(String)) }
            attr_reader :phone
            # Indicates if the individual or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
            sig { returns(T.nilable(String)) }
            attr_reader :political_exposure
            # The relationship that this individual has with the Account's identity.
            sig { returns(T.nilable(Relationship)) }
            attr_reader :relationship
            # The script addresses (e.g., non-Latin characters) associated with the individual.
            sig { returns(T.nilable(ScriptAddresses)) }
            attr_reader :script_addresses
            # The script names (e.g. non-Latin characters) associated with the individual.
            sig { returns(T.nilable(ScriptNames)) }
            attr_reader :script_names
            # The individual's last name.
            sig { returns(T.nilable(String)) }
            attr_reader :surname
            # Time at which the object was last updated.
            sig { returns(String) }
            attr_reader :updated
          end
          # Attestations from the identity's key people, e.g. owners, executives, directors.
          sig { returns(T.nilable(Attestations)) }
          attr_reader :attestations
          # Information about the company or business.
          sig { returns(T.nilable(BusinessDetails)) }
          attr_reader :business_details
          # The country in which the account holder resides, or in which the business is legally established. This should be an [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code.
          sig { returns(T.nilable(String)) }
          attr_reader :country
          # The entity type.
          sig { returns(T.nilable(String)) }
          attr_reader :entity_type
          # Information about the individual represented by the Account. This property is `null` unless `entity_type` is set to `individual`.
          sig { returns(T.nilable(Individual)) }
          attr_reader :individual
        end
        class Requirements < Stripe::StripeObject
          class Entry < Stripe::StripeObject
            class Error < Stripe::StripeObject
              # Machine-readable code describing the error.
              sig { returns(String) }
              attr_reader :code
              # Human-readable description of the error.
              sig { returns(String) }
              attr_reader :description
            end
            class Impact < Stripe::StripeObject
              class RestrictsCapability < Stripe::StripeObject
                class Deadline < Stripe::StripeObject
                  # The current status of the requirement's impact.
                  sig { returns(String) }
                  attr_reader :status
                end
                # The name of the Capability which will be restricted.
                sig { returns(String) }
                attr_reader :capability
                # The configuration which specifies the Capability which will be restricted.
                sig { returns(String) }
                attr_reader :configuration
                # Details about when in the account lifecycle the requirement must be collected by the avoid the Capability restriction.
                sig { returns(Deadline) }
                attr_reader :deadline
              end
              # The Capabilities that will be restricted if the requirement is not collected and satisfactory to Stripe.
              sig { returns(T.nilable(T::Array[RestrictsCapability])) }
              attr_reader :restricts_capabilities
            end
            class MinimumDeadline < Stripe::StripeObject
              # The current status of the requirement's impact.
              sig { returns(String) }
              attr_reader :status
            end
            class Reference < Stripe::StripeObject
              # If `inquiry` is the type, the inquiry token.
              sig { returns(T.nilable(String)) }
              attr_reader :inquiry
              # If `resource` is the type, the resource token.
              sig { returns(T.nilable(String)) }
              attr_reader :resource
              # The type of the reference. An additional hash is included with a name matching the type. It contains additional information specific to the type.
              sig { returns(String) }
              attr_reader :type
            end
            class RequestedReason < Stripe::StripeObject
              # Machine-readable description of Stripe's reason for collecting the requirement.
              sig { returns(String) }
              attr_reader :code
            end
            # Whether the responsibility is with the integrator or with Stripe (to review info, to wait for some condition, etc.) to action the requirement.
            sig { returns(String) }
            attr_reader :awaiting_action_from
            # Machine-readable string describing the requirement.
            sig { returns(String) }
            attr_reader :description
            # Descriptions of why the requirement must be collected, or why the collected information isn't satisfactory to Stripe.
            sig { returns(T::Array[Error]) }
            attr_reader :errors
            # A hash describing the impact of not collecting the requirement, or Stripe not being able to verify the collected information.
            sig { returns(Impact) }
            attr_reader :impact
            # The soonest point when the account will be impacted by not providing the requirement.
            sig { returns(MinimumDeadline) }
            attr_reader :minimum_deadline
            # A reference to the location of the requirement.
            sig { returns(T.nilable(Reference)) }
            attr_reader :reference
            # A list of reasons why Stripe is collecting the requirement.
            sig { returns(T::Array[RequestedReason]) }
            attr_reader :requested_reasons
          end
          class Summary < Stripe::StripeObject
            class MinimumDeadline < Stripe::StripeObject
              # The current strictest status of all requirements on the Account.
              sig { returns(String) }
              attr_reader :status
              # The soonest RFC3339 date & time UTC value a requirement can impact the Account.
              sig { returns(T.nilable(String)) }
              attr_reader :time
            end
            # The soonest date and time a requirement on the Account will become `past due`. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: `2022-09-18T13:22:18.123Z`.
            sig { returns(T.nilable(MinimumDeadline)) }
            attr_reader :minimum_deadline
          end
          # A value indicating responsibility for collecting requirements on this account.
          sig { returns(String) }
          attr_reader :collector
          # A list of requirements for the Account.
          sig { returns(T.nilable(T::Array[Entry])) }
          attr_reader :entries
          # An object containing an overview of requirements for the Account.
          sig { returns(T.nilable(Summary)) }
          attr_reader :summary
        end
        # Filter only accounts that have all of the configurations specified. If omitted, returns all accounts regardless of which configurations they have.
        sig { returns(T::Array[String]) }
        attr_reader :applied_configurations
        # An Account Configuration which allows the Account to take on a key persona across Stripe products.
        sig { returns(T.nilable(Configuration)) }
        attr_reader :configuration
        # The default contact email address for the Account. Required when configuring the account as a merchant or recipient.
        sig { returns(T.nilable(String)) }
        attr_reader :contact_email
        # Time at which the object was created. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        attr_reader :created
        # A value indicating the Stripe dashboard this Account has access to. This will depend on which configurations are enabled for this account.
        sig { returns(T.nilable(String)) }
        attr_reader :dashboard
        # Default values to be used on Account Configurations.
        sig { returns(T.nilable(Defaults)) }
        attr_reader :defaults
        # A descriptive name for the Account. This name will be surfaced in the Stripe Dashboard and on any invoices sent to the Account.
        sig { returns(T.nilable(String)) }
        attr_reader :display_name
        # Unique identifier for the Account.
        sig { returns(String) }
        attr_reader :id
        # Information about the company, individual, and business represented by the Account.
        sig { returns(T.nilable(Identity)) }
        attr_reader :identity
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # Information about the requirements for the Account, including what information needs to be collected, and by when.
        sig { returns(T.nilable(Requirements)) }
        attr_reader :requirements
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end