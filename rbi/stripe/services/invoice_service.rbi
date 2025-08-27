# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class InvoiceService < StripeService
    attr_reader :line_items
    class DeleteParams < Stripe::RequestParams; end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        class Liability < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(T.nilable(String)) }
          attr_accessor :account
          # Type of the account referenced in the request.
          sig { returns(String) }
          attr_accessor :type
          sig { params(account: T.nilable(String), type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # Whether Stripe automatically computes tax on this invoice. Note that incompatible invoice items (invoice items with manually specified [tax rates](https://stripe.com/docs/api/tax_rates), negative amounts, or `tax_behavior=unspecified`) cannot be added to automatic tax invoices.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        sig { returns(T.nilable(::Stripe::InvoiceService::UpdateParams::AutomaticTax::Liability)) }
        attr_accessor :liability
        sig {
          params(enabled: T::Boolean, liability: T.nilable(::Stripe::InvoiceService::UpdateParams::AutomaticTax::Liability)).void
         }
        def initialize(enabled: nil, liability: nil); end
      end
      class CustomField < Stripe::RequestParams
        # The name of the custom field. This may be up to 40 characters.
        sig { returns(String) }
        attr_accessor :name
        # The value of the custom field. This may be up to 140 characters.
        sig { returns(String) }
        attr_accessor :value
        sig { params(name: String, value: String).void }
        def initialize(name: nil, value: nil); end
      end
      class Discount < Stripe::RequestParams
        # ID of the coupon to create a new discount for.
        sig { returns(T.nilable(String)) }
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(T.nilable(String)) }
        attr_accessor :discount
        # ID of the promotion code to create a new discount for.
        sig { returns(T.nilable(String)) }
        attr_accessor :promotion_code
        sig {
          params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
         }
        def initialize(coupon: nil, discount: nil, promotion_code: nil); end
      end
      class Issuer < Stripe::RequestParams
        # The connected account being referenced when `type` is `account`.
        sig { returns(T.nilable(String)) }
        attr_accessor :account
        # Type of the account referenced in the request.
        sig { returns(String) }
        attr_accessor :type
        sig { params(account: T.nilable(String), type: String).void }
        def initialize(account: nil, type: nil); end
      end
      class PaymentSettings < Stripe::RequestParams
        class PaymentMethodOptions < Stripe::RequestParams
          class AcssDebit < Stripe::RequestParams
            class MandateOptions < Stripe::RequestParams
              # Transaction type of the mandate.
              sig { returns(T.nilable(String)) }
              attr_accessor :transaction_type
              sig { params(transaction_type: T.nilable(String)).void }
              def initialize(transaction_type: nil); end
            end
            # Additional fields for Mandate creation
            sig {
              returns(T.nilable(::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::AcssDebit::MandateOptions))
             }
            attr_accessor :mandate_options
            # Verification method for the intent
            sig { returns(T.nilable(String)) }
            attr_accessor :verification_method
            sig {
              params(mandate_options: T.nilable(::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::AcssDebit::MandateOptions), verification_method: T.nilable(String)).void
             }
            def initialize(mandate_options: nil, verification_method: nil); end
          end
          class Bancontact < Stripe::RequestParams
            # Preferred language of the Bancontact authorization page that the customer is redirected to.
            sig { returns(T.nilable(String)) }
            attr_accessor :preferred_language
            sig { params(preferred_language: T.nilable(String)).void }
            def initialize(preferred_language: nil); end
          end
          class Card < Stripe::RequestParams
            class Installments < Stripe::RequestParams
              class Plan < Stripe::RequestParams
                # For `fixed_count` installment plans, this is required. It represents the number of installment payments your customer will make to their credit card.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :count
                # For `fixed_count` installment plans, this is required. It represents the interval between installment payments your customer will make to their credit card.
                # One of `month`.
                sig { returns(T.nilable(String)) }
                attr_accessor :interval
                # Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(count: T.nilable(Integer), interval: T.nilable(String), type: String).void
                 }
                def initialize(count: nil, interval: nil, type: nil); end
              end
              # Setting to true enables installments for this invoice.
              # Setting to false will prevent any selected plan from applying to a payment.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :enabled
              # The selected installment plan to use for this invoice.
              sig {
                returns(T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::Card::Installments::Plan)))
               }
              attr_accessor :plan
              sig {
                params(enabled: T.nilable(T::Boolean), plan: T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::Card::Installments::Plan))).void
               }
              def initialize(enabled: nil, plan: nil); end
            end
            # Installment configuration for payments attempted on this invoice.
            #
            # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
            sig {
              returns(T.nilable(::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::Card::Installments))
             }
            attr_accessor :installments
            # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
            sig { returns(T.nilable(String)) }
            attr_accessor :request_three_d_secure
            sig {
              params(installments: T.nilable(::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::Card::Installments), request_three_d_secure: T.nilable(String)).void
             }
            def initialize(installments: nil, request_three_d_secure: nil); end
          end
          class CustomerBalance < Stripe::RequestParams
            class BankTransfer < Stripe::RequestParams
              class EuBankTransfer < Stripe::RequestParams
                # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
                sig { returns(String) }
                attr_accessor :country
                sig { params(country: String).void }
                def initialize(country: nil); end
              end
              # Configuration for eu_bank_transfer funding type.
              sig {
                returns(T.nilable(::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
               }
              attr_accessor :eu_bank_transfer
              # The bank transfer type that can be used for funding. Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
              sig { returns(T.nilable(String)) }
              attr_accessor :type
              sig {
                params(eu_bank_transfer: T.nilable(::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), type: T.nilable(String)).void
               }
              def initialize(eu_bank_transfer: nil, type: nil); end
            end
            # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
            sig {
              returns(T.nilable(::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance::BankTransfer))
             }
            attr_accessor :bank_transfer
            # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
            sig { returns(T.nilable(String)) }
            attr_accessor :funding_type
            sig {
              params(bank_transfer: T.nilable(::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String)).void
             }
            def initialize(bank_transfer: nil, funding_type: nil); end
          end
          class Konbini < Stripe::RequestParams; end
          class SepaDebit < Stripe::RequestParams; end
          class UsBankAccount < Stripe::RequestParams
            class FinancialConnections < Stripe::RequestParams
              class Filters < Stripe::RequestParams
                # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
                sig { returns(T.nilable(T::Array[String])) }
                attr_accessor :account_subcategories
                sig { params(account_subcategories: T.nilable(T::Array[String])).void }
                def initialize(account_subcategories: nil); end
              end
              # Provide filters for the linked accounts that the customer can select for the payment method.
              sig {
                returns(T.nilable(::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
               }
              attr_accessor :filters
              # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :permissions
              # List of data features that you would like to retrieve upon account creation.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :prefetch
              sig {
                params(filters: T.nilable(::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String])).void
               }
              def initialize(filters: nil, permissions: nil, prefetch: nil); end
            end
            # Additional fields for Financial Connections Session creation
            sig {
              returns(T.nilable(::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections))
             }
            attr_accessor :financial_connections
            # Verification method for the intent
            sig { returns(T.nilable(String)) }
            attr_accessor :verification_method
            sig {
              params(financial_connections: T.nilable(::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections), verification_method: T.nilable(String)).void
             }
            def initialize(financial_connections: nil, verification_method: nil); end
          end
          # If paying by `acss_debit`, this sub-hash contains details about the Canadian pre-authorized debit payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::AcssDebit)))
           }
          attr_accessor :acss_debit
          # If paying by `bancontact`, this sub-hash contains details about the Bancontact payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::Bancontact)))
           }
          attr_accessor :bancontact
          # If paying by `card`, this sub-hash contains details about the Card payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::Card)))
           }
          attr_accessor :card
          # If paying by `customer_balance`, this sub-hash contains details about the Bank transfer payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance)))
           }
          attr_accessor :customer_balance
          # If paying by `konbini`, this sub-hash contains details about the Konbini payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::Konbini)))
           }
          attr_accessor :konbini
          # If paying by `sepa_debit`, this sub-hash contains details about the SEPA Direct Debit payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::SepaDebit)))
           }
          attr_accessor :sepa_debit
          # If paying by `us_bank_account`, this sub-hash contains details about the ACH direct debit payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount)))
           }
          attr_accessor :us_bank_account
          sig {
            params(acss_debit: T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::AcssDebit)), bancontact: T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::Bancontact)), card: T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::Card)), customer_balance: T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance)), konbini: T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::Konbini)), sepa_debit: T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::SepaDebit)), us_bank_account: T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount))).void
           }
          def initialize(
            acss_debit: nil,
            bancontact: nil,
            card: nil,
            customer_balance: nil,
            konbini: nil,
            sepa_debit: nil,
            us_bank_account: nil
          ); end
        end
        # ID of the mandate to be used for this invoice. It must correspond to the payment method used to pay the invoice, including the invoice's default_payment_method or default_source, if set.
        sig { returns(T.nilable(String)) }
        attr_accessor :default_mandate
        # Payment-method-specific configuration to provide to the invoice’s PaymentIntent.
        sig {
          returns(T.nilable(::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions))
         }
        attr_accessor :payment_method_options
        # The list of payment method types (e.g. card) to provide to the invoice’s PaymentIntent. If not set, Stripe attempts to automatically determine the types to use by looking at the invoice’s default payment method, the subscription’s default payment method, the customer’s default payment method, and your [invoice template settings](https://dashboard.stripe.com/settings/billing/invoice). Should not be specified with payment_method_configuration
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        attr_accessor :payment_method_types
        sig {
          params(default_mandate: T.nilable(String), payment_method_options: T.nilable(::Stripe::InvoiceService::UpdateParams::PaymentSettings::PaymentMethodOptions), payment_method_types: T.nilable(T.any(String, T::Array[String]))).void
         }
        def initialize(
          default_mandate: nil,
          payment_method_options: nil,
          payment_method_types: nil
        ); end
      end
      class Rendering < Stripe::RequestParams
        class Pdf < Stripe::RequestParams
          # Page size for invoice PDF. Can be set to `a4`, `letter`, or `auto`.
          #  If set to `auto`, invoice PDF page size defaults to `a4` for customers with
          #  Japanese locale and `letter` for customers with other locales.
          sig { returns(T.nilable(String)) }
          attr_accessor :page_size
          sig { params(page_size: T.nilable(String)).void }
          def initialize(page_size: nil); end
        end
        # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs. One of `exclude_tax` or `include_inclusive_tax`. `include_inclusive_tax` will include inclusive tax (and exclude exclusive tax) in invoice PDF amounts. `exclude_tax` will exclude all tax (inclusive and exclusive alike) from invoice PDF amounts.
        sig { returns(T.nilable(T.any(String, String))) }
        attr_accessor :amount_tax_display
        # Invoice pdf rendering options
        sig { returns(T.nilable(::Stripe::InvoiceService::UpdateParams::Rendering::Pdf)) }
        attr_accessor :pdf
        # ID of the invoice rendering template to use for this invoice.
        sig { returns(T.nilable(String)) }
        attr_accessor :template
        # The specific version of invoice rendering template to use for this invoice.
        sig { returns(T.nilable(T.any(String, Integer))) }
        attr_accessor :template_version
        sig {
          params(amount_tax_display: T.nilable(T.any(String, String)), pdf: T.nilable(::Stripe::InvoiceService::UpdateParams::Rendering::Pdf), template: T.nilable(String), template_version: T.nilable(T.any(String, Integer))).void
         }
        def initialize(amount_tax_display: nil, pdf: nil, template: nil, template_version: nil); end
      end
      class ShippingCost < Stripe::RequestParams
        class ShippingRateData < Stripe::RequestParams
          class DeliveryEstimate < Stripe::RequestParams
            class Maximum < Stripe::RequestParams
              # A unit of time.
              sig { returns(String) }
              attr_accessor :unit
              # Must be greater than 0.
              sig { returns(Integer) }
              attr_accessor :value
              sig { params(unit: String, value: Integer).void }
              def initialize(unit: nil, value: nil); end
            end
            class Minimum < Stripe::RequestParams
              # A unit of time.
              sig { returns(String) }
              attr_accessor :unit
              # Must be greater than 0.
              sig { returns(Integer) }
              attr_accessor :value
              sig { params(unit: String, value: Integer).void }
              def initialize(unit: nil, value: nil); end
            end
            # The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
            sig {
              returns(T.nilable(::Stripe::InvoiceService::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum))
             }
            attr_accessor :maximum
            # The lower bound of the estimated range. If empty, represents no lower bound.
            sig {
              returns(T.nilable(::Stripe::InvoiceService::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum))
             }
            attr_accessor :minimum
            sig {
              params(maximum: T.nilable(::Stripe::InvoiceService::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum), minimum: T.nilable(::Stripe::InvoiceService::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum)).void
             }
            def initialize(maximum: nil, minimum: nil); end
          end
          class FixedAmount < Stripe::RequestParams
            class CurrencyOptions < Stripe::RequestParams
              # A non-negative integer in cents representing how much to charge.
              sig { returns(Integer) }
              attr_accessor :amount
              # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
              sig { returns(T.nilable(String)) }
              attr_accessor :tax_behavior
              sig { params(amount: Integer, tax_behavior: T.nilable(String)).void }
              def initialize(amount: nil, tax_behavior: nil); end
            end
            # A non-negative integer in cents representing how much to charge.
            sig { returns(Integer) }
            attr_accessor :amount
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
            sig {
              returns(T.nilable(T::Hash[String, ::Stripe::InvoiceService::UpdateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions]))
             }
            attr_accessor :currency_options
            sig {
              params(amount: Integer, currency: String, currency_options: T.nilable(T::Hash[String, ::Stripe::InvoiceService::UpdateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions])).void
             }
            def initialize(amount: nil, currency: nil, currency_options: nil); end
          end
          # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
          sig {
            returns(T.nilable(::Stripe::InvoiceService::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate))
           }
          attr_accessor :delivery_estimate
          # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
          sig { returns(String) }
          attr_accessor :display_name
          # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
          sig {
            returns(T.nilable(::Stripe::InvoiceService::UpdateParams::ShippingCost::ShippingRateData::FixedAmount))
           }
          attr_accessor :fixed_amount
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_behavior
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_code
          # The type of calculation to use on the shipping rate.
          sig { returns(T.nilable(String)) }
          attr_accessor :type
          sig {
            params(delivery_estimate: T.nilable(::Stripe::InvoiceService::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate), display_name: String, fixed_amount: T.nilable(::Stripe::InvoiceService::UpdateParams::ShippingCost::ShippingRateData::FixedAmount), metadata: T.nilable(T::Hash[String, String]), tax_behavior: T.nilable(String), tax_code: T.nilable(String), type: T.nilable(String)).void
           }
          def initialize(
            delivery_estimate: nil,
            display_name: nil,
            fixed_amount: nil,
            metadata: nil,
            tax_behavior: nil,
            tax_code: nil,
            type: nil
          ); end
        end
        # The ID of the shipping rate to use for this order.
        sig { returns(T.nilable(String)) }
        attr_accessor :shipping_rate
        # Parameters to create a new ad-hoc shipping rate for this order.
        sig {
          returns(T.nilable(::Stripe::InvoiceService::UpdateParams::ShippingCost::ShippingRateData))
         }
        attr_accessor :shipping_rate_data
        sig {
          params(shipping_rate: T.nilable(String), shipping_rate_data: T.nilable(::Stripe::InvoiceService::UpdateParams::ShippingCost::ShippingRateData)).void
         }
        def initialize(shipping_rate: nil, shipping_rate_data: nil); end
      end
      class ShippingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          attr_accessor :state
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
           }
          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          ); end
        end
        # Shipping address
        sig { returns(::Stripe::InvoiceService::UpdateParams::ShippingDetails::Address) }
        attr_accessor :address
        # Recipient name.
        sig { returns(String) }
        attr_accessor :name
        # Recipient phone (including extension)
        sig { returns(T.nilable(String)) }
        attr_accessor :phone
        sig {
          params(address: ::Stripe::InvoiceService::UpdateParams::ShippingDetails::Address, name: String, phone: T.nilable(String)).void
         }
        def initialize(address: nil, name: nil, phone: nil); end
      end
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when the invoice is paid. If no amount is set, the full amount is transferred.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # ID of an existing, connected Stripe account.
        sig { returns(String) }
        attr_accessor :destination
        sig { params(amount: T.nilable(Integer), destination: String).void }
        def initialize(amount: nil, destination: nil); end
      end
      # The account tax IDs associated with the invoice. Only editable when the invoice is a draft.
      sig { returns(T.nilable(T.any(String, T::Array[String]))) }
      attr_accessor :account_tax_ids
      # A fee in cents (or local equivalent) that will be applied to the invoice and transferred to the application owner's Stripe account. The request must be made with an OAuth key or the Stripe-Account header in order to take an application fee. For more information, see the application fees [documentation](https://stripe.com/docs/billing/invoices/connect#collecting-fees).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :application_fee_amount
      # Controls whether Stripe performs [automatic collection](https://stripe.com/docs/invoicing/integration/automatic-advancement-collection) of the invoice.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_advance
      # Settings for automatic tax lookup for this invoice.
      sig { returns(T.nilable(::Stripe::InvoiceService::UpdateParams::AutomaticTax)) }
      attr_accessor :automatic_tax
      # The time when this invoice should be scheduled to finalize (up to 5 years in the future). The invoice is finalized at this time if it's still in draft state. To turn off automatic finalization, set `auto_advance` to false.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :automatically_finalizes_at
      # Either `charge_automatically` or `send_invoice`. This field can be updated only on `draft` invoices.
      sig { returns(T.nilable(String)) }
      attr_accessor :collection_method
      # A list of up to 4 custom fields to be displayed on the invoice. If a value for `custom_fields` is specified, the list specified will replace the existing custom field list on this invoice. Pass an empty string to remove previously-defined fields.
      sig {
        returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::UpdateParams::CustomField])))
       }
      attr_accessor :custom_fields
      # The number of days from which the invoice is created until it is due. Only valid for invoices where `collection_method=send_invoice`. This field can only be updated on `draft` invoices.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :days_until_due
      # ID of the default payment method for the invoice. It must belong to the customer associated with the invoice. If not set, defaults to the subscription's default payment method, if any, or to the default payment method in the customer's invoice settings.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_payment_method
      # ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription's default source, if any, or to the customer's default source.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_source
      # The tax rates that will apply to any line item that does not have `tax_rates` set. Pass an empty string to remove previously-defined tax rates.
      sig { returns(T.nilable(T.any(String, T::Array[String]))) }
      attr_accessor :default_tax_rates
      # An arbitrary string attached to the object. Often useful for displaying to users. Referenced as 'memo' in the Dashboard.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # The discounts that will apply to the invoice. Pass an empty string to remove previously-defined discounts.
      sig {
        returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::UpdateParams::Discount])))
       }
      attr_accessor :discounts
      # The date on which payment for this invoice is due. Only valid for invoices where `collection_method=send_invoice`. This field can only be updated on `draft` invoices.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :due_date
      # The date when this invoice is in effect. Same as `finalized_at` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the invoice PDF and receipt.
      sig { returns(T.nilable(T.any(String, Integer))) }
      attr_accessor :effective_at
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Footer to be displayed on the invoice.
      sig { returns(T.nilable(String)) }
      attr_accessor :footer
      # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
      sig { returns(T.nilable(::Stripe::InvoiceService::UpdateParams::Issuer)) }
      attr_accessor :issuer
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # Set the number for this invoice. If no number is present then a number will be assigned automatically when the invoice is finalized. In many markets, regulations require invoices to be unique, sequential and / or gapless. You are responsible for ensuring this is true across all your different invoicing systems in the event that you edit the invoice number using our API. If you use only Stripe for your invoices and do not change invoice numbers, Stripe handles this aspect of compliance for you automatically.
      sig { returns(T.nilable(String)) }
      attr_accessor :number
      # The account (if any) for which the funds of the invoice payment are intended. If set, the invoice will be presented with the branding and support information of the specified account. See the [Invoices with Connect](https://stripe.com/docs/billing/invoices/connect) documentation for details.
      sig { returns(T.nilable(String)) }
      attr_accessor :on_behalf_of
      # Configuration settings for the PaymentIntent that is generated when the invoice is finalized.
      sig { returns(T.nilable(::Stripe::InvoiceService::UpdateParams::PaymentSettings)) }
      attr_accessor :payment_settings
      # The rendering-related settings that control how the invoice is displayed on customer-facing surfaces such as PDF and Hosted Invoice Page.
      sig { returns(T.nilable(::Stripe::InvoiceService::UpdateParams::Rendering)) }
      attr_accessor :rendering
      # Settings for the cost of shipping for this invoice.
      sig {
        returns(T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::ShippingCost)))
       }
      attr_accessor :shipping_cost
      # Shipping details for the invoice. The Invoice PDF will use the `shipping_details` value if it is set, otherwise the PDF will render the shipping address from the customer.
      sig {
        returns(T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::ShippingDetails)))
       }
      attr_accessor :shipping_details
      # Extra information about a charge for the customer's credit card statement. It must contain at least one letter. If not specified and this invoice is part of a subscription, the default `statement_descriptor` will be set to the first subscription item's product's `statement_descriptor`.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor
      # If specified, the funds from the invoice will be transferred to the destination and the ID of the resulting transfer will be found on the invoice's charge. This will be unset if you POST an empty value.
      sig {
        returns(T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::TransferData)))
       }
      attr_accessor :transfer_data
      sig {
        params(account_tax_ids: T.nilable(T.any(String, T::Array[String])), application_fee_amount: T.nilable(Integer), auto_advance: T.nilable(T::Boolean), automatic_tax: T.nilable(::Stripe::InvoiceService::UpdateParams::AutomaticTax), automatically_finalizes_at: T.nilable(Integer), collection_method: T.nilable(String), custom_fields: T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::UpdateParams::CustomField])), days_until_due: T.nilable(Integer), default_payment_method: T.nilable(String), default_source: T.nilable(String), default_tax_rates: T.nilable(T.any(String, T::Array[String])), description: T.nilable(String), discounts: T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::UpdateParams::Discount])), due_date: T.nilable(Integer), effective_at: T.nilable(T.any(String, Integer)), expand: T.nilable(T::Array[String]), footer: T.nilable(String), issuer: T.nilable(::Stripe::InvoiceService::UpdateParams::Issuer), metadata: T.nilable(T.any(String, T::Hash[String, String])), number: T.nilable(String), on_behalf_of: T.nilable(String), payment_settings: T.nilable(::Stripe::InvoiceService::UpdateParams::PaymentSettings), rendering: T.nilable(::Stripe::InvoiceService::UpdateParams::Rendering), shipping_cost: T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::ShippingCost)), shipping_details: T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::ShippingDetails)), statement_descriptor: T.nilable(String), transfer_data: T.nilable(T.any(String, ::Stripe::InvoiceService::UpdateParams::TransferData))).void
       }
      def initialize(
        account_tax_ids: nil,
        application_fee_amount: nil,
        auto_advance: nil,
        automatic_tax: nil,
        automatically_finalizes_at: nil,
        collection_method: nil,
        custom_fields: nil,
        days_until_due: nil,
        default_payment_method: nil,
        default_source: nil,
        default_tax_rates: nil,
        description: nil,
        discounts: nil,
        due_date: nil,
        effective_at: nil,
        expand: nil,
        footer: nil,
        issuer: nil,
        metadata: nil,
        number: nil,
        on_behalf_of: nil,
        payment_settings: nil,
        rendering: nil,
        shipping_cost: nil,
        shipping_details: nil,
        statement_descriptor: nil,
        transfer_data: nil
      ); end
    end
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
      class DueDate < Stripe::RequestParams
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
      # The collection method of the invoice to retrieve. Either `charge_automatically` or `send_invoice`.
      sig { returns(T.nilable(String)) }
      attr_accessor :collection_method
      # Only return invoices that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::InvoiceService::ListParams::Created, Integer))) }
      attr_accessor :created
      # Only return invoices for the customer specified by this customer ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # Attribute for param field due_date
      sig { returns(T.nilable(T.any(::Stripe::InvoiceService::ListParams::DueDate, Integer))) }
      attr_accessor :due_date
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      # The status of the invoice, one of `draft`, `open`, `paid`, `uncollectible`, or `void`. [Learn more](https://stripe.com/docs/billing/invoices/workflow#workflow-overview)
      sig { returns(T.nilable(String)) }
      attr_accessor :status
      # Only return invoices for the subscription specified by this subscription ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :subscription
      sig {
        params(collection_method: T.nilable(String), created: T.nilable(T.any(::Stripe::InvoiceService::ListParams::Created, Integer)), customer: T.nilable(String), due_date: T.nilable(T.any(::Stripe::InvoiceService::ListParams::DueDate, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String), subscription: T.nilable(String)).void
       }
      def initialize(
        collection_method: nil,
        created: nil,
        customer: nil,
        due_date: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        status: nil,
        subscription: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        class Liability < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(T.nilable(String)) }
          attr_accessor :account
          # Type of the account referenced in the request.
          sig { returns(String) }
          attr_accessor :type
          sig { params(account: T.nilable(String), type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # Whether Stripe automatically computes tax on this invoice. Note that incompatible invoice items (invoice items with manually specified [tax rates](https://stripe.com/docs/api/tax_rates), negative amounts, or `tax_behavior=unspecified`) cannot be added to automatic tax invoices.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        sig { returns(T.nilable(::Stripe::InvoiceService::CreateParams::AutomaticTax::Liability)) }
        attr_accessor :liability
        sig {
          params(enabled: T::Boolean, liability: T.nilable(::Stripe::InvoiceService::CreateParams::AutomaticTax::Liability)).void
         }
        def initialize(enabled: nil, liability: nil); end
      end
      class CustomField < Stripe::RequestParams
        # The name of the custom field. This may be up to 40 characters.
        sig { returns(String) }
        attr_accessor :name
        # The value of the custom field. This may be up to 140 characters.
        sig { returns(String) }
        attr_accessor :value
        sig { params(name: String, value: String).void }
        def initialize(name: nil, value: nil); end
      end
      class Discount < Stripe::RequestParams
        # ID of the coupon to create a new discount for.
        sig { returns(T.nilable(String)) }
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(T.nilable(String)) }
        attr_accessor :discount
        # ID of the promotion code to create a new discount for.
        sig { returns(T.nilable(String)) }
        attr_accessor :promotion_code
        sig {
          params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
         }
        def initialize(coupon: nil, discount: nil, promotion_code: nil); end
      end
      class FromInvoice < Stripe::RequestParams
        # The relation between the new invoice and the original invoice. Currently, only 'revision' is permitted
        sig { returns(String) }
        attr_accessor :action
        # The `id` of the invoice that will be cloned.
        sig { returns(String) }
        attr_accessor :invoice
        sig { params(action: String, invoice: String).void }
        def initialize(action: nil, invoice: nil); end
      end
      class Issuer < Stripe::RequestParams
        # The connected account being referenced when `type` is `account`.
        sig { returns(T.nilable(String)) }
        attr_accessor :account
        # Type of the account referenced in the request.
        sig { returns(String) }
        attr_accessor :type
        sig { params(account: T.nilable(String), type: String).void }
        def initialize(account: nil, type: nil); end
      end
      class PaymentSettings < Stripe::RequestParams
        class PaymentMethodOptions < Stripe::RequestParams
          class AcssDebit < Stripe::RequestParams
            class MandateOptions < Stripe::RequestParams
              # Transaction type of the mandate.
              sig { returns(T.nilable(String)) }
              attr_accessor :transaction_type
              sig { params(transaction_type: T.nilable(String)).void }
              def initialize(transaction_type: nil); end
            end
            # Additional fields for Mandate creation
            sig {
              returns(T.nilable(::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::AcssDebit::MandateOptions))
             }
            attr_accessor :mandate_options
            # Verification method for the intent
            sig { returns(T.nilable(String)) }
            attr_accessor :verification_method
            sig {
              params(mandate_options: T.nilable(::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::AcssDebit::MandateOptions), verification_method: T.nilable(String)).void
             }
            def initialize(mandate_options: nil, verification_method: nil); end
          end
          class Bancontact < Stripe::RequestParams
            # Preferred language of the Bancontact authorization page that the customer is redirected to.
            sig { returns(T.nilable(String)) }
            attr_accessor :preferred_language
            sig { params(preferred_language: T.nilable(String)).void }
            def initialize(preferred_language: nil); end
          end
          class Card < Stripe::RequestParams
            class Installments < Stripe::RequestParams
              class Plan < Stripe::RequestParams
                # For `fixed_count` installment plans, this is required. It represents the number of installment payments your customer will make to their credit card.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :count
                # For `fixed_count` installment plans, this is required. It represents the interval between installment payments your customer will make to their credit card.
                # One of `month`.
                sig { returns(T.nilable(String)) }
                attr_accessor :interval
                # Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(count: T.nilable(Integer), interval: T.nilable(String), type: String).void
                 }
                def initialize(count: nil, interval: nil, type: nil); end
              end
              # Setting to true enables installments for this invoice.
              # Setting to false will prevent any selected plan from applying to a payment.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :enabled
              # The selected installment plan to use for this invoice.
              sig {
                returns(T.nilable(T.any(String, ::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::Card::Installments::Plan)))
               }
              attr_accessor :plan
              sig {
                params(enabled: T.nilable(T::Boolean), plan: T.nilable(T.any(String, ::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::Card::Installments::Plan))).void
               }
              def initialize(enabled: nil, plan: nil); end
            end
            # Installment configuration for payments attempted on this invoice.
            #
            # For more information, see the [installments integration guide](https://stripe.com/docs/payments/installments).
            sig {
              returns(T.nilable(::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::Card::Installments))
             }
            attr_accessor :installments
            # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
            sig { returns(T.nilable(String)) }
            attr_accessor :request_three_d_secure
            sig {
              params(installments: T.nilable(::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::Card::Installments), request_three_d_secure: T.nilable(String)).void
             }
            def initialize(installments: nil, request_three_d_secure: nil); end
          end
          class CustomerBalance < Stripe::RequestParams
            class BankTransfer < Stripe::RequestParams
              class EuBankTransfer < Stripe::RequestParams
                # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
                sig { returns(String) }
                attr_accessor :country
                sig { params(country: String).void }
                def initialize(country: nil); end
              end
              # Configuration for eu_bank_transfer funding type.
              sig {
                returns(T.nilable(::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
               }
              attr_accessor :eu_bank_transfer
              # The bank transfer type that can be used for funding. Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
              sig { returns(T.nilable(String)) }
              attr_accessor :type
              sig {
                params(eu_bank_transfer: T.nilable(::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), type: T.nilable(String)).void
               }
              def initialize(eu_bank_transfer: nil, type: nil); end
            end
            # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
            sig {
              returns(T.nilable(::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance::BankTransfer))
             }
            attr_accessor :bank_transfer
            # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
            sig { returns(T.nilable(String)) }
            attr_accessor :funding_type
            sig {
              params(bank_transfer: T.nilable(::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String)).void
             }
            def initialize(bank_transfer: nil, funding_type: nil); end
          end
          class Konbini < Stripe::RequestParams; end
          class SepaDebit < Stripe::RequestParams; end
          class UsBankAccount < Stripe::RequestParams
            class FinancialConnections < Stripe::RequestParams
              class Filters < Stripe::RequestParams
                # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
                sig { returns(T.nilable(T::Array[String])) }
                attr_accessor :account_subcategories
                sig { params(account_subcategories: T.nilable(T::Array[String])).void }
                def initialize(account_subcategories: nil); end
              end
              # Provide filters for the linked accounts that the customer can select for the payment method.
              sig {
                returns(T.nilable(::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters))
               }
              attr_accessor :filters
              # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :permissions
              # List of data features that you would like to retrieve upon account creation.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :prefetch
              sig {
                params(filters: T.nilable(::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters), permissions: T.nilable(T::Array[String]), prefetch: T.nilable(T::Array[String])).void
               }
              def initialize(filters: nil, permissions: nil, prefetch: nil); end
            end
            # Additional fields for Financial Connections Session creation
            sig {
              returns(T.nilable(::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections))
             }
            attr_accessor :financial_connections
            # Verification method for the intent
            sig { returns(T.nilable(String)) }
            attr_accessor :verification_method
            sig {
              params(financial_connections: T.nilable(::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections), verification_method: T.nilable(String)).void
             }
            def initialize(financial_connections: nil, verification_method: nil); end
          end
          # If paying by `acss_debit`, this sub-hash contains details about the Canadian pre-authorized debit payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::AcssDebit)))
           }
          attr_accessor :acss_debit
          # If paying by `bancontact`, this sub-hash contains details about the Bancontact payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::Bancontact)))
           }
          attr_accessor :bancontact
          # If paying by `card`, this sub-hash contains details about the Card payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::Card)))
           }
          attr_accessor :card
          # If paying by `customer_balance`, this sub-hash contains details about the Bank transfer payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance)))
           }
          attr_accessor :customer_balance
          # If paying by `konbini`, this sub-hash contains details about the Konbini payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::Konbini)))
           }
          attr_accessor :konbini
          # If paying by `sepa_debit`, this sub-hash contains details about the SEPA Direct Debit payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::SepaDebit)))
           }
          attr_accessor :sepa_debit
          # If paying by `us_bank_account`, this sub-hash contains details about the ACH direct debit payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount)))
           }
          attr_accessor :us_bank_account
          sig {
            params(acss_debit: T.nilable(T.any(String, ::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::AcssDebit)), bancontact: T.nilable(T.any(String, ::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::Bancontact)), card: T.nilable(T.any(String, ::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::Card)), customer_balance: T.nilable(T.any(String, ::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance)), konbini: T.nilable(T.any(String, ::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::Konbini)), sepa_debit: T.nilable(T.any(String, ::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::SepaDebit)), us_bank_account: T.nilable(T.any(String, ::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount))).void
           }
          def initialize(
            acss_debit: nil,
            bancontact: nil,
            card: nil,
            customer_balance: nil,
            konbini: nil,
            sepa_debit: nil,
            us_bank_account: nil
          ); end
        end
        # ID of the mandate to be used for this invoice. It must correspond to the payment method used to pay the invoice, including the invoice's default_payment_method or default_source, if set.
        sig { returns(T.nilable(String)) }
        attr_accessor :default_mandate
        # Payment-method-specific configuration to provide to the invoice’s PaymentIntent.
        sig {
          returns(T.nilable(::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions))
         }
        attr_accessor :payment_method_options
        # The list of payment method types (e.g. card) to provide to the invoice’s PaymentIntent. If not set, Stripe attempts to automatically determine the types to use by looking at the invoice’s default payment method, the subscription’s default payment method, the customer’s default payment method, and your [invoice template settings](https://dashboard.stripe.com/settings/billing/invoice). Should not be specified with payment_method_configuration
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        attr_accessor :payment_method_types
        sig {
          params(default_mandate: T.nilable(String), payment_method_options: T.nilable(::Stripe::InvoiceService::CreateParams::PaymentSettings::PaymentMethodOptions), payment_method_types: T.nilable(T.any(String, T::Array[String]))).void
         }
        def initialize(
          default_mandate: nil,
          payment_method_options: nil,
          payment_method_types: nil
        ); end
      end
      class Rendering < Stripe::RequestParams
        class Pdf < Stripe::RequestParams
          # Page size for invoice PDF. Can be set to `a4`, `letter`, or `auto`.
          #  If set to `auto`, invoice PDF page size defaults to `a4` for customers with
          #  Japanese locale and `letter` for customers with other locales.
          sig { returns(T.nilable(String)) }
          attr_accessor :page_size
          sig { params(page_size: T.nilable(String)).void }
          def initialize(page_size: nil); end
        end
        # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs. One of `exclude_tax` or `include_inclusive_tax`. `include_inclusive_tax` will include inclusive tax (and exclude exclusive tax) in invoice PDF amounts. `exclude_tax` will exclude all tax (inclusive and exclusive alike) from invoice PDF amounts.
        sig { returns(T.nilable(T.any(String, String))) }
        attr_accessor :amount_tax_display
        # Invoice pdf rendering options
        sig { returns(T.nilable(::Stripe::InvoiceService::CreateParams::Rendering::Pdf)) }
        attr_accessor :pdf
        # ID of the invoice rendering template to use for this invoice.
        sig { returns(T.nilable(String)) }
        attr_accessor :template
        # The specific version of invoice rendering template to use for this invoice.
        sig { returns(T.nilable(T.any(String, Integer))) }
        attr_accessor :template_version
        sig {
          params(amount_tax_display: T.nilable(T.any(String, String)), pdf: T.nilable(::Stripe::InvoiceService::CreateParams::Rendering::Pdf), template: T.nilable(String), template_version: T.nilable(T.any(String, Integer))).void
         }
        def initialize(amount_tax_display: nil, pdf: nil, template: nil, template_version: nil); end
      end
      class ShippingCost < Stripe::RequestParams
        class ShippingRateData < Stripe::RequestParams
          class DeliveryEstimate < Stripe::RequestParams
            class Maximum < Stripe::RequestParams
              # A unit of time.
              sig { returns(String) }
              attr_accessor :unit
              # Must be greater than 0.
              sig { returns(Integer) }
              attr_accessor :value
              sig { params(unit: String, value: Integer).void }
              def initialize(unit: nil, value: nil); end
            end
            class Minimum < Stripe::RequestParams
              # A unit of time.
              sig { returns(String) }
              attr_accessor :unit
              # Must be greater than 0.
              sig { returns(Integer) }
              attr_accessor :value
              sig { params(unit: String, value: Integer).void }
              def initialize(unit: nil, value: nil); end
            end
            # The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
            sig {
              returns(T.nilable(::Stripe::InvoiceService::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum))
             }
            attr_accessor :maximum
            # The lower bound of the estimated range. If empty, represents no lower bound.
            sig {
              returns(T.nilable(::Stripe::InvoiceService::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum))
             }
            attr_accessor :minimum
            sig {
              params(maximum: T.nilable(::Stripe::InvoiceService::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum), minimum: T.nilable(::Stripe::InvoiceService::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum)).void
             }
            def initialize(maximum: nil, minimum: nil); end
          end
          class FixedAmount < Stripe::RequestParams
            class CurrencyOptions < Stripe::RequestParams
              # A non-negative integer in cents representing how much to charge.
              sig { returns(Integer) }
              attr_accessor :amount
              # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
              sig { returns(T.nilable(String)) }
              attr_accessor :tax_behavior
              sig { params(amount: Integer, tax_behavior: T.nilable(String)).void }
              def initialize(amount: nil, tax_behavior: nil); end
            end
            # A non-negative integer in cents representing how much to charge.
            sig { returns(Integer) }
            attr_accessor :amount
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
            sig {
              returns(T.nilable(T::Hash[String, ::Stripe::InvoiceService::CreateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions]))
             }
            attr_accessor :currency_options
            sig {
              params(amount: Integer, currency: String, currency_options: T.nilable(T::Hash[String, ::Stripe::InvoiceService::CreateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions])).void
             }
            def initialize(amount: nil, currency: nil, currency_options: nil); end
          end
          # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
          sig {
            returns(T.nilable(::Stripe::InvoiceService::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate))
           }
          attr_accessor :delivery_estimate
          # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
          sig { returns(String) }
          attr_accessor :display_name
          # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
          sig {
            returns(T.nilable(::Stripe::InvoiceService::CreateParams::ShippingCost::ShippingRateData::FixedAmount))
           }
          attr_accessor :fixed_amount
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_behavior
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_code
          # The type of calculation to use on the shipping rate.
          sig { returns(T.nilable(String)) }
          attr_accessor :type
          sig {
            params(delivery_estimate: T.nilable(::Stripe::InvoiceService::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate), display_name: String, fixed_amount: T.nilable(::Stripe::InvoiceService::CreateParams::ShippingCost::ShippingRateData::FixedAmount), metadata: T.nilable(T::Hash[String, String]), tax_behavior: T.nilable(String), tax_code: T.nilable(String), type: T.nilable(String)).void
           }
          def initialize(
            delivery_estimate: nil,
            display_name: nil,
            fixed_amount: nil,
            metadata: nil,
            tax_behavior: nil,
            tax_code: nil,
            type: nil
          ); end
        end
        # The ID of the shipping rate to use for this order.
        sig { returns(T.nilable(String)) }
        attr_accessor :shipping_rate
        # Parameters to create a new ad-hoc shipping rate for this order.
        sig {
          returns(T.nilable(::Stripe::InvoiceService::CreateParams::ShippingCost::ShippingRateData))
         }
        attr_accessor :shipping_rate_data
        sig {
          params(shipping_rate: T.nilable(String), shipping_rate_data: T.nilable(::Stripe::InvoiceService::CreateParams::ShippingCost::ShippingRateData)).void
         }
        def initialize(shipping_rate: nil, shipping_rate_data: nil); end
      end
      class ShippingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          attr_accessor :state
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
           }
          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          ); end
        end
        # Shipping address
        sig { returns(::Stripe::InvoiceService::CreateParams::ShippingDetails::Address) }
        attr_accessor :address
        # Recipient name.
        sig { returns(String) }
        attr_accessor :name
        # Recipient phone (including extension)
        sig { returns(T.nilable(String)) }
        attr_accessor :phone
        sig {
          params(address: ::Stripe::InvoiceService::CreateParams::ShippingDetails::Address, name: String, phone: T.nilable(String)).void
         }
        def initialize(address: nil, name: nil, phone: nil); end
      end
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when the invoice is paid. If no amount is set, the full amount is transferred.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # ID of an existing, connected Stripe account.
        sig { returns(String) }
        attr_accessor :destination
        sig { params(amount: T.nilable(Integer), destination: String).void }
        def initialize(amount: nil, destination: nil); end
      end
      # The account tax IDs associated with the invoice. Only editable when the invoice is a draft.
      sig { returns(T.nilable(T.any(String, T::Array[String]))) }
      attr_accessor :account_tax_ids
      # A fee in cents (or local equivalent) that will be applied to the invoice and transferred to the application owner's Stripe account. The request must be made with an OAuth key or the Stripe-Account header in order to take an application fee. For more information, see the application fees [documentation](https://stripe.com/docs/billing/invoices/connect#collecting-fees).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :application_fee_amount
      # Controls whether Stripe performs [automatic collection](https://stripe.com/docs/invoicing/integration/automatic-advancement-collection) of the invoice. If `false`, the invoice's state doesn't automatically advance without an explicit action. Defaults to false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_advance
      # Settings for automatic tax lookup for this invoice.
      sig { returns(T.nilable(::Stripe::InvoiceService::CreateParams::AutomaticTax)) }
      attr_accessor :automatic_tax
      # The time when this invoice should be scheduled to finalize (up to 5 years in the future). The invoice is finalized at this time if it's still in draft state.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :automatically_finalizes_at
      # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this invoice using the default source attached to the customer. When sending an invoice, Stripe will email this invoice to the customer with payment instructions. Defaults to `charge_automatically`.
      sig { returns(T.nilable(String)) }
      attr_accessor :collection_method
      # The currency to create this invoice in. Defaults to that of `customer` if not specified.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency
      # A list of up to 4 custom fields to be displayed on the invoice.
      sig {
        returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::CreateParams::CustomField])))
       }
      attr_accessor :custom_fields
      # The ID of the customer who will be billed.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # The number of days from when the invoice is created until it is due. Valid only for invoices where `collection_method=send_invoice`.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :days_until_due
      # ID of the default payment method for the invoice. It must belong to the customer associated with the invoice. If not set, defaults to the subscription's default payment method, if any, or to the default payment method in the customer's invoice settings.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_payment_method
      # ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription's default source, if any, or to the customer's default source.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_source
      # The tax rates that will apply to any line item that does not have `tax_rates` set.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :default_tax_rates
      # An arbitrary string attached to the object. Often useful for displaying to users. Referenced as 'memo' in the Dashboard.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # The coupons and promotion codes to redeem into discounts for the invoice. If not specified, inherits the discount from the invoice's customer. Pass an empty string to avoid inheriting any discounts.
      sig {
        returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::CreateParams::Discount])))
       }
      attr_accessor :discounts
      # The date on which payment for this invoice is due. Valid only for invoices where `collection_method=send_invoice`.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :due_date
      # The date when this invoice is in effect. Same as `finalized_at` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the invoice PDF and receipt.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :effective_at
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Footer to be displayed on the invoice.
      sig { returns(T.nilable(String)) }
      attr_accessor :footer
      # Revise an existing invoice. The new invoice will be created in `status=draft`. See the [revision documentation](https://stripe.com/docs/invoicing/invoice-revisions) for more details.
      sig { returns(T.nilable(::Stripe::InvoiceService::CreateParams::FromInvoice)) }
      attr_accessor :from_invoice
      # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
      sig { returns(T.nilable(::Stripe::InvoiceService::CreateParams::Issuer)) }
      attr_accessor :issuer
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # Set the number for this invoice. If no number is present then a number will be assigned automatically when the invoice is finalized. In many markets, regulations require invoices to be unique, sequential and / or gapless. You are responsible for ensuring this is true across all your different invoicing systems in the event that you edit the invoice number using our API. If you use only Stripe for your invoices and do not change invoice numbers, Stripe handles this aspect of compliance for you automatically.
      sig { returns(T.nilable(String)) }
      attr_accessor :number
      # The account (if any) for which the funds of the invoice payment are intended. If set, the invoice will be presented with the branding and support information of the specified account. See the [Invoices with Connect](https://stripe.com/docs/billing/invoices/connect) documentation for details.
      sig { returns(T.nilable(String)) }
      attr_accessor :on_behalf_of
      # Configuration settings for the PaymentIntent that is generated when the invoice is finalized.
      sig { returns(T.nilable(::Stripe::InvoiceService::CreateParams::PaymentSettings)) }
      attr_accessor :payment_settings
      # How to handle pending invoice items on invoice creation. Defaults to `exclude` if the parameter is omitted.
      sig { returns(T.nilable(String)) }
      attr_accessor :pending_invoice_items_behavior
      # The rendering-related settings that control how the invoice is displayed on customer-facing surfaces such as PDF and Hosted Invoice Page.
      sig { returns(T.nilable(::Stripe::InvoiceService::CreateParams::Rendering)) }
      attr_accessor :rendering
      # Settings for the cost of shipping for this invoice.
      sig { returns(T.nilable(::Stripe::InvoiceService::CreateParams::ShippingCost)) }
      attr_accessor :shipping_cost
      # Shipping details for the invoice. The Invoice PDF will use the `shipping_details` value if it is set, otherwise the PDF will render the shipping address from the customer.
      sig { returns(T.nilable(::Stripe::InvoiceService::CreateParams::ShippingDetails)) }
      attr_accessor :shipping_details
      # Extra information about a charge for the customer's credit card statement. It must contain at least one letter. If not specified and this invoice is part of a subscription, the default `statement_descriptor` will be set to the first subscription item's product's `statement_descriptor`.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor
      # The ID of the subscription to invoice, if any. If set, the created invoice will only include pending invoice items for that subscription. The subscription's billing cycle and regular subscription events won't be affected.
      sig { returns(T.nilable(String)) }
      attr_accessor :subscription
      # If specified, the funds from the invoice will be transferred to the destination and the ID of the resulting transfer will be found on the invoice's charge.
      sig { returns(T.nilable(::Stripe::InvoiceService::CreateParams::TransferData)) }
      attr_accessor :transfer_data
      sig {
        params(account_tax_ids: T.nilable(T.any(String, T::Array[String])), application_fee_amount: T.nilable(Integer), auto_advance: T.nilable(T::Boolean), automatic_tax: T.nilable(::Stripe::InvoiceService::CreateParams::AutomaticTax), automatically_finalizes_at: T.nilable(Integer), collection_method: T.nilable(String), currency: T.nilable(String), custom_fields: T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::CreateParams::CustomField])), customer: T.nilable(String), days_until_due: T.nilable(Integer), default_payment_method: T.nilable(String), default_source: T.nilable(String), default_tax_rates: T.nilable(T::Array[String]), description: T.nilable(String), discounts: T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::CreateParams::Discount])), due_date: T.nilable(Integer), effective_at: T.nilable(Integer), expand: T.nilable(T::Array[String]), footer: T.nilable(String), from_invoice: T.nilable(::Stripe::InvoiceService::CreateParams::FromInvoice), issuer: T.nilable(::Stripe::InvoiceService::CreateParams::Issuer), metadata: T.nilable(T.any(String, T::Hash[String, String])), number: T.nilable(String), on_behalf_of: T.nilable(String), payment_settings: T.nilable(::Stripe::InvoiceService::CreateParams::PaymentSettings), pending_invoice_items_behavior: T.nilable(String), rendering: T.nilable(::Stripe::InvoiceService::CreateParams::Rendering), shipping_cost: T.nilable(::Stripe::InvoiceService::CreateParams::ShippingCost), shipping_details: T.nilable(::Stripe::InvoiceService::CreateParams::ShippingDetails), statement_descriptor: T.nilable(String), subscription: T.nilable(String), transfer_data: T.nilable(::Stripe::InvoiceService::CreateParams::TransferData)).void
       }
      def initialize(
        account_tax_ids: nil,
        application_fee_amount: nil,
        auto_advance: nil,
        automatic_tax: nil,
        automatically_finalizes_at: nil,
        collection_method: nil,
        currency: nil,
        custom_fields: nil,
        customer: nil,
        days_until_due: nil,
        default_payment_method: nil,
        default_source: nil,
        default_tax_rates: nil,
        description: nil,
        discounts: nil,
        due_date: nil,
        effective_at: nil,
        expand: nil,
        footer: nil,
        from_invoice: nil,
        issuer: nil,
        metadata: nil,
        number: nil,
        on_behalf_of: nil,
        payment_settings: nil,
        pending_invoice_items_behavior: nil,
        rendering: nil,
        shipping_cost: nil,
        shipping_details: nil,
        statement_descriptor: nil,
        subscription: nil,
        transfer_data: nil
      ); end
    end
    class SearchParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
      sig { returns(T.nilable(String)) }
      attr_accessor :page
      # The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for invoices](https://stripe.com/docs/search#query-fields-for-invoices).
      sig { returns(String) }
      attr_accessor :query
      sig {
        params(expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), page: T.nilable(String), query: String).void
       }
      def initialize(expand: nil, limit: nil, page: nil, query: nil); end
    end
    class AddLinesParams < Stripe::RequestParams
      class Line < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          # ID of the coupon to create a new discount for.
          sig { returns(T.nilable(String)) }
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(T.nilable(String)) }
          attr_accessor :discount
          # ID of the promotion code to create a new discount for.
          sig { returns(T.nilable(String)) }
          attr_accessor :promotion_code
          sig {
            params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
           }
          def initialize(coupon: nil, discount: nil, promotion_code: nil); end
        end
        class Period < Stripe::RequestParams
          # The end of the period, which must be greater than or equal to the start. This value is inclusive.
          sig { returns(Integer) }
          attr_accessor :end
          # The start of the period. This value is inclusive.
          sig { returns(Integer) }
          attr_accessor :start
          sig { params(end_: Integer, start: Integer).void }
          def initialize(end_: nil, start: nil); end
        end
        class PriceData < Stripe::RequestParams
          class ProductData < Stripe::RequestParams
            # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
            sig { returns(T.nilable(String)) }
            attr_accessor :description
            # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :images
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_accessor :metadata
            # The product's name, meant to be displayable to the customer.
            sig { returns(String) }
            attr_accessor :name
            # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
            sig { returns(T.nilable(String)) }
            attr_accessor :tax_code
            sig {
              params(description: T.nilable(String), images: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), name: String, tax_code: T.nilable(String)).void
             }
            def initialize(
              description: nil,
              images: nil,
              metadata: nil,
              name: nil,
              tax_code: nil
            ); end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to. One of `product` or `product_data` is required.
          sig { returns(T.nilable(String)) }
          attr_accessor :product
          # Data used to generate a new [Product](https://docs.stripe.com/api/products) object inline. One of `product` or `product_data` is required.
          sig {
            returns(T.nilable(::Stripe::InvoiceService::AddLinesParams::Line::PriceData::ProductData))
           }
          attr_accessor :product_data
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_behavior
          # A non-negative integer in cents (or local equivalent) representing how much to charge. One of `unit_amount` or `unit_amount_decimal` is required.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(T.nilable(String)) }
          attr_accessor :unit_amount_decimal
          sig {
            params(currency: String, product: T.nilable(String), product_data: T.nilable(::Stripe::InvoiceService::AddLinesParams::Line::PriceData::ProductData), tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
           }
          def initialize(
            currency: nil,
            product: nil,
            product_data: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          ); end
        end
        class Pricing < Stripe::RequestParams
          # The ID of the price object.
          sig { returns(T.nilable(String)) }
          attr_accessor :price
          sig { params(price: T.nilable(String)).void }
          def initialize(price: nil); end
        end
        class TaxAmount < Stripe::RequestParams
          class TaxRateData < Stripe::RequestParams
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_accessor :country
            # An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
            sig { returns(T.nilable(String)) }
            attr_accessor :description
            # The display name of the tax rate, which will be shown to users.
            sig { returns(String) }
            attr_accessor :display_name
            # This specifies if the tax rate is inclusive or exclusive.
            sig { returns(T::Boolean) }
            attr_accessor :inclusive
            # The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
            sig { returns(T.nilable(String)) }
            attr_accessor :jurisdiction
            # The level of the jurisdiction that imposes this tax rate.
            sig { returns(T.nilable(String)) }
            attr_accessor :jurisdiction_level
            # The statutory tax rate percent. This field accepts decimal values between 0 and 100 inclusive with at most 4 decimal places. To accommodate fixed-amount taxes, set the percentage to zero. Stripe will not display zero percentages on the invoice unless the `amount` of the tax is also zero.
            sig { returns(Float) }
            attr_accessor :percentage
            # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix. For example, "NY" for New York, United States.
            sig { returns(T.nilable(String)) }
            attr_accessor :state
            # The high-level tax type, such as `vat` or `sales_tax`.
            sig { returns(T.nilable(String)) }
            attr_accessor :tax_type
            sig {
              params(country: T.nilable(String), description: T.nilable(String), display_name: String, inclusive: T::Boolean, jurisdiction: T.nilable(String), jurisdiction_level: T.nilable(String), percentage: Float, state: T.nilable(String), tax_type: T.nilable(String)).void
             }
            def initialize(
              country: nil,
              description: nil,
              display_name: nil,
              inclusive: nil,
              jurisdiction: nil,
              jurisdiction_level: nil,
              percentage: nil,
              state: nil,
              tax_type: nil
            ); end
          end
          # The amount, in cents (or local equivalent), of the tax.
          sig { returns(Integer) }
          attr_accessor :amount
          # Data to find or create a TaxRate object.
          #
          # Stripe automatically creates or reuses a TaxRate object for each tax amount. If the `tax_rate_data` exactly matches a previous value, Stripe will reuse the TaxRate object. TaxRate objects created automatically by Stripe are immediately archived, do not appear in the line item’s `tax_rates`, and cannot be directly added to invoices, payments, or line items.
          sig { returns(::Stripe::InvoiceService::AddLinesParams::Line::TaxAmount::TaxRateData) }
          attr_accessor :tax_rate_data
          # The reasoning behind this tax, for example, if the product is tax exempt.
          sig { returns(T.nilable(String)) }
          attr_accessor :taxability_reason
          # The amount on which tax is calculated, in cents (or local equivalent).
          sig { returns(Integer) }
          attr_accessor :taxable_amount
          sig {
            params(amount: Integer, tax_rate_data: ::Stripe::InvoiceService::AddLinesParams::Line::TaxAmount::TaxRateData, taxability_reason: T.nilable(String), taxable_amount: Integer).void
           }
          def initialize(
            amount: nil,
            tax_rate_data: nil,
            taxability_reason: nil,
            taxable_amount: nil
          ); end
        end
        # The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. If you want to apply a credit to the customer's account, pass a negative amount.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # Controls whether discounts apply to this line item. Defaults to false for prorations or negative line items, and true for all other line items. Cannot be set to true for prorations.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :discountable
        # The coupons, promotion codes & existing discounts which apply to the line item. Item discounts are applied before invoice discounts. Pass an empty string to remove previously-defined discounts.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::AddLinesParams::Line::Discount])))
         }
        attr_accessor :discounts
        # ID of an unassigned invoice item to assign to this invoice. If not provided, a new item will be created.
        sig { returns(T.nilable(String)) }
        attr_accessor :invoice_item
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        attr_accessor :metadata
        # The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://stripe.com/docs/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://stripe.com/docs/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
        sig { returns(T.nilable(::Stripe::InvoiceService::AddLinesParams::Line::Period)) }
        attr_accessor :period
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
        sig { returns(T.nilable(::Stripe::InvoiceService::AddLinesParams::Line::PriceData)) }
        attr_accessor :price_data
        # The pricing information for the invoice item.
        sig { returns(T.nilable(::Stripe::InvoiceService::AddLinesParams::Line::Pricing)) }
        attr_accessor :pricing
        # Non-negative integer. The quantity of units for the line item.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :quantity
        # A list of up to 10 tax amounts for this line item. This can be useful if you calculate taxes on your own or use a third-party to calculate them. You cannot set tax amounts if any line item has [tax_rates](https://stripe.com/docs/api/invoices/line_item#invoice_line_item_object-tax_rates) or if the invoice has [default_tax_rates](https://stripe.com/docs/api/invoices/object#invoice_object-default_tax_rates) or uses [automatic tax](https://stripe.com/docs/tax/invoicing). Pass an empty string to remove previously defined tax amounts.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::AddLinesParams::Line::TaxAmount])))
         }
        attr_accessor :tax_amounts
        # The tax rates which apply to the line item. When set, the `default_tax_rates` on the invoice do not apply to this line item. Pass an empty string to remove previously-defined tax rates.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        attr_accessor :tax_rates
        sig {
          params(amount: T.nilable(Integer), description: T.nilable(String), discountable: T.nilable(T::Boolean), discounts: T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::AddLinesParams::Line::Discount])), invoice_item: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), period: T.nilable(::Stripe::InvoiceService::AddLinesParams::Line::Period), price_data: T.nilable(::Stripe::InvoiceService::AddLinesParams::Line::PriceData), pricing: T.nilable(::Stripe::InvoiceService::AddLinesParams::Line::Pricing), quantity: T.nilable(Integer), tax_amounts: T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::AddLinesParams::Line::TaxAmount])), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
         }
        def initialize(
          amount: nil,
          description: nil,
          discountable: nil,
          discounts: nil,
          invoice_item: nil,
          metadata: nil,
          period: nil,
          price_data: nil,
          pricing: nil,
          quantity: nil,
          tax_amounts: nil,
          tax_rates: nil
        ); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :invoice_metadata
      # The line items to add.
      sig { returns(T::Array[::Stripe::InvoiceService::AddLinesParams::Line]) }
      attr_accessor :lines
      sig {
        params(expand: T.nilable(T::Array[String]), invoice_metadata: T.nilable(T.any(String, T::Hash[String, String])), lines: T::Array[::Stripe::InvoiceService::AddLinesParams::Line]).void
       }
      def initialize(expand: nil, invoice_metadata: nil, lines: nil); end
    end
    class AttachPaymentParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The ID of the PaymentIntent to attach to the invoice.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_intent
      sig { params(expand: T.nilable(T::Array[String]), payment_intent: T.nilable(String)).void }
      def initialize(expand: nil, payment_intent: nil); end
    end
    class FinalizeInvoiceParams < Stripe::RequestParams
      # Controls whether Stripe performs [automatic collection](https://stripe.com/docs/invoicing/integration/automatic-advancement-collection) of the invoice. If `false`, the invoice's state doesn't automatically advance without an explicit action.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_advance
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(auto_advance: T.nilable(T::Boolean), expand: T.nilable(T::Array[String])).void }
      def initialize(auto_advance: nil, expand: nil); end
    end
    class MarkUncollectibleParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class PayParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # In cases where the source used to pay the invoice has insufficient funds, passing `forgive=true` controls whether a charge should be attempted for the full amount available on the source, up to the amount to fully pay the invoice. This effectively forgives the difference between the amount available on the source and the amount due.
      #
      # Passing `forgive=false` will fail the charge if the source hasn't been pre-funded with the right amount. An example for this case is with ACH Credit Transfers and wires: if the amount wired is less than the amount due by a small amount, you might want to forgive the difference. Defaults to `false`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :forgive
      # ID of the mandate to be used for this invoice. It must correspond to the payment method used to pay the invoice, including the payment_method param or the invoice's default_payment_method or default_source, if set.
      sig { returns(T.nilable(String)) }
      attr_accessor :mandate
      # Indicates if a customer is on or off-session while an invoice payment is attempted. Defaults to `true` (off-session).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :off_session
      # Boolean representing whether an invoice is paid outside of Stripe. This will result in no charge being made. Defaults to `false`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :paid_out_of_band
      # A PaymentMethod to be charged. The PaymentMethod must be the ID of a PaymentMethod belonging to the customer associated with the invoice being paid.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method
      # A payment source to be charged. The source must be the ID of a source belonging to the customer associated with the invoice being paid.
      sig { returns(T.nilable(String)) }
      attr_accessor :source
      sig {
        params(expand: T.nilable(T::Array[String]), forgive: T.nilable(T::Boolean), mandate: T.nilable(String), off_session: T.nilable(T::Boolean), paid_out_of_band: T.nilable(T::Boolean), payment_method: T.nilable(String), source: T.nilable(String)).void
       }
      def initialize(
        expand: nil,
        forgive: nil,
        mandate: nil,
        off_session: nil,
        paid_out_of_band: nil,
        payment_method: nil,
        source: nil
      ); end
    end
    class RemoveLinesParams < Stripe::RequestParams
      class Line < Stripe::RequestParams
        # Either `delete` or `unassign`. Deleted line items are permanently deleted. Unassigned line items can be reassigned to an invoice.
        sig { returns(String) }
        attr_accessor :behavior
        # ID of an existing line item to remove from this invoice.
        sig { returns(String) }
        attr_accessor :id
        sig { params(behavior: String, id: String).void }
        def initialize(behavior: nil, id: nil); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :invoice_metadata
      # The line items to remove.
      sig { returns(T::Array[::Stripe::InvoiceService::RemoveLinesParams::Line]) }
      attr_accessor :lines
      sig {
        params(expand: T.nilable(T::Array[String]), invoice_metadata: T.nilable(T.any(String, T::Hash[String, String])), lines: T::Array[::Stripe::InvoiceService::RemoveLinesParams::Line]).void
       }
      def initialize(expand: nil, invoice_metadata: nil, lines: nil); end
    end
    class SendInvoiceParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateLinesParams < Stripe::RequestParams
      class Line < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          # ID of the coupon to create a new discount for.
          sig { returns(T.nilable(String)) }
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(T.nilable(String)) }
          attr_accessor :discount
          # ID of the promotion code to create a new discount for.
          sig { returns(T.nilable(String)) }
          attr_accessor :promotion_code
          sig {
            params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
           }
          def initialize(coupon: nil, discount: nil, promotion_code: nil); end
        end
        class Period < Stripe::RequestParams
          # The end of the period, which must be greater than or equal to the start. This value is inclusive.
          sig { returns(Integer) }
          attr_accessor :end
          # The start of the period. This value is inclusive.
          sig { returns(Integer) }
          attr_accessor :start
          sig { params(end_: Integer, start: Integer).void }
          def initialize(end_: nil, start: nil); end
        end
        class PriceData < Stripe::RequestParams
          class ProductData < Stripe::RequestParams
            # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
            sig { returns(T.nilable(String)) }
            attr_accessor :description
            # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :images
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_accessor :metadata
            # The product's name, meant to be displayable to the customer.
            sig { returns(String) }
            attr_accessor :name
            # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
            sig { returns(T.nilable(String)) }
            attr_accessor :tax_code
            sig {
              params(description: T.nilable(String), images: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), name: String, tax_code: T.nilable(String)).void
             }
            def initialize(
              description: nil,
              images: nil,
              metadata: nil,
              name: nil,
              tax_code: nil
            ); end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to. One of `product` or `product_data` is required.
          sig { returns(T.nilable(String)) }
          attr_accessor :product
          # Data used to generate a new [Product](https://docs.stripe.com/api/products) object inline. One of `product` or `product_data` is required.
          sig {
            returns(T.nilable(::Stripe::InvoiceService::UpdateLinesParams::Line::PriceData::ProductData))
           }
          attr_accessor :product_data
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_behavior
          # A non-negative integer in cents (or local equivalent) representing how much to charge. One of `unit_amount` or `unit_amount_decimal` is required.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(T.nilable(String)) }
          attr_accessor :unit_amount_decimal
          sig {
            params(currency: String, product: T.nilable(String), product_data: T.nilable(::Stripe::InvoiceService::UpdateLinesParams::Line::PriceData::ProductData), tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
           }
          def initialize(
            currency: nil,
            product: nil,
            product_data: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          ); end
        end
        class Pricing < Stripe::RequestParams
          # The ID of the price object.
          sig { returns(T.nilable(String)) }
          attr_accessor :price
          sig { params(price: T.nilable(String)).void }
          def initialize(price: nil); end
        end
        class TaxAmount < Stripe::RequestParams
          class TaxRateData < Stripe::RequestParams
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_accessor :country
            # An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
            sig { returns(T.nilable(String)) }
            attr_accessor :description
            # The display name of the tax rate, which will be shown to users.
            sig { returns(String) }
            attr_accessor :display_name
            # This specifies if the tax rate is inclusive or exclusive.
            sig { returns(T::Boolean) }
            attr_accessor :inclusive
            # The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
            sig { returns(T.nilable(String)) }
            attr_accessor :jurisdiction
            # The level of the jurisdiction that imposes this tax rate.
            sig { returns(T.nilable(String)) }
            attr_accessor :jurisdiction_level
            # The statutory tax rate percent. This field accepts decimal values between 0 and 100 inclusive with at most 4 decimal places. To accommodate fixed-amount taxes, set the percentage to zero. Stripe will not display zero percentages on the invoice unless the `amount` of the tax is also zero.
            sig { returns(Float) }
            attr_accessor :percentage
            # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix. For example, "NY" for New York, United States.
            sig { returns(T.nilable(String)) }
            attr_accessor :state
            # The high-level tax type, such as `vat` or `sales_tax`.
            sig { returns(T.nilable(String)) }
            attr_accessor :tax_type
            sig {
              params(country: T.nilable(String), description: T.nilable(String), display_name: String, inclusive: T::Boolean, jurisdiction: T.nilable(String), jurisdiction_level: T.nilable(String), percentage: Float, state: T.nilable(String), tax_type: T.nilable(String)).void
             }
            def initialize(
              country: nil,
              description: nil,
              display_name: nil,
              inclusive: nil,
              jurisdiction: nil,
              jurisdiction_level: nil,
              percentage: nil,
              state: nil,
              tax_type: nil
            ); end
          end
          # The amount, in cents (or local equivalent), of the tax.
          sig { returns(Integer) }
          attr_accessor :amount
          # Data to find or create a TaxRate object.
          #
          # Stripe automatically creates or reuses a TaxRate object for each tax amount. If the `tax_rate_data` exactly matches a previous value, Stripe will reuse the TaxRate object. TaxRate objects created automatically by Stripe are immediately archived, do not appear in the line item’s `tax_rates`, and cannot be directly added to invoices, payments, or line items.
          sig { returns(::Stripe::InvoiceService::UpdateLinesParams::Line::TaxAmount::TaxRateData) }
          attr_accessor :tax_rate_data
          # The reasoning behind this tax, for example, if the product is tax exempt.
          sig { returns(T.nilable(String)) }
          attr_accessor :taxability_reason
          # The amount on which tax is calculated, in cents (or local equivalent).
          sig { returns(Integer) }
          attr_accessor :taxable_amount
          sig {
            params(amount: Integer, tax_rate_data: ::Stripe::InvoiceService::UpdateLinesParams::Line::TaxAmount::TaxRateData, taxability_reason: T.nilable(String), taxable_amount: Integer).void
           }
          def initialize(
            amount: nil,
            tax_rate_data: nil,
            taxability_reason: nil,
            taxable_amount: nil
          ); end
        end
        # The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. If you want to apply a credit to the customer's account, pass a negative amount.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # Controls whether discounts apply to this line item. Defaults to false for prorations or negative line items, and true for all other line items. Cannot be set to true for prorations.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :discountable
        # The coupons, promotion codes & existing discounts which apply to the line item. Item discounts are applied before invoice discounts. Pass an empty string to remove previously-defined discounts.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::UpdateLinesParams::Line::Discount])))
         }
        attr_accessor :discounts
        # ID of an existing line item on the invoice.
        sig { returns(String) }
        attr_accessor :id
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. For [type=subscription](https://stripe.com/docs/api/invoices/line_item#invoice_line_item_object-type) line items, the incoming metadata specified on the request is directly used to set this value, in contrast to [type=invoiceitem](api/invoices/line_item#invoice_line_item_object-type) line items, where any existing metadata on the invoice line is merged with the incoming data.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        attr_accessor :metadata
        # The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://stripe.com/docs/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://stripe.com/docs/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
        sig { returns(T.nilable(::Stripe::InvoiceService::UpdateLinesParams::Line::Period)) }
        attr_accessor :period
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
        sig { returns(T.nilable(::Stripe::InvoiceService::UpdateLinesParams::Line::PriceData)) }
        attr_accessor :price_data
        # The pricing information for the invoice item.
        sig { returns(T.nilable(::Stripe::InvoiceService::UpdateLinesParams::Line::Pricing)) }
        attr_accessor :pricing
        # Non-negative integer. The quantity of units for the line item.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :quantity
        # A list of up to 10 tax amounts for this line item. This can be useful if you calculate taxes on your own or use a third-party to calculate them. You cannot set tax amounts if any line item has [tax_rates](https://stripe.com/docs/api/invoices/line_item#invoice_line_item_object-tax_rates) or if the invoice has [default_tax_rates](https://stripe.com/docs/api/invoices/object#invoice_object-default_tax_rates) or uses [automatic tax](https://stripe.com/docs/tax/invoicing). Pass an empty string to remove previously defined tax amounts.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::UpdateLinesParams::Line::TaxAmount])))
         }
        attr_accessor :tax_amounts
        # The tax rates which apply to the line item. When set, the `default_tax_rates` on the invoice do not apply to this line item. Pass an empty string to remove previously-defined tax rates.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        attr_accessor :tax_rates
        sig {
          params(amount: T.nilable(Integer), description: T.nilable(String), discountable: T.nilable(T::Boolean), discounts: T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::UpdateLinesParams::Line::Discount])), id: String, metadata: T.nilable(T.any(String, T::Hash[String, String])), period: T.nilable(::Stripe::InvoiceService::UpdateLinesParams::Line::Period), price_data: T.nilable(::Stripe::InvoiceService::UpdateLinesParams::Line::PriceData), pricing: T.nilable(::Stripe::InvoiceService::UpdateLinesParams::Line::Pricing), quantity: T.nilable(Integer), tax_amounts: T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::UpdateLinesParams::Line::TaxAmount])), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
         }
        def initialize(
          amount: nil,
          description: nil,
          discountable: nil,
          discounts: nil,
          id: nil,
          metadata: nil,
          period: nil,
          price_data: nil,
          pricing: nil,
          quantity: nil,
          tax_amounts: nil,
          tax_rates: nil
        ); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. For [type=subscription](https://stripe.com/docs/api/invoices/line_item#invoice_line_item_object-type) line items, the incoming metadata specified on the request is directly used to set this value, in contrast to [type=invoiceitem](api/invoices/line_item#invoice_line_item_object-type) line items, where any existing metadata on the invoice line is merged with the incoming data.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :invoice_metadata
      # The line items to update.
      sig { returns(T::Array[::Stripe::InvoiceService::UpdateLinesParams::Line]) }
      attr_accessor :lines
      sig {
        params(expand: T.nilable(T::Array[String]), invoice_metadata: T.nilable(T.any(String, T::Hash[String, String])), lines: T::Array[::Stripe::InvoiceService::UpdateLinesParams::Line]).void
       }
      def initialize(expand: nil, invoice_metadata: nil, lines: nil); end
    end
    class VoidInvoiceParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class CreatePreviewParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        class Liability < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(T.nilable(String)) }
          attr_accessor :account
          # Type of the account referenced in the request.
          sig { returns(String) }
          attr_accessor :type
          sig { params(account: T.nilable(String), type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # Whether Stripe automatically computes tax on this invoice. Note that incompatible invoice items (invoice items with manually specified [tax rates](https://stripe.com/docs/api/tax_rates), negative amounts, or `tax_behavior=unspecified`) cannot be added to automatic tax invoices.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        sig {
          returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::AutomaticTax::Liability))
         }
        attr_accessor :liability
        sig {
          params(enabled: T::Boolean, liability: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::AutomaticTax::Liability)).void
         }
        def initialize(enabled: nil, liability: nil); end
      end
      class CustomerDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          attr_accessor :state
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
           }
          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          ); end
        end
        class Shipping < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_accessor :city
            # A freeform text field for the country. However, in order to activate some tax features, the format should be a two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_accessor :state
            sig {
              params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
             }
            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            ); end
          end
          # Customer shipping address.
          sig {
            returns(::Stripe::InvoiceService::CreatePreviewParams::CustomerDetails::Shipping::Address)
           }
          attr_accessor :address
          # Customer name.
          sig { returns(String) }
          attr_accessor :name
          # Customer phone (including extension).
          sig { returns(T.nilable(String)) }
          attr_accessor :phone
          sig {
            params(address: ::Stripe::InvoiceService::CreatePreviewParams::CustomerDetails::Shipping::Address, name: String, phone: T.nilable(String)).void
           }
          def initialize(address: nil, name: nil, phone: nil); end
        end
        class Tax < Stripe::RequestParams
          # A recent IP address of the customer used for tax reporting and tax location inference. Stripe recommends updating the IP address when a new PaymentMethod is attached or the address field on the customer is updated. We recommend against updating this field more frequently since it could result in unexpected tax location/reporting outcomes.
          sig { returns(T.nilable(String)) }
          attr_accessor :ip_address
          sig { params(ip_address: T.nilable(String)).void }
          def initialize(ip_address: nil); end
        end
        class TaxId < Stripe::RequestParams
          # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `aw_tin`, `az_tin`, `ba_tin`, `bb_tin`, `bd_bin`, `bf_ifu`, `bg_uic`, `bh_vat`, `bj_ifu`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cm_niu`, `cn_tin`, `co_nit`, `cr_tin`, `cv_nif`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `et_tin`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kg_tin`, `kh_tin`, `kr_brn`, `kz_bin`, `la_tin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
          sig { returns(String) }
          attr_accessor :type
          # Value of the tax ID.
          sig { returns(String) }
          attr_accessor :value
          sig { params(type: String, value: String).void }
          def initialize(type: nil, value: nil); end
        end
        # The customer's address.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::InvoiceService::CreatePreviewParams::CustomerDetails::Address)))
         }
        attr_accessor :address
        # The customer's shipping information. Appears on invoices emailed to this customer.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::InvoiceService::CreatePreviewParams::CustomerDetails::Shipping)))
         }
        attr_accessor :shipping
        # Tax details about the customer.
        sig {
          returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::CustomerDetails::Tax))
         }
        attr_accessor :tax
        # The customer's tax exemption. One of `none`, `exempt`, or `reverse`.
        sig { returns(T.nilable(T.any(String, String))) }
        attr_accessor :tax_exempt
        # The customer's tax IDs.
        sig {
          returns(T.nilable(T::Array[::Stripe::InvoiceService::CreatePreviewParams::CustomerDetails::TaxId]))
         }
        attr_accessor :tax_ids
        sig {
          params(address: T.nilable(T.any(String, ::Stripe::InvoiceService::CreatePreviewParams::CustomerDetails::Address)), shipping: T.nilable(T.any(String, ::Stripe::InvoiceService::CreatePreviewParams::CustomerDetails::Shipping)), tax: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::CustomerDetails::Tax), tax_exempt: T.nilable(T.any(String, String)), tax_ids: T.nilable(T::Array[::Stripe::InvoiceService::CreatePreviewParams::CustomerDetails::TaxId])).void
         }
        def initialize(address: nil, shipping: nil, tax: nil, tax_exempt: nil, tax_ids: nil); end
      end
      class Discount < Stripe::RequestParams
        # ID of the coupon to create a new discount for.
        sig { returns(T.nilable(String)) }
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(T.nilable(String)) }
        attr_accessor :discount
        # ID of the promotion code to create a new discount for.
        sig { returns(T.nilable(String)) }
        attr_accessor :promotion_code
        sig {
          params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
         }
        def initialize(coupon: nil, discount: nil, promotion_code: nil); end
      end
      class InvoiceItem < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          # ID of the coupon to create a new discount for.
          sig { returns(T.nilable(String)) }
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(T.nilable(String)) }
          attr_accessor :discount
          # ID of the promotion code to create a new discount for.
          sig { returns(T.nilable(String)) }
          attr_accessor :promotion_code
          sig {
            params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
           }
          def initialize(coupon: nil, discount: nil, promotion_code: nil); end
        end
        class Period < Stripe::RequestParams
          # The end of the period, which must be greater than or equal to the start. This value is inclusive.
          sig { returns(Integer) }
          attr_accessor :end
          # The start of the period. This value is inclusive.
          sig { returns(Integer) }
          attr_accessor :start
          sig { params(end_: Integer, start: Integer).void }
          def initialize(end_: nil, start: nil); end
        end
        class PriceData < Stripe::RequestParams
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
          sig { returns(String) }
          attr_accessor :product
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_behavior
          # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(T.nilable(String)) }
          attr_accessor :unit_amount_decimal
          sig {
            params(currency: String, product: String, tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
           }
          def initialize(
            currency: nil,
            product: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          ); end
        end
        # The integer amount in cents (or local equivalent) of previewed invoice item.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). Only applicable to new invoice items.
        sig { returns(T.nilable(String)) }
        attr_accessor :currency
        # An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # Explicitly controls whether discounts apply to this invoice item. Defaults to true, except for negative invoice items.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :discountable
        # The coupons to redeem into discounts for the invoice item in the preview.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::CreatePreviewParams::InvoiceItem::Discount])))
         }
        attr_accessor :discounts
        # The ID of the invoice item to update in preview. If not specified, a new invoice item will be added to the preview of the upcoming invoice.
        sig { returns(T.nilable(String)) }
        attr_accessor :invoiceitem
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        attr_accessor :metadata
        # The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://stripe.com/docs/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://stripe.com/docs/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
        sig {
          returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::InvoiceItem::Period))
         }
        attr_accessor :period
        # The ID of the price object. One of `price` or `price_data` is required.
        sig { returns(T.nilable(String)) }
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
        sig {
          returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::InvoiceItem::PriceData))
         }
        attr_accessor :price_data
        # Non-negative integer. The quantity of units for the invoice item.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :quantity
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        sig { returns(T.nilable(String)) }
        attr_accessor :tax_behavior
        # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :tax_code
        # The tax rates that apply to the item. When set, any `default_tax_rates` do not apply to this item.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        attr_accessor :tax_rates
        # The integer unit amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. This unit_amount will be multiplied by the quantity to get the full amount. If you want to apply a credit to the customer's account, pass a negative unit_amount.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :unit_amount
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(T.nilable(String)) }
        attr_accessor :unit_amount_decimal
        sig {
          params(amount: T.nilable(Integer), currency: T.nilable(String), description: T.nilable(String), discountable: T.nilable(T::Boolean), discounts: T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::CreatePreviewParams::InvoiceItem::Discount])), invoiceitem: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), period: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::InvoiceItem::Period), price: T.nilable(String), price_data: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::InvoiceItem::PriceData), quantity: T.nilable(Integer), tax_behavior: T.nilable(String), tax_code: T.nilable(String), tax_rates: T.nilable(T.any(String, T::Array[String])), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
         }
        def initialize(
          amount: nil,
          currency: nil,
          description: nil,
          discountable: nil,
          discounts: nil,
          invoiceitem: nil,
          metadata: nil,
          period: nil,
          price: nil,
          price_data: nil,
          quantity: nil,
          tax_behavior: nil,
          tax_code: nil,
          tax_rates: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        ); end
      end
      class Issuer < Stripe::RequestParams
        # The connected account being referenced when `type` is `account`.
        sig { returns(T.nilable(String)) }
        attr_accessor :account
        # Type of the account referenced in the request.
        sig { returns(String) }
        attr_accessor :type
        sig { params(account: T.nilable(String), type: String).void }
        def initialize(account: nil, type: nil); end
      end
      class ScheduleDetails < Stripe::RequestParams
        class BillingMode < Stripe::RequestParams
          # Controls the calculation and orchestration of prorations and invoices for subscriptions.
          sig { returns(String) }
          attr_accessor :type
          sig { params(type: String).void }
          def initialize(type: nil); end
        end
        class Phase < Stripe::RequestParams
          class AddInvoiceItem < Stripe::RequestParams
            class Discount < Stripe::RequestParams
              # ID of the coupon to create a new discount for.
              sig { returns(T.nilable(String)) }
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              sig { returns(T.nilable(String)) }
              attr_accessor :discount
              # ID of the promotion code to create a new discount for.
              sig { returns(T.nilable(String)) }
              attr_accessor :promotion_code
              sig {
                params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
               }
              def initialize(coupon: nil, discount: nil, promotion_code: nil); end
            end
            class Period < Stripe::RequestParams
              class End < Stripe::RequestParams
                # A precise Unix timestamp for the end of the invoice item period. Must be greater than or equal to `period.start`.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :timestamp
                # Select how to calculate the end of the invoice item period.
                sig { returns(String) }
                attr_accessor :type
                sig { params(timestamp: T.nilable(Integer), type: String).void }
                def initialize(timestamp: nil, type: nil); end
              end
              class Start < Stripe::RequestParams
                # A precise Unix timestamp for the start of the invoice item period. Must be less than or equal to `period.end`.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :timestamp
                # Select how to calculate the start of the invoice item period.
                sig { returns(String) }
                attr_accessor :type
                sig { params(timestamp: T.nilable(Integer), type: String).void }
                def initialize(timestamp: nil, type: nil); end
              end
              # End of the invoice item period.
              sig {
                returns(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::AddInvoiceItem::Period::End)
               }
              attr_accessor :end
              # Start of the invoice item period.
              sig {
                returns(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::AddInvoiceItem::Period::Start)
               }
              attr_accessor :start
              sig {
                params(end_: ::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::AddInvoiceItem::Period::End, start: ::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::AddInvoiceItem::Period::Start).void
               }
              def initialize(end_: nil, start: nil); end
            end
            class PriceData < Stripe::RequestParams
              # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
              sig { returns(String) }
              attr_accessor :currency
              # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
              sig { returns(String) }
              attr_accessor :product
              # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
              sig { returns(T.nilable(String)) }
              attr_accessor :tax_behavior
              # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge or a negative integer representing the amount to credit to the customer.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :unit_amount
              # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
              sig { returns(T.nilable(String)) }
              attr_accessor :unit_amount_decimal
              sig {
                params(currency: String, product: String, tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
               }
              def initialize(
                currency: nil,
                product: nil,
                tax_behavior: nil,
                unit_amount: nil,
                unit_amount_decimal: nil
              ); end
            end
            # The coupons to redeem into discounts for the item.
            sig {
              returns(T.nilable(T::Array[::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::AddInvoiceItem::Discount]))
             }
            attr_accessor :discounts
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_accessor :metadata
            # The period associated with this invoice item. Defaults to the period of the underlying subscription that surrounds the start of the phase.
            sig {
              returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::AddInvoiceItem::Period))
             }
            attr_accessor :period
            # The ID of the price object. One of `price` or `price_data` is required.
            sig { returns(T.nilable(String)) }
            attr_accessor :price
            # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
            sig {
              returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::AddInvoiceItem::PriceData))
             }
            attr_accessor :price_data
            # Quantity for this item. Defaults to 1.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :quantity
            # The tax rates which apply to the item. When set, the `default_tax_rates` do not apply to this item.
            sig { returns(T.nilable(T.any(String, T::Array[String]))) }
            attr_accessor :tax_rates
            sig {
              params(discounts: T.nilable(T::Array[::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::AddInvoiceItem::Discount]), metadata: T.nilable(T::Hash[String, String]), period: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::AddInvoiceItem::Period), price: T.nilable(String), price_data: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::AddInvoiceItem::PriceData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
             }
            def initialize(
              discounts: nil,
              metadata: nil,
              period: nil,
              price: nil,
              price_data: nil,
              quantity: nil,
              tax_rates: nil
            ); end
          end
          class AutomaticTax < Stripe::RequestParams
            class Liability < Stripe::RequestParams
              # The connected account being referenced when `type` is `account`.
              sig { returns(T.nilable(String)) }
              attr_accessor :account
              # Type of the account referenced in the request.
              sig { returns(String) }
              attr_accessor :type
              sig { params(account: T.nilable(String), type: String).void }
              def initialize(account: nil, type: nil); end
            end
            # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
            sig { returns(T::Boolean) }
            attr_accessor :enabled
            # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
            sig {
              returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::AutomaticTax::Liability))
             }
            attr_accessor :liability
            sig {
              params(enabled: T::Boolean, liability: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::AutomaticTax::Liability)).void
             }
            def initialize(enabled: nil, liability: nil); end
          end
          class BillingThresholds < Stripe::RequestParams
            # Monetary threshold that triggers the subscription to advance to a new billing period
            sig { returns(T.nilable(Integer)) }
            attr_accessor :amount_gte
            # Indicates if the `billing_cycle_anchor` should be reset when a threshold is reached. If true, `billing_cycle_anchor` will be updated to the date/time the threshold was last reached; otherwise, the value will remain unchanged.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :reset_billing_cycle_anchor
            sig {
              params(amount_gte: T.nilable(Integer), reset_billing_cycle_anchor: T.nilable(T::Boolean)).void
             }
            def initialize(amount_gte: nil, reset_billing_cycle_anchor: nil); end
          end
          class Discount < Stripe::RequestParams
            # ID of the coupon to create a new discount for.
            sig { returns(T.nilable(String)) }
            attr_accessor :coupon
            # ID of an existing discount on the object (or one of its ancestors) to reuse.
            sig { returns(T.nilable(String)) }
            attr_accessor :discount
            # ID of the promotion code to create a new discount for.
            sig { returns(T.nilable(String)) }
            attr_accessor :promotion_code
            sig {
              params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
             }
            def initialize(coupon: nil, discount: nil, promotion_code: nil); end
          end
          class Duration < Stripe::RequestParams
            # Specifies phase duration. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            # The multiplier applied to the interval.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :interval_count
            sig { params(interval: String, interval_count: T.nilable(Integer)).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          class InvoiceSettings < Stripe::RequestParams
            class Issuer < Stripe::RequestParams
              # The connected account being referenced when `type` is `account`.
              sig { returns(T.nilable(String)) }
              attr_accessor :account
              # Type of the account referenced in the request.
              sig { returns(String) }
              attr_accessor :type
              sig { params(account: T.nilable(String), type: String).void }
              def initialize(account: nil, type: nil); end
            end
            # The account tax IDs associated with this phase of the subscription schedule. Will be set on invoices generated by this phase of the subscription schedule.
            sig { returns(T.nilable(T.any(String, T::Array[String]))) }
            attr_accessor :account_tax_ids
            # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `billing=charge_automatically`.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :days_until_due
            # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
            sig {
              returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::InvoiceSettings::Issuer))
             }
            attr_accessor :issuer
            sig {
              params(account_tax_ids: T.nilable(T.any(String, T::Array[String])), days_until_due: T.nilable(Integer), issuer: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::InvoiceSettings::Issuer)).void
             }
            def initialize(account_tax_ids: nil, days_until_due: nil, issuer: nil); end
          end
          class Item < Stripe::RequestParams
            class BillingThresholds < Stripe::RequestParams
              # Number of units that meets the billing threshold to advance the subscription to a new billing period (e.g., it takes 10 $5 units to meet a $50 [monetary threshold](https://stripe.com/docs/api/subscriptions/update#update_subscription-billing_thresholds-amount_gte))
              sig { returns(Integer) }
              attr_accessor :usage_gte
              sig { params(usage_gte: Integer).void }
              def initialize(usage_gte: nil); end
            end
            class Discount < Stripe::RequestParams
              # ID of the coupon to create a new discount for.
              sig { returns(T.nilable(String)) }
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              sig { returns(T.nilable(String)) }
              attr_accessor :discount
              # ID of the promotion code to create a new discount for.
              sig { returns(T.nilable(String)) }
              attr_accessor :promotion_code
              sig {
                params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
               }
              def initialize(coupon: nil, discount: nil, promotion_code: nil); end
            end
            class PriceData < Stripe::RequestParams
              class Recurring < Stripe::RequestParams
                # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
                sig { returns(String) }
                attr_accessor :interval
                # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
                sig { returns(T.nilable(Integer)) }
                attr_accessor :interval_count
                sig { params(interval: String, interval_count: T.nilable(Integer)).void }
                def initialize(interval: nil, interval_count: nil); end
              end
              # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
              sig { returns(String) }
              attr_accessor :currency
              # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
              sig { returns(String) }
              attr_accessor :product
              # The recurring components of a price such as `interval` and `interval_count`.
              sig {
                returns(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::Item::PriceData::Recurring)
               }
              attr_accessor :recurring
              # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
              sig { returns(T.nilable(String)) }
              attr_accessor :tax_behavior
              # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :unit_amount
              # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
              sig { returns(T.nilable(String)) }
              attr_accessor :unit_amount_decimal
              sig {
                params(currency: String, product: String, recurring: ::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::Item::PriceData::Recurring, tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
               }
              def initialize(
                currency: nil,
                product: nil,
                recurring: nil,
                tax_behavior: nil,
                unit_amount: nil,
                unit_amount_decimal: nil
              ); end
            end
            # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::Item::BillingThresholds)))
             }
            attr_accessor :billing_thresholds
            # The coupons to redeem into discounts for the subscription item.
            sig {
              returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::Item::Discount])))
             }
            attr_accessor :discounts
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a configuration item. Metadata on a configuration item will update the underlying subscription item's `metadata` when the phase is entered, adding new keys and replacing existing keys. Individual keys in the subscription item's `metadata` can be unset by posting an empty value to them in the configuration item's `metadata`. To unset all keys in the subscription item's `metadata`, update the subscription item directly or unset every key individually from the configuration item's `metadata`.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_accessor :metadata
            # The plan ID to subscribe to. You may specify the same ID in `plan` and `price`.
            sig { returns(T.nilable(String)) }
            attr_accessor :plan
            # The ID of the price object.
            sig { returns(T.nilable(String)) }
            attr_accessor :price
            # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
            sig {
              returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::Item::PriceData))
             }
            attr_accessor :price_data
            # Quantity for the given price. Can be set only if the price's `usage_type` is `licensed` and not `metered`.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :quantity
            # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
            sig { returns(T.nilable(T.any(String, T::Array[String]))) }
            attr_accessor :tax_rates
            sig {
              params(billing_thresholds: T.nilable(T.any(String, ::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::Item::BillingThresholds)), discounts: T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::Item::Discount])), metadata: T.nilable(T::Hash[String, String]), plan: T.nilable(String), price: T.nilable(String), price_data: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::Item::PriceData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
             }
            def initialize(
              billing_thresholds: nil,
              discounts: nil,
              metadata: nil,
              plan: nil,
              price: nil,
              price_data: nil,
              quantity: nil,
              tax_rates: nil
            ); end
          end
          class TransferData < Stripe::RequestParams
            # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
            sig { returns(T.nilable(Float)) }
            attr_accessor :amount_percent
            # ID of an existing, connected Stripe account.
            sig { returns(String) }
            attr_accessor :destination
            sig { params(amount_percent: T.nilable(Float), destination: String).void }
            def initialize(amount_percent: nil, destination: nil); end
          end
          # A list of prices and quantities that will generate invoice items appended to the next invoice for this phase. You may pass up to 20 items.
          sig {
            returns(T.nilable(T::Array[::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::AddInvoiceItem]))
           }
          attr_accessor :add_invoice_items
          # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
          sig { returns(T.nilable(Float)) }
          attr_accessor :application_fee_percent
          # Automatic tax settings for this phase.
          sig {
            returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::AutomaticTax))
           }
          attr_accessor :automatic_tax
          # Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_cycle_anchor
          # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::BillingThresholds)))
           }
          attr_accessor :billing_thresholds
          # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation.
          sig { returns(T.nilable(String)) }
          attr_accessor :collection_method
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          attr_accessor :currency
          # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
          sig { returns(T.nilable(String)) }
          attr_accessor :default_payment_method
          # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will set the Subscription's [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates), which means they will be the Invoice's [`default_tax_rates`](https://stripe.com/docs/api/invoices/create#create_invoice-default_tax_rates) for any Invoices issued by the Subscription during this Phase.
          sig { returns(T.nilable(T.any(String, T::Array[String]))) }
          attr_accessor :default_tax_rates
          # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
          sig { returns(T.nilable(String)) }
          attr_accessor :description
          # The coupons to redeem into discounts for the schedule phase. If not specified, inherits the discount from the subscription's customer. Pass an empty string to avoid inheriting any discounts.
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::Discount])))
           }
          attr_accessor :discounts
          # The number of intervals the phase should last. If set, `end_date` must not be set.
          sig {
            returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::Duration))
           }
          attr_accessor :duration
          # The date at which this phase of the subscription schedule ends. If set, `iterations` must not be set.
          sig { returns(T.nilable(T.any(Integer, String))) }
          attr_accessor :end_date
          # All invoices will be billed using the specified settings.
          sig {
            returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::InvoiceSettings))
           }
          attr_accessor :invoice_settings
          # List of configuration items, each with an attached price, to apply during this phase of the subscription schedule.
          sig {
            returns(T::Array[::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::Item])
           }
          attr_accessor :items
          # Integer representing the multiplier applied to the price interval. For example, `iterations=2` applied to a price with `interval=month` and `interval_count=3` results in a phase of duration `2 * 3 months = 6 months`. If set, `end_date` must not be set. This parameter is deprecated and will be removed in a future version. Use `duration` instead.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :iterations
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a phase. Metadata on a schedule's phase will update the underlying subscription's `metadata` when the phase is entered, adding new keys and replacing existing keys in the subscription's `metadata`. Individual keys in the subscription's `metadata` can be unset by posting an empty value to them in the phase's `metadata`. To unset all keys in the subscription's `metadata`, update the subscription directly or unset every key individually from the phase's `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # The account on behalf of which to charge, for each of the associated subscription's invoices.
          sig { returns(T.nilable(String)) }
          attr_accessor :on_behalf_of
          # Controls whether the subscription schedule should create [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when transitioning to this phase if there is a difference in billing configuration. It's different from the request-level [proration_behavior](https://stripe.com/docs/api/subscription_schedules/update#update_subscription_schedule-proration_behavior) parameter which controls what happens if the update request affects the billing configuration (item price, quantity, etc.) of the current phase.
          sig { returns(T.nilable(String)) }
          attr_accessor :proration_behavior
          # The date at which this phase of the subscription schedule starts or `now`. Must be set on the first phase.
          sig { returns(T.nilable(T.any(Integer, String))) }
          attr_accessor :start_date
          # The data with which to automatically create a Transfer for each of the associated subscription's invoices.
          sig {
            returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::TransferData))
           }
          attr_accessor :transfer_data
          # If set to true the entire phase is counted as a trial and the customer will not be charged for any fees.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :trial
          # Sets the phase to trialing from the start date to this date. Must be before the phase end date, can not be combined with `trial`
          sig { returns(T.nilable(T.any(Integer, String))) }
          attr_accessor :trial_end
          sig {
            params(add_invoice_items: T.nilable(T::Array[::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::AddInvoiceItem]), application_fee_percent: T.nilable(Float), automatic_tax: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::AutomaticTax), billing_cycle_anchor: T.nilable(String), billing_thresholds: T.nilable(T.any(String, ::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::BillingThresholds)), collection_method: T.nilable(String), currency: T.nilable(String), default_payment_method: T.nilable(String), default_tax_rates: T.nilable(T.any(String, T::Array[String])), description: T.nilable(String), discounts: T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::Discount])), duration: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::Duration), end_date: T.nilable(T.any(Integer, String)), invoice_settings: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::InvoiceSettings), items: T::Array[::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::Item], iterations: T.nilable(Integer), metadata: T.nilable(T::Hash[String, String]), on_behalf_of: T.nilable(String), proration_behavior: T.nilable(String), start_date: T.nilable(T.any(Integer, String)), transfer_data: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase::TransferData), trial: T.nilable(T::Boolean), trial_end: T.nilable(T.any(Integer, String))).void
           }
          def initialize(
            add_invoice_items: nil,
            application_fee_percent: nil,
            automatic_tax: nil,
            billing_cycle_anchor: nil,
            billing_thresholds: nil,
            collection_method: nil,
            currency: nil,
            default_payment_method: nil,
            default_tax_rates: nil,
            description: nil,
            discounts: nil,
            duration: nil,
            end_date: nil,
            invoice_settings: nil,
            items: nil,
            iterations: nil,
            metadata: nil,
            on_behalf_of: nil,
            proration_behavior: nil,
            start_date: nil,
            transfer_data: nil,
            trial: nil,
            trial_end: nil
          ); end
        end
        # Controls how prorations and invoices for subscriptions are calculated and orchestrated.
        sig {
          returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::BillingMode))
         }
        attr_accessor :billing_mode
        # Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
        sig { returns(T.nilable(String)) }
        attr_accessor :end_behavior
        # List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase.
        sig {
          returns(T.nilable(T::Array[::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase]))
         }
        attr_accessor :phases
        # In cases where the `schedule_details` params update the currently active phase, specifies if and how to prorate at the time of the request.
        sig { returns(T.nilable(String)) }
        attr_accessor :proration_behavior
        sig {
          params(billing_mode: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::BillingMode), end_behavior: T.nilable(String), phases: T.nilable(T::Array[::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails::Phase]), proration_behavior: T.nilable(String)).void
         }
        def initialize(
          billing_mode: nil,
          end_behavior: nil,
          phases: nil,
          proration_behavior: nil
        ); end
      end
      class SubscriptionDetails < Stripe::RequestParams
        class BillingMode < Stripe::RequestParams
          # Controls the calculation and orchestration of prorations and invoices for subscriptions.
          sig { returns(String) }
          attr_accessor :type
          sig { params(type: String).void }
          def initialize(type: nil); end
        end
        class Item < Stripe::RequestParams
          class BillingThresholds < Stripe::RequestParams
            # Number of units that meets the billing threshold to advance the subscription to a new billing period (e.g., it takes 10 $5 units to meet a $50 [monetary threshold](https://stripe.com/docs/api/subscriptions/update#update_subscription-billing_thresholds-amount_gte))
            sig { returns(Integer) }
            attr_accessor :usage_gte
            sig { params(usage_gte: Integer).void }
            def initialize(usage_gte: nil); end
          end
          class Discount < Stripe::RequestParams
            # ID of the coupon to create a new discount for.
            sig { returns(T.nilable(String)) }
            attr_accessor :coupon
            # ID of an existing discount on the object (or one of its ancestors) to reuse.
            sig { returns(T.nilable(String)) }
            attr_accessor :discount
            # ID of the promotion code to create a new discount for.
            sig { returns(T.nilable(String)) }
            attr_accessor :promotion_code
            sig {
              params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
             }
            def initialize(coupon: nil, discount: nil, promotion_code: nil); end
          end
          class PriceData < Stripe::RequestParams
            class Recurring < Stripe::RequestParams
              # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
              sig { returns(T.nilable(Integer)) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: T.nilable(Integer)).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
            sig { returns(String) }
            attr_accessor :product
            # The recurring components of a price such as `interval` and `interval_count`.
            sig {
              returns(::Stripe::InvoiceService::CreatePreviewParams::SubscriptionDetails::Item::PriceData::Recurring)
             }
            attr_accessor :recurring
            # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
            sig { returns(T.nilable(String)) }
            attr_accessor :tax_behavior
            # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :unit_amount
            # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            sig { returns(T.nilable(String)) }
            attr_accessor :unit_amount_decimal
            sig {
              params(currency: String, product: String, recurring: ::Stripe::InvoiceService::CreatePreviewParams::SubscriptionDetails::Item::PriceData::Recurring, tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
             }
            def initialize(
              currency: nil,
              product: nil,
              recurring: nil,
              tax_behavior: nil,
              unit_amount: nil,
              unit_amount_decimal: nil
            ); end
          end
          # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::InvoiceService::CreatePreviewParams::SubscriptionDetails::Item::BillingThresholds)))
           }
          attr_accessor :billing_thresholds
          # Delete all usage for a given subscription item. You must pass this when deleting a usage records subscription item. `clear_usage` has no effect if the plan has a billing meter attached.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :clear_usage
          # A flag that, if set to `true`, will delete the specified item.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :deleted
          # The coupons to redeem into discounts for the subscription item.
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::CreatePreviewParams::SubscriptionDetails::Item::Discount])))
           }
          attr_accessor :discounts
          # Subscription item to update.
          sig { returns(T.nilable(String)) }
          attr_accessor :id
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
          attr_accessor :metadata
          # Plan ID for this item, as a string.
          sig { returns(T.nilable(String)) }
          attr_accessor :plan
          # The ID of the price object. One of `price` or `price_data` is required. When changing a subscription item's price, `quantity` is set to 1 unless a `quantity` parameter is provided.
          sig { returns(T.nilable(String)) }
          attr_accessor :price
          # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
          sig {
            returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::SubscriptionDetails::Item::PriceData))
           }
          attr_accessor :price_data
          # Quantity for this item.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :quantity
          # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
          sig { returns(T.nilable(T.any(String, T::Array[String]))) }
          attr_accessor :tax_rates
          sig {
            params(billing_thresholds: T.nilable(T.any(String, ::Stripe::InvoiceService::CreatePreviewParams::SubscriptionDetails::Item::BillingThresholds)), clear_usage: T.nilable(T::Boolean), deleted: T.nilable(T::Boolean), discounts: T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::CreatePreviewParams::SubscriptionDetails::Item::Discount])), id: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), plan: T.nilable(String), price: T.nilable(String), price_data: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::SubscriptionDetails::Item::PriceData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
           }
          def initialize(
            billing_thresholds: nil,
            clear_usage: nil,
            deleted: nil,
            discounts: nil,
            id: nil,
            metadata: nil,
            plan: nil,
            price: nil,
            price_data: nil,
            quantity: nil,
            tax_rates: nil
          ); end
        end
        # For new subscriptions, a future timestamp to anchor the subscription's [billing cycle](https://stripe.com/docs/subscriptions/billing-cycle). This is used to determine the date of the first full invoice, and, for plans with `month` or `year` intervals, the day of the month for subsequent invoices. For existing subscriptions, the value can only be set to `now` or `unchanged`.
        sig { returns(T.nilable(T.any(String, Integer))) }
        attr_accessor :billing_cycle_anchor
        # Controls how prorations and invoices for subscriptions are calculated and orchestrated.
        sig {
          returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::SubscriptionDetails::BillingMode))
         }
        attr_accessor :billing_mode
        # A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using `proration_behavior`. If set during a future period, this will always cause a proration for that period.
        sig { returns(T.nilable(T.any(String, T.any(Integer, String)))) }
        attr_accessor :cancel_at
        # Indicate whether this subscription should cancel at the end of the current period (`current_period_end`). Defaults to `false`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :cancel_at_period_end
        # This simulates the subscription being canceled or expired immediately.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :cancel_now
        # If provided, the invoice returned will preview updating or creating a subscription with these default tax rates. The default tax rates will apply to any line item that does not have `tax_rates` set.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        attr_accessor :default_tax_rates
        # A list of up to 20 subscription items, each with an attached price.
        sig {
          returns(T.nilable(T::Array[::Stripe::InvoiceService::CreatePreviewParams::SubscriptionDetails::Item]))
         }
        attr_accessor :items
        # Determines how to handle [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`.
        sig { returns(T.nilable(String)) }
        attr_accessor :proration_behavior
        # If previewing an update to a subscription, and doing proration, `subscription_details.proration_date` forces the proration to be calculated as though the update was done at the specified time. The time given must be within the current subscription period and within the current phase of the schedule backing this subscription, if the schedule exists. If set, `subscription`, and one of `subscription_details.items`, or `subscription_details.trial_end` are required. Also, `subscription_details.proration_behavior` cannot be set to 'none'.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :proration_date
        # For paused subscriptions, setting `subscription_details.resume_at` to `now` will preview the invoice that will be generated if the subscription is resumed.
        sig { returns(T.nilable(String)) }
        attr_accessor :resume_at
        # Date a subscription is intended to start (can be future or past).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :start_date
        # If provided, the invoice returned will preview updating or creating a subscription with that trial end. If set, one of `subscription_details.items` or `subscription` is required.
        sig { returns(T.nilable(T.any(String, Integer))) }
        attr_accessor :trial_end
        sig {
          params(billing_cycle_anchor: T.nilable(T.any(String, Integer)), billing_mode: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::SubscriptionDetails::BillingMode), cancel_at: T.nilable(T.any(String, T.any(Integer, String))), cancel_at_period_end: T.nilable(T::Boolean), cancel_now: T.nilable(T::Boolean), default_tax_rates: T.nilable(T.any(String, T::Array[String])), items: T.nilable(T::Array[::Stripe::InvoiceService::CreatePreviewParams::SubscriptionDetails::Item]), proration_behavior: T.nilable(String), proration_date: T.nilable(Integer), resume_at: T.nilable(String), start_date: T.nilable(Integer), trial_end: T.nilable(T.any(String, Integer))).void
         }
        def initialize(
          billing_cycle_anchor: nil,
          billing_mode: nil,
          cancel_at: nil,
          cancel_at_period_end: nil,
          cancel_now: nil,
          default_tax_rates: nil,
          items: nil,
          proration_behavior: nil,
          proration_date: nil,
          resume_at: nil,
          start_date: nil,
          trial_end: nil
        ); end
      end
      # Settings for automatic tax lookup for this invoice preview.
      sig { returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::AutomaticTax)) }
      attr_accessor :automatic_tax
      # The currency to preview this invoice in. Defaults to that of `customer` if not specified.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency
      # The identifier of the customer whose upcoming invoice you'd like to retrieve. If `automatic_tax` is enabled then one of `customer`, `customer_details`, `subscription`, or `schedule` must be set.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # Details about the customer you want to invoice or overrides for an existing customer. If `automatic_tax` is enabled then one of `customer`, `customer_details`, `subscription`, or `schedule` must be set.
      sig { returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::CustomerDetails)) }
      attr_accessor :customer_details
      # The coupons to redeem into discounts for the invoice preview. If not specified, inherits the discount from the subscription or customer. This works for both coupons directly applied to an invoice and coupons applied to a subscription. Pass an empty string to avoid inheriting any discounts.
      sig {
        returns(T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::CreatePreviewParams::Discount])))
       }
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # List of invoice items to add or update in the upcoming invoice preview (up to 250).
      sig {
        returns(T.nilable(T::Array[::Stripe::InvoiceService::CreatePreviewParams::InvoiceItem]))
       }
      attr_accessor :invoice_items
      # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
      sig { returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::Issuer)) }
      attr_accessor :issuer
      # The account (if any) for which the funds of the invoice payment are intended. If set, the invoice will be presented with the branding and support information of the specified account. See the [Invoices with Connect](https://stripe.com/docs/billing/invoices/connect) documentation for details.
      sig { returns(T.nilable(String)) }
      attr_accessor :on_behalf_of
      # Customizes the types of values to include when calculating the invoice. Defaults to `next` if unspecified.
      sig { returns(T.nilable(String)) }
      attr_accessor :preview_mode
      # The identifier of the schedule whose upcoming invoice you'd like to retrieve. Cannot be used with subscription or subscription fields.
      sig { returns(T.nilable(String)) }
      attr_accessor :schedule
      # The schedule creation or modification params to apply as a preview. Cannot be used with `subscription` or `subscription_` prefixed fields.
      sig { returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails)) }
      attr_accessor :schedule_details
      # The identifier of the subscription for which you'd like to retrieve the upcoming invoice. If not provided, but a `subscription_details.items` is provided, you will preview creating a subscription with those items. If neither `subscription` nor `subscription_details.items` is provided, you will retrieve the next upcoming invoice from among the customer's subscriptions.
      sig { returns(T.nilable(String)) }
      attr_accessor :subscription
      # The subscription creation or modification params to apply as a preview. Cannot be used with `schedule` or `schedule_details` fields.
      sig { returns(T.nilable(::Stripe::InvoiceService::CreatePreviewParams::SubscriptionDetails)) }
      attr_accessor :subscription_details
      sig {
        params(automatic_tax: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::AutomaticTax), currency: T.nilable(String), customer: T.nilable(String), customer_details: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::CustomerDetails), discounts: T.nilable(T.any(String, T::Array[::Stripe::InvoiceService::CreatePreviewParams::Discount])), expand: T.nilable(T::Array[String]), invoice_items: T.nilable(T::Array[::Stripe::InvoiceService::CreatePreviewParams::InvoiceItem]), issuer: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::Issuer), on_behalf_of: T.nilable(String), preview_mode: T.nilable(String), schedule: T.nilable(String), schedule_details: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::ScheduleDetails), subscription: T.nilable(String), subscription_details: T.nilable(::Stripe::InvoiceService::CreatePreviewParams::SubscriptionDetails)).void
       }
      def initialize(
        automatic_tax: nil,
        currency: nil,
        customer: nil,
        customer_details: nil,
        discounts: nil,
        expand: nil,
        invoice_items: nil,
        issuer: nil,
        on_behalf_of: nil,
        preview_mode: nil,
        schedule: nil,
        schedule_details: nil,
        subscription: nil,
        subscription_details: nil
      ); end
    end
    # Adds multiple line items to an invoice. This is only possible when an invoice is still a draft.
    sig {
      params(invoice: String, params: T.any(::Stripe::InvoiceService::AddLinesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Invoice)
     }
    def add_lines(invoice, params = {}, opts = {}); end

    # Attaches a PaymentIntent or an Out of Band Payment to the invoice, adding it to the list of payments.
    #
    # For the PaymentIntent, when the PaymentIntent's status changes to succeeded, the payment is credited
    # to the invoice, increasing its amount_paid. When the invoice is fully paid, the
    # invoice's status becomes paid.
    #
    # If the PaymentIntent's status is already succeeded when it's attached, it's
    # credited to the invoice immediately.
    #
    # See: [Partial payments](https://docs.stripe.com/docs/invoicing/partial-payments) to learn more.
    sig {
      params(invoice: String, params: T.any(::Stripe::InvoiceService::AttachPaymentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Invoice)
     }
    def attach_payment(invoice, params = {}, opts = {}); end

    # This endpoint creates a draft invoice for a given customer. The invoice remains a draft until you [finalize the invoice, which allows you to [pay](#pay_invoice) or <a href="#send_invoice">send](https://docs.stripe.com/api#finalize_invoice) the invoice to your customers.
    sig {
      params(params: T.any(::Stripe::InvoiceService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Invoice)
     }
    def create(params = {}, opts = {}); end

    # At any time, you can preview the upcoming invoice for a subscription or subscription schedule. This will show you all the charges that are pending, including subscription renewal charges, invoice item charges, etc. It will also show you any discounts that are applicable to the invoice.
    #
    # You can also preview the effects of creating or updating a subscription or subscription schedule, including a preview of any prorations that will take place. To ensure that the actual proration is calculated exactly the same as the previewed proration, you should pass the subscription_details.proration_date parameter when doing the actual subscription update.
    #
    # The recommended way to get only the prorations being previewed on the invoice is to consider line items where parent.subscription_item_details.proration is true.
    #
    # Note that when you are viewing an upcoming invoice, you are simply viewing a preview – the invoice has not yet been created. As such, the upcoming invoice will not show up in invoice listing calls, and you cannot use the API to pay or edit the invoice. If you want to change the amount that your customer will be billed, you can add, remove, or update pending invoice items, or update the customer's discount.
    #
    # Note: Currency conversion calculations use the latest exchange rates. Exchange rates may vary between the time of the preview and the time of the actual invoice creation. [Learn more](https://docs.stripe.com/currencies/conversions)
    sig {
      params(params: T.any(::Stripe::InvoiceService::CreatePreviewParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Invoice)
     }
    def create_preview(params = {}, opts = {}); end

    # Permanently deletes a one-off invoice draft. This cannot be undone. Attempts to delete invoices that are no longer in a draft state will fail; once an invoice has been finalized or if an invoice is for a subscription, it must be [voided](https://docs.stripe.com/api#void_invoice).
    sig {
      params(invoice: String, params: T.any(::Stripe::InvoiceService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Invoice)
     }
    def delete(invoice, params = {}, opts = {}); end

    # Stripe automatically finalizes drafts before sending and attempting payment on invoices. However, if you'd like to finalize a draft invoice manually, you can do so using this method.
    sig {
      params(invoice: String, params: T.any(::Stripe::InvoiceService::FinalizeInvoiceParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Invoice)
     }
    def finalize_invoice(invoice, params = {}, opts = {}); end

    # You can list all invoices, or list the invoices for a specific customer. The invoices are returned sorted by creation date, with the most recently created invoices appearing first.
    sig {
      params(params: T.any(::Stripe::InvoiceService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Marking an invoice as uncollectible is useful for keeping track of bad debts that can be written off for accounting purposes.
    sig {
      params(invoice: String, params: T.any(::Stripe::InvoiceService::MarkUncollectibleParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Invoice)
     }
    def mark_uncollectible(invoice, params = {}, opts = {}); end

    # Stripe automatically creates and then attempts to collect payment on invoices for customers on subscriptions according to your [subscriptions settings](https://dashboard.stripe.com/account/billing/automatic). However, if you'd like to attempt payment on an invoice out of the normal collection schedule or for some other reason, you can do so.
    sig {
      params(invoice: String, params: T.any(::Stripe::InvoiceService::PayParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Invoice)
     }
    def pay(invoice, params = {}, opts = {}); end

    # Removes multiple line items from an invoice. This is only possible when an invoice is still a draft.
    sig {
      params(invoice: String, params: T.any(::Stripe::InvoiceService::RemoveLinesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Invoice)
     }
    def remove_lines(invoice, params = {}, opts = {}); end

    # Retrieves the invoice with the given ID.
    sig {
      params(invoice: String, params: T.any(::Stripe::InvoiceService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Invoice)
     }
    def retrieve(invoice, params = {}, opts = {}); end

    # Search for invoices you've previously created using Stripe's [Search Query Language](https://docs.stripe.com/docs/search#search-query-language).
    # Don't use search in read-after-write flows where strict consistency is necessary. Under normal operating
    # conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up
    # to an hour behind during outages. Search functionality is not available to merchants in India.
    sig {
      params(params: T.any(::Stripe::InvoiceService::SearchParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SearchResultObject)
     }
    def search(params = {}, opts = {}); end

    # Stripe will automatically send invoices to customers according to your [subscriptions settings](https://dashboard.stripe.com/account/billing/automatic). However, if you'd like to manually send an invoice to your customer out of the normal schedule, you can do so. When sending invoices that have already been paid, there will be no reference to the payment in the email.
    #
    # Requests made in test-mode result in no emails being sent, despite sending an invoice.sent event.
    sig {
      params(invoice: String, params: T.any(::Stripe::InvoiceService::SendInvoiceParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Invoice)
     }
    def send_invoice(invoice, params = {}, opts = {}); end

    # Draft invoices are fully editable. Once an invoice is [finalized](https://docs.stripe.com/docs/billing/invoices/workflow#finalized),
    # monetary values, as well as collection_method, become uneditable.
    #
    # If you would like to stop the Stripe Billing engine from automatically finalizing, reattempting payments on,
    # sending reminders for, or [automatically reconciling](https://docs.stripe.com/docs/billing/invoices/reconciliation) invoices, pass
    # auto_advance=false.
    sig {
      params(invoice: String, params: T.any(::Stripe::InvoiceService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Invoice)
     }
    def update(invoice, params = {}, opts = {}); end

    # Updates multiple line items on an invoice. This is only possible when an invoice is still a draft.
    sig {
      params(invoice: String, params: T.any(::Stripe::InvoiceService::UpdateLinesParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Invoice)
     }
    def update_lines(invoice, params = {}, opts = {}); end

    # Mark a finalized invoice as void. This cannot be undone. Voiding an invoice is similar to [deletion](https://docs.stripe.com/api#delete_invoice), however it only applies to finalized invoices and maintains a papertrail where the invoice can still be found.
    #
    # Consult with local regulations to determine whether and how an invoice might be amended, canceled, or voided in the jurisdiction you're doing business in. You might need to [issue another invoice or <a href="#create_credit_note">credit note](https://docs.stripe.com/api#create_invoice) instead. Stripe recommends that you consult with your legal counsel for advice specific to your business.
    sig {
      params(invoice: String, params: T.any(::Stripe::InvoiceService::VoidInvoiceParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Invoice)
     }
    def void_invoice(invoice, params = {}, opts = {}); end
  end
end