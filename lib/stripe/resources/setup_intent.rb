# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A SetupIntent guides you through the process of setting up and saving a customer's payment credentials for future payments.
  # For example, you can use a SetupIntent to set up and save your customer's card without immediately collecting a payment.
  # Later, you can use [PaymentIntents](https://stripe.com/docs/api#payment_intents) to drive the payment flow.
  #
  # Create a SetupIntent when you're ready to collect your customer's payment credentials.
  # Don't maintain long-lived, unconfirmed SetupIntents because they might not be valid.
  # The SetupIntent transitions through multiple [statuses](https://docs.stripe.com/payments/intents#intent-statuses) as it guides
  # you through the setup process.
  #
  # Successful SetupIntents result in payment credentials that are optimized for future payments.
  # For example, cardholders in [certain regions](https://stripe.com/guides/strong-customer-authentication) might need to be run through
  # [Strong Customer Authentication](https://docs.stripe.com/strong-customer-authentication) during payment method collection
  # to streamline later [off-session payments](https://docs.stripe.com/payments/setup-intents).
  # If you use the SetupIntent with a [Customer](https://stripe.com/docs/api#setup_intent_object-customer),
  # it automatically attaches the resulting payment method to that Customer after successful setup.
  # We recommend using SetupIntents or [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) on
  # PaymentIntents to save payment methods to prevent saving invalid or unoptimized payment methods.
  #
  # By using SetupIntents, you can reduce friction for your customers, even as regulations change over time.
  #
  # Related guide: [Setup Intents API](https://docs.stripe.com/payments/setup-intents)
  class SetupIntent < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "setup_intent"
    def self.object_name
      "setup_intent"
    end

    class AutomaticPaymentMethods < Stripe::StripeObject
      # Controls whether this SetupIntent will accept redirect-based payment methods.
      #
      # Redirect-based payment methods may require your customer to be redirected to a payment method's app or site for authentication or additional steps. To [confirm](https://stripe.com/docs/api/setup_intents/confirm) this SetupIntent, you may be required to provide a `return_url` to redirect customers back to your site after they authenticate or complete the setup.
      attr_reader :allow_redirects
      # Automatically calculates compatible payment methods
      attr_reader :enabled
    end

    class LastSetupError < Stripe::StripeObject
      # For card errors resulting from a card issuer decline, a short string indicating [how to proceed with an error](https://stripe.com/docs/declines#retrying-issuer-declines) if they provide one.
      attr_reader :advice_code
      # For card errors, the ID of the failed charge.
      attr_reader :charge
      # For some errors that could be handled programmatically, a short string indicating the [error code](https://stripe.com/docs/error-codes) reported.
      attr_reader :code
      # For card errors resulting from a card issuer decline, a short string indicating the [card issuer's reason for the decline](https://stripe.com/docs/declines#issuer-declines) if they provide one.
      attr_reader :decline_code
      # A URL to more information about the [error code](https://stripe.com/docs/error-codes) reported.
      attr_reader :doc_url
      # A human-readable message providing more details about the error. For card errors, these messages can be shown to your users.
      attr_reader :message
      # For card errors resulting from a card issuer decline, a 2 digit code which indicates the advice given to merchant by the card network on how to proceed with an error.
      attr_reader :network_advice_code
      # For card errors resulting from a card issuer decline, a brand specific 2, 3, or 4 digit code which indicates the reason the authorization failed.
      attr_reader :network_decline_code
      # If the error is parameter-specific, the parameter related to the error. For example, you can use this to display a message near the correct form field.
      attr_reader :param
      # A PaymentIntent guides you through the process of collecting a payment from your customer.
      # We recommend that you create exactly one PaymentIntent for each order or
      # customer session in your system. You can reference the PaymentIntent later to
      # see the history of payment attempts for a particular session.
      #
      # A PaymentIntent transitions through
      # [multiple statuses](https://stripe.com/docs/payments/intents#intent-statuses)
      # throughout its lifetime as it interfaces with Stripe.js to perform
      # authentication flows and ultimately creates at most one successful charge.
      #
      # Related guide: [Payment Intents API](https://stripe.com/docs/payments/payment-intents)
      attr_reader :payment_intent
      # PaymentMethod objects represent your customer's payment instruments.
      # You can use them with [PaymentIntents](https://stripe.com/docs/payments/payment-intents) to collect payments or save them to
      # Customer objects to store instrument details for future payments.
      #
      # Related guides: [Payment Methods](https://stripe.com/docs/payments/payment-methods) and [More Payment Scenarios](https://stripe.com/docs/payments/more-payment-scenarios).
      attr_reader :payment_method
      # If the error is specific to the type of payment method, the payment method type that had a problem. This field is only populated for invoice-related errors.
      attr_reader :payment_method_type
      # A URL to the request log entry in your dashboard.
      attr_reader :request_log_url
      # A SetupIntent guides you through the process of setting up and saving a customer's payment credentials for future payments.
      # For example, you can use a SetupIntent to set up and save your customer's card without immediately collecting a payment.
      # Later, you can use [PaymentIntents](https://stripe.com/docs/api#payment_intents) to drive the payment flow.
      #
      # Create a SetupIntent when you're ready to collect your customer's payment credentials.
      # Don't maintain long-lived, unconfirmed SetupIntents because they might not be valid.
      # The SetupIntent transitions through multiple [statuses](https://docs.stripe.com/payments/intents#intent-statuses) as it guides
      # you through the setup process.
      #
      # Successful SetupIntents result in payment credentials that are optimized for future payments.
      # For example, cardholders in [certain regions](https://stripe.com/guides/strong-customer-authentication) might need to be run through
      # [Strong Customer Authentication](https://docs.stripe.com/strong-customer-authentication) during payment method collection
      # to streamline later [off-session payments](https://docs.stripe.com/payments/setup-intents).
      # If you use the SetupIntent with a [Customer](https://stripe.com/docs/api#setup_intent_object-customer),
      # it automatically attaches the resulting payment method to that Customer after successful setup.
      # We recommend using SetupIntents or [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) on
      # PaymentIntents to save payment methods to prevent saving invalid or unoptimized payment methods.
      #
      # By using SetupIntents, you can reduce friction for your customers, even as regulations change over time.
      #
      # Related guide: [Setup Intents API](https://docs.stripe.com/payments/setup-intents)
      attr_reader :setup_intent
      # Attribute for field source
      attr_reader :source
      # The type of error returned. One of `api_error`, `card_error`, `idempotency_error`, or `invalid_request_error`
      attr_reader :type
    end

    class NextAction < Stripe::StripeObject
      class CashappHandleRedirectOrDisplayQrCode < Stripe::StripeObject
        class QrCode < Stripe::StripeObject
          # The date (unix timestamp) when the QR code expires.
          attr_reader :expires_at
          # The image_url_png string used to render QR code
          attr_reader :image_url_png
          # The image_url_svg string used to render QR code
          attr_reader :image_url_svg
        end
        # The URL to the hosted Cash App Pay instructions page, which allows customers to view the QR code, and supports QR code refreshing on expiration.
        attr_reader :hosted_instructions_url
        # The url for mobile redirect based auth
        attr_reader :mobile_auth_url
        # Attribute for field qr_code
        attr_reader :qr_code
      end

      class RedirectToUrl < Stripe::StripeObject
        # If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
        attr_reader :return_url
        # The URL you must redirect your customer to in order to authenticate.
        attr_reader :url
      end

      class VerifyWithMicrodeposits < Stripe::StripeObject
        # The timestamp when the microdeposits are expected to land.
        attr_reader :arrival_date
        # The URL for the hosted verification page, which allows customers to verify their bank account.
        attr_reader :hosted_verification_url
        # The type of the microdeposit sent to the customer. Used to distinguish between different verification methods.
        attr_reader :microdeposit_type
      end
      # Attribute for field cashapp_handle_redirect_or_display_qr_code
      attr_reader :cashapp_handle_redirect_or_display_qr_code
      # Attribute for field redirect_to_url
      attr_reader :redirect_to_url
      # Type of the next action to perform, one of `redirect_to_url`, `use_stripe_sdk`, `alipay_handle_redirect`, `oxxo_display_details`, or `verify_with_microdeposits`.
      attr_reader :type
      # When confirming a SetupIntent with Stripe.js, Stripe.js depends on the contents of this dictionary to invoke authentication flows. The shape of the contents is subject to change and is only intended to be used by Stripe.js.
      attr_reader :use_stripe_sdk
      # Attribute for field verify_with_microdeposits
      attr_reader :verify_with_microdeposits
    end

    class PaymentMethodConfigurationDetails < Stripe::StripeObject
      # ID of the payment method configuration used.
      attr_reader :id
      # ID of the parent payment method configuration used.
      attr_reader :parent
    end

    class PaymentMethodOptions < Stripe::StripeObject
      class AcssDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          # A URL for custom mandate text
          attr_reader :custom_mandate_url
          # List of Stripe products where this mandate can be selected automatically.
          attr_reader :default_for
          # Description of the interval. Only required if the 'payment_schedule' parameter is 'interval' or 'combined'.
          attr_reader :interval_description
          # Payment schedule for the mandate.
          attr_reader :payment_schedule
          # Transaction type of the mandate.
          attr_reader :transaction_type
        end
        # Currency supported by the bank account
        attr_reader :currency
        # Attribute for field mandate_options
        attr_reader :mandate_options
        # Bank account verification method.
        attr_reader :verification_method
      end

      class AmazonPay < Stripe::StripeObject; end

      class BacsDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
          attr_reader :reference_prefix
        end
        # Attribute for field mandate_options
        attr_reader :mandate_options
      end

      class Card < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          # Amount to be charged for future payments.
          attr_reader :amount
          # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
          attr_reader :amount_type
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_reader :currency
          # A description of the mandate or subscription that is meant to be displayed to the customer.
          attr_reader :description
          # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
          attr_reader :end_date
          # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
          attr_reader :interval
          # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
          attr_reader :interval_count
          # Unique identifier for the mandate or subscription.
          attr_reader :reference
          # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
          attr_reader :start_date
          # Specifies the type of mandates supported. Possible values are `india`.
          attr_reader :supported_types
        end
        # Configuration options for setting up an eMandate for cards issued in India.
        attr_reader :mandate_options
        # Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the setup intent. Can be only set confirm-time.
        attr_reader :network
        # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
        attr_reader :request_three_d_secure
      end

      class CardPresent < Stripe::StripeObject; end

      class Link < Stripe::StripeObject
        # [Deprecated] This is a legacy parameter that no longer has any function.
        attr_reader :persistent_token
      end

      class Paypal < Stripe::StripeObject
        # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
        attr_reader :billing_agreement_id
      end

      class SepaDebit < Stripe::StripeObject
        class MandateOptions < Stripe::StripeObject
          # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
          attr_reader :reference_prefix
        end
        # Attribute for field mandate_options
        attr_reader :mandate_options
      end

      class UsBankAccount < Stripe::StripeObject
        class FinancialConnections < Stripe::StripeObject
          class Filters < Stripe::StripeObject
            # The account subcategories to use to filter for possible accounts to link. Valid subcategories are `checking` and `savings`.
            attr_reader :account_subcategories
          end
          # Attribute for field filters
          attr_reader :filters
          # The list of permissions to request. The `payment_method` permission must be included.
          attr_reader :permissions
          # Data features requested to be retrieved upon account creation.
          attr_reader :prefetch
          # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
          attr_reader :return_url
        end

        class MandateOptions < Stripe::StripeObject
          # Mandate collection method
          attr_reader :collection_method
        end
        # Attribute for field financial_connections
        attr_reader :financial_connections
        # Attribute for field mandate_options
        attr_reader :mandate_options
        # Bank account verification method.
        attr_reader :verification_method
      end
      # Attribute for field acss_debit
      attr_reader :acss_debit
      # Attribute for field amazon_pay
      attr_reader :amazon_pay
      # Attribute for field bacs_debit
      attr_reader :bacs_debit
      # Attribute for field card
      attr_reader :card
      # Attribute for field card_present
      attr_reader :card_present
      # Attribute for field link
      attr_reader :link
      # Attribute for field paypal
      attr_reader :paypal
      # Attribute for field sepa_debit
      attr_reader :sepa_debit
      # Attribute for field us_bank_account
      attr_reader :us_bank_account
    end

    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end
      # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
      #
      # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
      attr_accessor :attach_to_self
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      attr_accessor :created
      # Only return SetupIntents for the customer specified by this customer ID.
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Only return SetupIntents that associate with the specified payment method.
      attr_accessor :payment_method
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        attach_to_self: nil,
        created: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        payment_method: nil,
        starting_after: nil
      )
        @attach_to_self = attach_to_self
        @created = created
        @customer = customer
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @payment_method = payment_method
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      class AutomaticPaymentMethods < Stripe::RequestParams
        # Controls whether this SetupIntent will accept redirect-based payment methods.
        #
        # Redirect-based payment methods may require your customer to be redirected to a payment method's app or site for authentication or additional steps. To [confirm](https://stripe.com/docs/api/setup_intents/confirm) this SetupIntent, you may be required to provide a `return_url` to redirect customers back to your site after they authenticate or complete the setup.
        attr_accessor :allow_redirects
        # Whether this feature is enabled.
        attr_accessor :enabled

        def initialize(allow_redirects: nil, enabled: nil)
          @allow_redirects = allow_redirects
          @enabled = enabled
        end
      end

      class MandateData < Stripe::RequestParams
        class CustomerAcceptance < Stripe::RequestParams
          class Offline < Stripe::RequestParams
          end

          class Online < Stripe::RequestParams
            # The IP address from which the Mandate was accepted by the customer.
            attr_accessor :ip_address
            # The user agent of the browser from which the Mandate was accepted by the customer.
            attr_accessor :user_agent

            def initialize(ip_address: nil, user_agent: nil)
              @ip_address = ip_address
              @user_agent = user_agent
            end
          end
          # The time at which the customer accepted the Mandate.
          attr_accessor :accepted_at
          # If this is a Mandate accepted offline, this hash contains details about the offline acceptance.
          attr_accessor :offline
          # If this is a Mandate accepted online, this hash contains details about the online acceptance.
          attr_accessor :online
          # The type of customer acceptance information included with the Mandate. One of `online` or `offline`.
          attr_accessor :type

          def initialize(accepted_at: nil, offline: nil, online: nil, type: nil)
            @accepted_at = accepted_at
            @offline = offline
            @online = online
            @type = type
          end
        end
        # This hash contains details about the customer acceptance of the Mandate.
        attr_accessor :customer_acceptance

        def initialize(customer_acceptance: nil)
          @customer_acceptance = customer_acceptance
        end
      end

      class PaymentMethodData < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          # Customer's bank account number.
          attr_accessor :account_number
          # Institution number of the customer's bank.
          attr_accessor :institution_number
          # Transit number of the customer's bank.
          attr_accessor :transit_number

          def initialize(account_number: nil, institution_number: nil, transit_number: nil)
            @account_number = account_number
            @institution_number = institution_number
            @transit_number = transit_number
          end
        end

        class Affirm < Stripe::RequestParams
        end

        class AfterpayClearpay < Stripe::RequestParams
        end

        class Alipay < Stripe::RequestParams
        end

        class Alma < Stripe::RequestParams
        end

        class AmazonPay < Stripe::RequestParams
        end

        class AuBecsDebit < Stripe::RequestParams
          # The account number for the bank account.
          attr_accessor :account_number
          # Bank-State-Branch number of the bank account.
          attr_accessor :bsb_number

          def initialize(account_number: nil, bsb_number: nil)
            @account_number = account_number
            @bsb_number = bsb_number
          end
        end

        class BacsDebit < Stripe::RequestParams
          # Account number of the bank account that the funds will be debited from.
          attr_accessor :account_number
          # Sort code of the bank account. (e.g., `10-20-30`)
          attr_accessor :sort_code

          def initialize(account_number: nil, sort_code: nil)
            @account_number = account_number
            @sort_code = sort_code
          end
        end

        class Bancontact < Stripe::RequestParams
        end

        class Billie < Stripe::RequestParams
        end

        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State, county, province, or region.
            attr_accessor :state

            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            )
              @city = city
              @country = country
              @line1 = line1
              @line2 = line2
              @postal_code = postal_code
              @state = state
            end
          end
          # Billing address.
          attr_accessor :address
          # Email address.
          attr_accessor :email
          # Full name.
          attr_accessor :name
          # Billing phone number (including extension).
          attr_accessor :phone
          # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
          attr_accessor :tax_id

          def initialize(address: nil, email: nil, name: nil, phone: nil, tax_id: nil)
            @address = address
            @email = email
            @name = name
            @phone = phone
            @tax_id = tax_id
          end
        end

        class Blik < Stripe::RequestParams
        end

        class Boleto < Stripe::RequestParams
          # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
          attr_accessor :tax_id

          def initialize(tax_id: nil)
            @tax_id = tax_id
          end
        end

        class Cashapp < Stripe::RequestParams
        end

        class CustomerBalance < Stripe::RequestParams
        end

        class Eps < Stripe::RequestParams
          # The customer's bank.
          attr_accessor :bank

          def initialize(bank: nil)
            @bank = bank
          end
        end

        class Fpx < Stripe::RequestParams
          # Account holder type for FPX transaction
          attr_accessor :account_holder_type
          # The customer's bank.
          attr_accessor :bank

          def initialize(account_holder_type: nil, bank: nil)
            @account_holder_type = account_holder_type
            @bank = bank
          end
        end

        class Giropay < Stripe::RequestParams
        end

        class Grabpay < Stripe::RequestParams
        end

        class Ideal < Stripe::RequestParams
          # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
          attr_accessor :bank

          def initialize(bank: nil)
            @bank = bank
          end
        end

        class InteracPresent < Stripe::RequestParams
        end

        class KakaoPay < Stripe::RequestParams
        end

        class Klarna < Stripe::RequestParams
          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            attr_accessor :day
            # The month of birth, between 1 and 12.
            attr_accessor :month
            # The four-digit year of birth.
            attr_accessor :year

            def initialize(day: nil, month: nil, year: nil)
              @day = day
              @month = month
              @year = year
            end
          end
          # Customer's date of birth
          attr_accessor :dob

          def initialize(dob: nil)
            @dob = dob
          end
        end

        class Konbini < Stripe::RequestParams
        end

        class KrCard < Stripe::RequestParams
        end

        class Link < Stripe::RequestParams
        end

        class Mobilepay < Stripe::RequestParams
        end

        class Multibanco < Stripe::RequestParams
        end

        class NaverPay < Stripe::RequestParams
          # Whether to use Naver Pay points or a card to fund this transaction. If not provided, this defaults to `card`.
          attr_accessor :funding

          def initialize(funding: nil)
            @funding = funding
          end
        end

        class NzBankAccount < Stripe::RequestParams
          # The name on the bank account. Only required if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
          attr_accessor :account_holder_name
          # The account number for the bank account.
          attr_accessor :account_number
          # The numeric code for the bank account's bank.
          attr_accessor :bank_code
          # The numeric code for the bank account's bank branch.
          attr_accessor :branch_code
          # Attribute for param field reference
          attr_accessor :reference
          # The suffix of the bank account number.
          attr_accessor :suffix

          def initialize(
            account_holder_name: nil,
            account_number: nil,
            bank_code: nil,
            branch_code: nil,
            reference: nil,
            suffix: nil
          )
            @account_holder_name = account_holder_name
            @account_number = account_number
            @bank_code = bank_code
            @branch_code = branch_code
            @reference = reference
            @suffix = suffix
          end
        end

        class Oxxo < Stripe::RequestParams
        end

        class P24 < Stripe::RequestParams
          # The customer's bank.
          attr_accessor :bank

          def initialize(bank: nil)
            @bank = bank
          end
        end

        class PayByBank < Stripe::RequestParams
        end

        class Payco < Stripe::RequestParams
        end

        class Paynow < Stripe::RequestParams
        end

        class Paypal < Stripe::RequestParams
        end

        class Pix < Stripe::RequestParams
        end

        class Promptpay < Stripe::RequestParams
        end

        class RadarOptions < Stripe::RequestParams
          # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
          attr_accessor :session

          def initialize(session: nil)
            @session = session
          end
        end

        class RevolutPay < Stripe::RequestParams
        end

        class SamsungPay < Stripe::RequestParams
        end

        class Satispay < Stripe::RequestParams
        end

        class SepaDebit < Stripe::RequestParams
          # IBAN of the bank account.
          attr_accessor :iban

          def initialize(iban: nil)
            @iban = iban
          end
        end

        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          attr_accessor :country

          def initialize(country: nil)
            @country = country
          end
        end

        class Swish < Stripe::RequestParams
        end

        class Twint < Stripe::RequestParams
        end

        class UsBankAccount < Stripe::RequestParams
          # Account holder type: individual or company.
          attr_accessor :account_holder_type
          # Account number of the bank account.
          attr_accessor :account_number
          # Account type: checkings or savings. Defaults to checking if omitted.
          attr_accessor :account_type
          # The ID of a Financial Connections Account to use as a payment method.
          attr_accessor :financial_connections_account
          # Routing number of the bank account.
          attr_accessor :routing_number

          def initialize(
            account_holder_type: nil,
            account_number: nil,
            account_type: nil,
            financial_connections_account: nil,
            routing_number: nil
          )
            @account_holder_type = account_holder_type
            @account_number = account_number
            @account_type = account_type
            @financial_connections_account = financial_connections_account
            @routing_number = routing_number
          end
        end

        class WechatPay < Stripe::RequestParams
        end

        class Zip < Stripe::RequestParams
        end
        # If this is an `acss_debit` PaymentMethod, this hash contains details about the ACSS Debit payment method.
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        attr_accessor :affirm
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        attr_accessor :afterpay_clearpay
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        attr_accessor :alipay
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        attr_accessor :allow_redisplay
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        attr_accessor :alma
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        attr_accessor :amazon_pay
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        attr_accessor :bancontact
        # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
        attr_accessor :billie
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        attr_accessor :billing_details
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        attr_accessor :boleto
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        attr_accessor :cashapp
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        attr_accessor :customer_balance
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        attr_accessor :eps
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        attr_accessor :giropay
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        attr_accessor :grabpay
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        attr_accessor :ideal
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        attr_accessor :kr_card
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        attr_accessor :link
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        attr_accessor :naver_pay
        # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
        attr_accessor :nz_bank_account
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        attr_accessor :paypal
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        attr_accessor :promptpay
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        attr_accessor :radar_options
        # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        attr_accessor :samsung_pay
        # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
        attr_accessor :satispay
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        attr_accessor :sepa_debit
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        attr_accessor :sofort
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        attr_accessor :swish
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        attr_accessor :twint
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        attr_accessor :type
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        attr_accessor :us_bank_account
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        attr_accessor :zip

        def initialize(
          acss_debit: nil,
          affirm: nil,
          afterpay_clearpay: nil,
          alipay: nil,
          allow_redisplay: nil,
          alma: nil,
          amazon_pay: nil,
          au_becs_debit: nil,
          bacs_debit: nil,
          bancontact: nil,
          billie: nil,
          billing_details: nil,
          blik: nil,
          boleto: nil,
          cashapp: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          grabpay: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
          metadata: nil,
          mobilepay: nil,
          multibanco: nil,
          naver_pay: nil,
          nz_bank_account: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          pix: nil,
          promptpay: nil,
          radar_options: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
          sofort: nil,
          swish: nil,
          twint: nil,
          type: nil,
          us_bank_account: nil,
          wechat_pay: nil,
          zip: nil
        )
          @acss_debit = acss_debit
          @affirm = affirm
          @afterpay_clearpay = afterpay_clearpay
          @alipay = alipay
          @allow_redisplay = allow_redisplay
          @alma = alma
          @amazon_pay = amazon_pay
          @au_becs_debit = au_becs_debit
          @bacs_debit = bacs_debit
          @bancontact = bancontact
          @billie = billie
          @billing_details = billing_details
          @blik = blik
          @boleto = boleto
          @cashapp = cashapp
          @customer_balance = customer_balance
          @eps = eps
          @fpx = fpx
          @giropay = giropay
          @grabpay = grabpay
          @ideal = ideal
          @interac_present = interac_present
          @kakao_pay = kakao_pay
          @klarna = klarna
          @konbini = konbini
          @kr_card = kr_card
          @link = link
          @metadata = metadata
          @mobilepay = mobilepay
          @multibanco = multibanco
          @naver_pay = naver_pay
          @nz_bank_account = nz_bank_account
          @oxxo = oxxo
          @p24 = p24
          @pay_by_bank = pay_by_bank
          @payco = payco
          @paynow = paynow
          @paypal = paypal
          @pix = pix
          @promptpay = promptpay
          @radar_options = radar_options
          @revolut_pay = revolut_pay
          @samsung_pay = samsung_pay
          @satispay = satispay
          @sepa_debit = sepa_debit
          @sofort = sofort
          @swish = swish
          @twint = twint
          @type = type
          @us_bank_account = us_bank_account
          @wechat_pay = wechat_pay
          @zip = zip
        end
      end

      class PaymentMethodOptions < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # A URL for custom mandate text to render during confirmation step.
            # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
            # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
            attr_accessor :custom_mandate_url
            # List of Stripe products where this mandate can be selected automatically.
            attr_accessor :default_for
            # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
            attr_accessor :interval_description
            # Payment schedule for the mandate.
            attr_accessor :payment_schedule
            # Transaction type of the mandate.
            attr_accessor :transaction_type

            def initialize(
              custom_mandate_url: nil,
              default_for: nil,
              interval_description: nil,
              payment_schedule: nil,
              transaction_type: nil
            )
              @custom_mandate_url = custom_mandate_url
              @default_for = default_for
              @interval_description = interval_description
              @payment_schedule = payment_schedule
              @transaction_type = transaction_type
            end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency
          # Additional fields for Mandate creation
          attr_accessor :mandate_options
          # Bank account verification method.
          attr_accessor :verification_method

          def initialize(currency: nil, mandate_options: nil, verification_method: nil)
            @currency = currency
            @mandate_options = mandate_options
            @verification_method = verification_method
          end
        end

        class AmazonPay < Stripe::RequestParams
        end

        class BacsDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
            attr_accessor :reference_prefix

            def initialize(reference_prefix: nil)
              @reference_prefix = reference_prefix
            end
          end
          # Additional fields for Mandate creation
          attr_accessor :mandate_options

          def initialize(mandate_options: nil)
            @mandate_options = mandate_options
          end
        end

        class Card < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            attr_accessor :amount
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            attr_accessor :amount_type
            # Currency in which future payments will be charged. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_accessor :currency
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            attr_accessor :description
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            attr_accessor :end_date
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            attr_accessor :interval
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            attr_accessor :interval_count
            # Unique identifier for the mandate or subscription.
            attr_accessor :reference
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            attr_accessor :start_date
            # Specifies the type of mandates supported. Possible values are `india`.
            attr_accessor :supported_types

            def initialize(
              amount: nil,
              amount_type: nil,
              currency: nil,
              description: nil,
              end_date: nil,
              interval: nil,
              interval_count: nil,
              reference: nil,
              start_date: nil,
              supported_types: nil
            )
              @amount = amount
              @amount_type = amount_type
              @currency = currency
              @description = description
              @end_date = end_date
              @interval = interval
              @interval_count = interval_count
              @reference = reference
              @start_date = start_date
              @supported_types = supported_types
            end
          end

          class ThreeDSecure < Stripe::RequestParams
            class NetworkOptions < Stripe::RequestParams
              class CartesBancaires < Stripe::RequestParams
                # The cryptogram calculation algorithm used by the card Issuer's ACS
                # to calculate the Authentication cryptogram. Also known as `cavvAlgorithm`.
                # messageExtension: CB-AVALGO
                attr_accessor :cb_avalgo
                # The exemption indicator returned from Cartes Bancaires in the ARes.
                # message extension: CB-EXEMPTION; string (4 characters)
                # This is a 3 byte bitmap (low significant byte first and most significant
                # bit first) that has been Base64 encoded
                attr_accessor :cb_exemption
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                attr_accessor :cb_score

                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil)
                  @cb_avalgo = cb_avalgo
                  @cb_exemption = cb_exemption
                  @cb_score = cb_score
                end
              end
              # Cartes Bancaires-specific 3DS fields.
              attr_accessor :cartes_bancaires

              def initialize(cartes_bancaires: nil)
                @cartes_bancaires = cartes_bancaires
              end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            attr_accessor :ares_trans_status
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            attr_accessor :cryptogram
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            attr_accessor :electronic_commerce_indicator
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            attr_accessor :network_options
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            attr_accessor :requestor_challenge_indicator
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            attr_accessor :transaction_id
            # The version of 3D Secure that was performed.
            attr_accessor :version

            def initialize(
              ares_trans_status: nil,
              cryptogram: nil,
              electronic_commerce_indicator: nil,
              network_options: nil,
              requestor_challenge_indicator: nil,
              transaction_id: nil,
              version: nil
            )
              @ares_trans_status = ares_trans_status
              @cryptogram = cryptogram
              @electronic_commerce_indicator = electronic_commerce_indicator
              @network_options = network_options
              @requestor_challenge_indicator = requestor_challenge_indicator
              @transaction_id = transaction_id
              @version = version
            end
          end
          # Configuration options for setting up an eMandate for cards issued in India.
          attr_accessor :mandate_options
          # When specified, this parameter signals that a card has been collected
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          attr_accessor :moto
          # Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the SetupIntent. Can be only set confirm-time.
          attr_accessor :network
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          attr_accessor :request_three_d_secure
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this setup.
          attr_accessor :three_d_secure

          def initialize(
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_three_d_secure: nil,
            three_d_secure: nil
          )
            @mandate_options = mandate_options
            @moto = moto
            @network = network
            @request_three_d_secure = request_three_d_secure
            @three_d_secure = three_d_secure
          end
        end

        class CardPresent < Stripe::RequestParams
        end

        class Link < Stripe::RequestParams
          # [Deprecated] This is a legacy parameter that no longer has any function.
          attr_accessor :persistent_token

          def initialize(persistent_token: nil)
            @persistent_token = persistent_token
          end
        end

        class Paypal < Stripe::RequestParams
          # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
          attr_accessor :billing_agreement_id

          def initialize(billing_agreement_id: nil)
            @billing_agreement_id = billing_agreement_id
          end
        end

        class SepaDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
            attr_accessor :reference_prefix

            def initialize(reference_prefix: nil)
              @reference_prefix = reference_prefix
            end
          end
          # Additional fields for Mandate creation
          attr_accessor :mandate_options

          def initialize(mandate_options: nil)
            @mandate_options = mandate_options
          end
        end

        class UsBankAccount < Stripe::RequestParams
          class FinancialConnections < Stripe::RequestParams
            class Filters < Stripe::RequestParams
              # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
              attr_accessor :account_subcategories

              def initialize(account_subcategories: nil)
                @account_subcategories = account_subcategories
              end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method.
            attr_accessor :filters
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            attr_accessor :permissions
            # List of data features that you would like to retrieve upon account creation.
            attr_accessor :prefetch
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            attr_accessor :return_url

            def initialize(filters: nil, permissions: nil, prefetch: nil, return_url: nil)
              @filters = filters
              @permissions = permissions
              @prefetch = prefetch
              @return_url = return_url
            end
          end

          class MandateOptions < Stripe::RequestParams
            # The method used to collect offline mandate customer acceptance.
            attr_accessor :collection_method

            def initialize(collection_method: nil)
              @collection_method = collection_method
            end
          end

          class Networks < Stripe::RequestParams
            # Triggers validations to run across the selected networks
            attr_accessor :requested

            def initialize(requested: nil)
              @requested = requested
            end
          end
          # Additional fields for Financial Connections Session creation
          attr_accessor :financial_connections
          # Additional fields for Mandate creation
          attr_accessor :mandate_options
          # Additional fields for network related functions
          attr_accessor :networks
          # Bank account verification method.
          attr_accessor :verification_method

          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            verification_method: nil
          )
            @financial_connections = financial_connections
            @mandate_options = mandate_options
            @networks = networks
            @verification_method = verification_method
          end
        end
        # If this is a `acss_debit` SetupIntent, this sub-hash contains details about the ACSS Debit payment method options.
        attr_accessor :acss_debit
        # If this is a `amazon_pay` SetupIntent, this sub-hash contains details about the AmazonPay payment method options.
        attr_accessor :amazon_pay
        # If this is a `bacs_debit` SetupIntent, this sub-hash contains details about the Bacs Debit payment method options.
        attr_accessor :bacs_debit
        # Configuration for any card setup attempted on this SetupIntent.
        attr_accessor :card
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the card-present payment method options.
        attr_accessor :card_present
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        attr_accessor :link
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        attr_accessor :paypal
        # If this is a `sepa_debit` SetupIntent, this sub-hash contains details about the SEPA Debit payment method options.
        attr_accessor :sepa_debit
        # If this is a `us_bank_account` SetupIntent, this sub-hash contains details about the US bank account payment method options.
        attr_accessor :us_bank_account

        def initialize(
          acss_debit: nil,
          amazon_pay: nil,
          bacs_debit: nil,
          card: nil,
          card_present: nil,
          link: nil,
          paypal: nil,
          sepa_debit: nil,
          us_bank_account: nil
        )
          @acss_debit = acss_debit
          @amazon_pay = amazon_pay
          @bacs_debit = bacs_debit
          @card = card
          @card_present = card_present
          @link = link
          @paypal = paypal
          @sepa_debit = sepa_debit
          @us_bank_account = us_bank_account
        end
      end

      class SingleUse < Stripe::RequestParams
        # Amount the customer is granting permission to collect later. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
        attr_accessor :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency

        def initialize(amount: nil, currency: nil)
          @amount = amount
          @currency = currency
        end
      end
      # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
      #
      # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
      attr_accessor :attach_to_self
      # When you enable this parameter, this SetupIntent accepts payment methods that you enable in the Dashboard and that are compatible with its other parameters.
      attr_accessor :automatic_payment_methods
      # Set to `true` to attempt to confirm this SetupIntent immediately. This parameter defaults to `false`. If a card is the attached payment method, you can provide a `return_url` in case further authentication is necessary.
      attr_accessor :confirm
      # ID of the ConfirmationToken used to confirm this SetupIntent.
      #
      # If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
      attr_accessor :confirmation_token
      # ID of the Customer this SetupIntent belongs to, if one exists.
      #
      # If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
      attr_accessor :customer
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Indicates the directions of money movement for which this payment method is intended to be used.
      #
      # Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
      attr_accessor :flow_directions
      # This hash contains details about the mandate to create. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/setup_intents/create#create_setup_intent-confirm).
      attr_accessor :mandate_data
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The Stripe account ID created for this SetupIntent.
      attr_accessor :on_behalf_of
      # ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent.
      attr_accessor :payment_method
      # The ID of the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) to use with this SetupIntent.
      attr_accessor :payment_method_configuration
      # When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-payment_method)
      # value in the SetupIntent.
      attr_accessor :payment_method_data
      # Payment method-specific configuration for this SetupIntent.
      attr_accessor :payment_method_options
      # The list of payment method types (for example, card) that this SetupIntent can use. If you don't provide this, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods).
      attr_accessor :payment_method_types
      # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. To redirect to a mobile application, you can alternatively supply an application URI scheme. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/setup_intents/create#create_setup_intent-confirm).
      attr_accessor :return_url
      # If you populate this hash, this SetupIntent generates a `single_use` mandate after successful completion.
      #
      # Single-use mandates are only valid for the following payment methods: `acss_debit`, `alipay`, `au_becs_debit`, `bacs_debit`, `bancontact`, `boleto`, `ideal`, `link`, `sepa_debit`, and `us_bank_account`.
      attr_accessor :single_use
      # Indicates how the payment method is intended to be used in the future. If not provided, this value defaults to `off_session`.
      attr_accessor :usage
      # Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
      attr_accessor :use_stripe_sdk

      def initialize(
        attach_to_self: nil,
        automatic_payment_methods: nil,
        confirm: nil,
        confirmation_token: nil,
        customer: nil,
        description: nil,
        expand: nil,
        flow_directions: nil,
        mandate_data: nil,
        metadata: nil,
        on_behalf_of: nil,
        payment_method: nil,
        payment_method_configuration: nil,
        payment_method_data: nil,
        payment_method_options: nil,
        payment_method_types: nil,
        return_url: nil,
        single_use: nil,
        usage: nil,
        use_stripe_sdk: nil
      )
        @attach_to_self = attach_to_self
        @automatic_payment_methods = automatic_payment_methods
        @confirm = confirm
        @confirmation_token = confirmation_token
        @customer = customer
        @description = description
        @expand = expand
        @flow_directions = flow_directions
        @mandate_data = mandate_data
        @metadata = metadata
        @on_behalf_of = on_behalf_of
        @payment_method = payment_method
        @payment_method_configuration = payment_method_configuration
        @payment_method_data = payment_method_data
        @payment_method_options = payment_method_options
        @payment_method_types = payment_method_types
        @return_url = return_url
        @single_use = single_use
        @usage = usage
        @use_stripe_sdk = use_stripe_sdk
      end
    end

    class UpdateParams < Stripe::RequestParams
      class PaymentMethodData < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          # Customer's bank account number.
          attr_accessor :account_number
          # Institution number of the customer's bank.
          attr_accessor :institution_number
          # Transit number of the customer's bank.
          attr_accessor :transit_number

          def initialize(account_number: nil, institution_number: nil, transit_number: nil)
            @account_number = account_number
            @institution_number = institution_number
            @transit_number = transit_number
          end
        end

        class Affirm < Stripe::RequestParams
        end

        class AfterpayClearpay < Stripe::RequestParams
        end

        class Alipay < Stripe::RequestParams
        end

        class Alma < Stripe::RequestParams
        end

        class AmazonPay < Stripe::RequestParams
        end

        class AuBecsDebit < Stripe::RequestParams
          # The account number for the bank account.
          attr_accessor :account_number
          # Bank-State-Branch number of the bank account.
          attr_accessor :bsb_number

          def initialize(account_number: nil, bsb_number: nil)
            @account_number = account_number
            @bsb_number = bsb_number
          end
        end

        class BacsDebit < Stripe::RequestParams
          # Account number of the bank account that the funds will be debited from.
          attr_accessor :account_number
          # Sort code of the bank account. (e.g., `10-20-30`)
          attr_accessor :sort_code

          def initialize(account_number: nil, sort_code: nil)
            @account_number = account_number
            @sort_code = sort_code
          end
        end

        class Bancontact < Stripe::RequestParams
        end

        class Billie < Stripe::RequestParams
        end

        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State, county, province, or region.
            attr_accessor :state

            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            )
              @city = city
              @country = country
              @line1 = line1
              @line2 = line2
              @postal_code = postal_code
              @state = state
            end
          end
          # Billing address.
          attr_accessor :address
          # Email address.
          attr_accessor :email
          # Full name.
          attr_accessor :name
          # Billing phone number (including extension).
          attr_accessor :phone
          # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
          attr_accessor :tax_id

          def initialize(address: nil, email: nil, name: nil, phone: nil, tax_id: nil)
            @address = address
            @email = email
            @name = name
            @phone = phone
            @tax_id = tax_id
          end
        end

        class Blik < Stripe::RequestParams
        end

        class Boleto < Stripe::RequestParams
          # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
          attr_accessor :tax_id

          def initialize(tax_id: nil)
            @tax_id = tax_id
          end
        end

        class Cashapp < Stripe::RequestParams
        end

        class CustomerBalance < Stripe::RequestParams
        end

        class Eps < Stripe::RequestParams
          # The customer's bank.
          attr_accessor :bank

          def initialize(bank: nil)
            @bank = bank
          end
        end

        class Fpx < Stripe::RequestParams
          # Account holder type for FPX transaction
          attr_accessor :account_holder_type
          # The customer's bank.
          attr_accessor :bank

          def initialize(account_holder_type: nil, bank: nil)
            @account_holder_type = account_holder_type
            @bank = bank
          end
        end

        class Giropay < Stripe::RequestParams
        end

        class Grabpay < Stripe::RequestParams
        end

        class Ideal < Stripe::RequestParams
          # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
          attr_accessor :bank

          def initialize(bank: nil)
            @bank = bank
          end
        end

        class InteracPresent < Stripe::RequestParams
        end

        class KakaoPay < Stripe::RequestParams
        end

        class Klarna < Stripe::RequestParams
          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            attr_accessor :day
            # The month of birth, between 1 and 12.
            attr_accessor :month
            # The four-digit year of birth.
            attr_accessor :year

            def initialize(day: nil, month: nil, year: nil)
              @day = day
              @month = month
              @year = year
            end
          end
          # Customer's date of birth
          attr_accessor :dob

          def initialize(dob: nil)
            @dob = dob
          end
        end

        class Konbini < Stripe::RequestParams
        end

        class KrCard < Stripe::RequestParams
        end

        class Link < Stripe::RequestParams
        end

        class Mobilepay < Stripe::RequestParams
        end

        class Multibanco < Stripe::RequestParams
        end

        class NaverPay < Stripe::RequestParams
          # Whether to use Naver Pay points or a card to fund this transaction. If not provided, this defaults to `card`.
          attr_accessor :funding

          def initialize(funding: nil)
            @funding = funding
          end
        end

        class NzBankAccount < Stripe::RequestParams
          # The name on the bank account. Only required if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
          attr_accessor :account_holder_name
          # The account number for the bank account.
          attr_accessor :account_number
          # The numeric code for the bank account's bank.
          attr_accessor :bank_code
          # The numeric code for the bank account's bank branch.
          attr_accessor :branch_code
          # Attribute for param field reference
          attr_accessor :reference
          # The suffix of the bank account number.
          attr_accessor :suffix

          def initialize(
            account_holder_name: nil,
            account_number: nil,
            bank_code: nil,
            branch_code: nil,
            reference: nil,
            suffix: nil
          )
            @account_holder_name = account_holder_name
            @account_number = account_number
            @bank_code = bank_code
            @branch_code = branch_code
            @reference = reference
            @suffix = suffix
          end
        end

        class Oxxo < Stripe::RequestParams
        end

        class P24 < Stripe::RequestParams
          # The customer's bank.
          attr_accessor :bank

          def initialize(bank: nil)
            @bank = bank
          end
        end

        class PayByBank < Stripe::RequestParams
        end

        class Payco < Stripe::RequestParams
        end

        class Paynow < Stripe::RequestParams
        end

        class Paypal < Stripe::RequestParams
        end

        class Pix < Stripe::RequestParams
        end

        class Promptpay < Stripe::RequestParams
        end

        class RadarOptions < Stripe::RequestParams
          # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
          attr_accessor :session

          def initialize(session: nil)
            @session = session
          end
        end

        class RevolutPay < Stripe::RequestParams
        end

        class SamsungPay < Stripe::RequestParams
        end

        class Satispay < Stripe::RequestParams
        end

        class SepaDebit < Stripe::RequestParams
          # IBAN of the bank account.
          attr_accessor :iban

          def initialize(iban: nil)
            @iban = iban
          end
        end

        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          attr_accessor :country

          def initialize(country: nil)
            @country = country
          end
        end

        class Swish < Stripe::RequestParams
        end

        class Twint < Stripe::RequestParams
        end

        class UsBankAccount < Stripe::RequestParams
          # Account holder type: individual or company.
          attr_accessor :account_holder_type
          # Account number of the bank account.
          attr_accessor :account_number
          # Account type: checkings or savings. Defaults to checking if omitted.
          attr_accessor :account_type
          # The ID of a Financial Connections Account to use as a payment method.
          attr_accessor :financial_connections_account
          # Routing number of the bank account.
          attr_accessor :routing_number

          def initialize(
            account_holder_type: nil,
            account_number: nil,
            account_type: nil,
            financial_connections_account: nil,
            routing_number: nil
          )
            @account_holder_type = account_holder_type
            @account_number = account_number
            @account_type = account_type
            @financial_connections_account = financial_connections_account
            @routing_number = routing_number
          end
        end

        class WechatPay < Stripe::RequestParams
        end

        class Zip < Stripe::RequestParams
        end
        # If this is an `acss_debit` PaymentMethod, this hash contains details about the ACSS Debit payment method.
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        attr_accessor :affirm
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        attr_accessor :afterpay_clearpay
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        attr_accessor :alipay
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        attr_accessor :allow_redisplay
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        attr_accessor :alma
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        attr_accessor :amazon_pay
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        attr_accessor :bancontact
        # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
        attr_accessor :billie
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        attr_accessor :billing_details
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        attr_accessor :boleto
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        attr_accessor :cashapp
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        attr_accessor :customer_balance
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        attr_accessor :eps
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        attr_accessor :giropay
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        attr_accessor :grabpay
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        attr_accessor :ideal
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        attr_accessor :kr_card
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        attr_accessor :link
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        attr_accessor :naver_pay
        # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
        attr_accessor :nz_bank_account
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        attr_accessor :paypal
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        attr_accessor :promptpay
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        attr_accessor :radar_options
        # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        attr_accessor :samsung_pay
        # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
        attr_accessor :satispay
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        attr_accessor :sepa_debit
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        attr_accessor :sofort
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        attr_accessor :swish
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        attr_accessor :twint
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        attr_accessor :type
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        attr_accessor :us_bank_account
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        attr_accessor :zip

        def initialize(
          acss_debit: nil,
          affirm: nil,
          afterpay_clearpay: nil,
          alipay: nil,
          allow_redisplay: nil,
          alma: nil,
          amazon_pay: nil,
          au_becs_debit: nil,
          bacs_debit: nil,
          bancontact: nil,
          billie: nil,
          billing_details: nil,
          blik: nil,
          boleto: nil,
          cashapp: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          grabpay: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
          metadata: nil,
          mobilepay: nil,
          multibanco: nil,
          naver_pay: nil,
          nz_bank_account: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          pix: nil,
          promptpay: nil,
          radar_options: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
          sofort: nil,
          swish: nil,
          twint: nil,
          type: nil,
          us_bank_account: nil,
          wechat_pay: nil,
          zip: nil
        )
          @acss_debit = acss_debit
          @affirm = affirm
          @afterpay_clearpay = afterpay_clearpay
          @alipay = alipay
          @allow_redisplay = allow_redisplay
          @alma = alma
          @amazon_pay = amazon_pay
          @au_becs_debit = au_becs_debit
          @bacs_debit = bacs_debit
          @bancontact = bancontact
          @billie = billie
          @billing_details = billing_details
          @blik = blik
          @boleto = boleto
          @cashapp = cashapp
          @customer_balance = customer_balance
          @eps = eps
          @fpx = fpx
          @giropay = giropay
          @grabpay = grabpay
          @ideal = ideal
          @interac_present = interac_present
          @kakao_pay = kakao_pay
          @klarna = klarna
          @konbini = konbini
          @kr_card = kr_card
          @link = link
          @metadata = metadata
          @mobilepay = mobilepay
          @multibanco = multibanco
          @naver_pay = naver_pay
          @nz_bank_account = nz_bank_account
          @oxxo = oxxo
          @p24 = p24
          @pay_by_bank = pay_by_bank
          @payco = payco
          @paynow = paynow
          @paypal = paypal
          @pix = pix
          @promptpay = promptpay
          @radar_options = radar_options
          @revolut_pay = revolut_pay
          @samsung_pay = samsung_pay
          @satispay = satispay
          @sepa_debit = sepa_debit
          @sofort = sofort
          @swish = swish
          @twint = twint
          @type = type
          @us_bank_account = us_bank_account
          @wechat_pay = wechat_pay
          @zip = zip
        end
      end

      class PaymentMethodOptions < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # A URL for custom mandate text to render during confirmation step.
            # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
            # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
            attr_accessor :custom_mandate_url
            # List of Stripe products where this mandate can be selected automatically.
            attr_accessor :default_for
            # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
            attr_accessor :interval_description
            # Payment schedule for the mandate.
            attr_accessor :payment_schedule
            # Transaction type of the mandate.
            attr_accessor :transaction_type

            def initialize(
              custom_mandate_url: nil,
              default_for: nil,
              interval_description: nil,
              payment_schedule: nil,
              transaction_type: nil
            )
              @custom_mandate_url = custom_mandate_url
              @default_for = default_for
              @interval_description = interval_description
              @payment_schedule = payment_schedule
              @transaction_type = transaction_type
            end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency
          # Additional fields for Mandate creation
          attr_accessor :mandate_options
          # Bank account verification method.
          attr_accessor :verification_method

          def initialize(currency: nil, mandate_options: nil, verification_method: nil)
            @currency = currency
            @mandate_options = mandate_options
            @verification_method = verification_method
          end
        end

        class AmazonPay < Stripe::RequestParams
        end

        class BacsDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
            attr_accessor :reference_prefix

            def initialize(reference_prefix: nil)
              @reference_prefix = reference_prefix
            end
          end
          # Additional fields for Mandate creation
          attr_accessor :mandate_options

          def initialize(mandate_options: nil)
            @mandate_options = mandate_options
          end
        end

        class Card < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            attr_accessor :amount
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            attr_accessor :amount_type
            # Currency in which future payments will be charged. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_accessor :currency
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            attr_accessor :description
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            attr_accessor :end_date
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            attr_accessor :interval
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            attr_accessor :interval_count
            # Unique identifier for the mandate or subscription.
            attr_accessor :reference
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            attr_accessor :start_date
            # Specifies the type of mandates supported. Possible values are `india`.
            attr_accessor :supported_types

            def initialize(
              amount: nil,
              amount_type: nil,
              currency: nil,
              description: nil,
              end_date: nil,
              interval: nil,
              interval_count: nil,
              reference: nil,
              start_date: nil,
              supported_types: nil
            )
              @amount = amount
              @amount_type = amount_type
              @currency = currency
              @description = description
              @end_date = end_date
              @interval = interval
              @interval_count = interval_count
              @reference = reference
              @start_date = start_date
              @supported_types = supported_types
            end
          end

          class ThreeDSecure < Stripe::RequestParams
            class NetworkOptions < Stripe::RequestParams
              class CartesBancaires < Stripe::RequestParams
                # The cryptogram calculation algorithm used by the card Issuer's ACS
                # to calculate the Authentication cryptogram. Also known as `cavvAlgorithm`.
                # messageExtension: CB-AVALGO
                attr_accessor :cb_avalgo
                # The exemption indicator returned from Cartes Bancaires in the ARes.
                # message extension: CB-EXEMPTION; string (4 characters)
                # This is a 3 byte bitmap (low significant byte first and most significant
                # bit first) that has been Base64 encoded
                attr_accessor :cb_exemption
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                attr_accessor :cb_score

                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil)
                  @cb_avalgo = cb_avalgo
                  @cb_exemption = cb_exemption
                  @cb_score = cb_score
                end
              end
              # Cartes Bancaires-specific 3DS fields.
              attr_accessor :cartes_bancaires

              def initialize(cartes_bancaires: nil)
                @cartes_bancaires = cartes_bancaires
              end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            attr_accessor :ares_trans_status
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            attr_accessor :cryptogram
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            attr_accessor :electronic_commerce_indicator
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            attr_accessor :network_options
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            attr_accessor :requestor_challenge_indicator
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            attr_accessor :transaction_id
            # The version of 3D Secure that was performed.
            attr_accessor :version

            def initialize(
              ares_trans_status: nil,
              cryptogram: nil,
              electronic_commerce_indicator: nil,
              network_options: nil,
              requestor_challenge_indicator: nil,
              transaction_id: nil,
              version: nil
            )
              @ares_trans_status = ares_trans_status
              @cryptogram = cryptogram
              @electronic_commerce_indicator = electronic_commerce_indicator
              @network_options = network_options
              @requestor_challenge_indicator = requestor_challenge_indicator
              @transaction_id = transaction_id
              @version = version
            end
          end
          # Configuration options for setting up an eMandate for cards issued in India.
          attr_accessor :mandate_options
          # When specified, this parameter signals that a card has been collected
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          attr_accessor :moto
          # Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the SetupIntent. Can be only set confirm-time.
          attr_accessor :network
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          attr_accessor :request_three_d_secure
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this setup.
          attr_accessor :three_d_secure

          def initialize(
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_three_d_secure: nil,
            three_d_secure: nil
          )
            @mandate_options = mandate_options
            @moto = moto
            @network = network
            @request_three_d_secure = request_three_d_secure
            @three_d_secure = three_d_secure
          end
        end

        class CardPresent < Stripe::RequestParams
        end

        class Link < Stripe::RequestParams
          # [Deprecated] This is a legacy parameter that no longer has any function.
          attr_accessor :persistent_token

          def initialize(persistent_token: nil)
            @persistent_token = persistent_token
          end
        end

        class Paypal < Stripe::RequestParams
          # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
          attr_accessor :billing_agreement_id

          def initialize(billing_agreement_id: nil)
            @billing_agreement_id = billing_agreement_id
          end
        end

        class SepaDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
            attr_accessor :reference_prefix

            def initialize(reference_prefix: nil)
              @reference_prefix = reference_prefix
            end
          end
          # Additional fields for Mandate creation
          attr_accessor :mandate_options

          def initialize(mandate_options: nil)
            @mandate_options = mandate_options
          end
        end

        class UsBankAccount < Stripe::RequestParams
          class FinancialConnections < Stripe::RequestParams
            class Filters < Stripe::RequestParams
              # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
              attr_accessor :account_subcategories

              def initialize(account_subcategories: nil)
                @account_subcategories = account_subcategories
              end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method.
            attr_accessor :filters
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            attr_accessor :permissions
            # List of data features that you would like to retrieve upon account creation.
            attr_accessor :prefetch
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            attr_accessor :return_url

            def initialize(filters: nil, permissions: nil, prefetch: nil, return_url: nil)
              @filters = filters
              @permissions = permissions
              @prefetch = prefetch
              @return_url = return_url
            end
          end

          class MandateOptions < Stripe::RequestParams
            # The method used to collect offline mandate customer acceptance.
            attr_accessor :collection_method

            def initialize(collection_method: nil)
              @collection_method = collection_method
            end
          end

          class Networks < Stripe::RequestParams
            # Triggers validations to run across the selected networks
            attr_accessor :requested

            def initialize(requested: nil)
              @requested = requested
            end
          end
          # Additional fields for Financial Connections Session creation
          attr_accessor :financial_connections
          # Additional fields for Mandate creation
          attr_accessor :mandate_options
          # Additional fields for network related functions
          attr_accessor :networks
          # Bank account verification method.
          attr_accessor :verification_method

          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            verification_method: nil
          )
            @financial_connections = financial_connections
            @mandate_options = mandate_options
            @networks = networks
            @verification_method = verification_method
          end
        end
        # If this is a `acss_debit` SetupIntent, this sub-hash contains details about the ACSS Debit payment method options.
        attr_accessor :acss_debit
        # If this is a `amazon_pay` SetupIntent, this sub-hash contains details about the AmazonPay payment method options.
        attr_accessor :amazon_pay
        # If this is a `bacs_debit` SetupIntent, this sub-hash contains details about the Bacs Debit payment method options.
        attr_accessor :bacs_debit
        # Configuration for any card setup attempted on this SetupIntent.
        attr_accessor :card
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the card-present payment method options.
        attr_accessor :card_present
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        attr_accessor :link
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        attr_accessor :paypal
        # If this is a `sepa_debit` SetupIntent, this sub-hash contains details about the SEPA Debit payment method options.
        attr_accessor :sepa_debit
        # If this is a `us_bank_account` SetupIntent, this sub-hash contains details about the US bank account payment method options.
        attr_accessor :us_bank_account

        def initialize(
          acss_debit: nil,
          amazon_pay: nil,
          bacs_debit: nil,
          card: nil,
          card_present: nil,
          link: nil,
          paypal: nil,
          sepa_debit: nil,
          us_bank_account: nil
        )
          @acss_debit = acss_debit
          @amazon_pay = amazon_pay
          @bacs_debit = bacs_debit
          @card = card
          @card_present = card_present
          @link = link
          @paypal = paypal
          @sepa_debit = sepa_debit
          @us_bank_account = us_bank_account
        end
      end
      # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
      #
      # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
      attr_accessor :attach_to_self
      # ID of the Customer this SetupIntent belongs to, if one exists.
      #
      # If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
      attr_accessor :customer
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Indicates the directions of money movement for which this payment method is intended to be used.
      #
      # Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
      attr_accessor :flow_directions
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent. To unset this field to null, pass in an empty string.
      attr_accessor :payment_method
      # The ID of the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) to use with this SetupIntent.
      attr_accessor :payment_method_configuration
      # When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-payment_method)
      # value in the SetupIntent.
      attr_accessor :payment_method_data
      # Payment method-specific configuration for this SetupIntent.
      attr_accessor :payment_method_options
      # The list of payment method types (for example, card) that this SetupIntent can set up. If you don't provide this, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods).
      attr_accessor :payment_method_types

      def initialize(
        attach_to_self: nil,
        customer: nil,
        description: nil,
        expand: nil,
        flow_directions: nil,
        metadata: nil,
        payment_method: nil,
        payment_method_configuration: nil,
        payment_method_data: nil,
        payment_method_options: nil,
        payment_method_types: nil
      )
        @attach_to_self = attach_to_self
        @customer = customer
        @description = description
        @expand = expand
        @flow_directions = flow_directions
        @metadata = metadata
        @payment_method = payment_method
        @payment_method_configuration = payment_method_configuration
        @payment_method_data = payment_method_data
        @payment_method_options = payment_method_options
        @payment_method_types = payment_method_types
      end
    end

    class CancelParams < Stripe::RequestParams
      # Reason for canceling this SetupIntent. Possible values are: `abandoned`, `requested_by_customer`, or `duplicate`
      attr_accessor :cancellation_reason
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(cancellation_reason: nil, expand: nil)
        @cancellation_reason = cancellation_reason
        @expand = expand
      end
    end

    class ConfirmParams < Stripe::RequestParams
      class MandateData < Stripe::RequestParams
        class CustomerAcceptance < Stripe::RequestParams
          class Offline < Stripe::RequestParams
          end

          class Online < Stripe::RequestParams
            # The IP address from which the Mandate was accepted by the customer.
            attr_accessor :ip_address
            # The user agent of the browser from which the Mandate was accepted by the customer.
            attr_accessor :user_agent

            def initialize(ip_address: nil, user_agent: nil)
              @ip_address = ip_address
              @user_agent = user_agent
            end
          end
          # The time at which the customer accepted the Mandate.
          attr_accessor :accepted_at
          # If this is a Mandate accepted offline, this hash contains details about the offline acceptance.
          attr_accessor :offline
          # If this is a Mandate accepted online, this hash contains details about the online acceptance.
          attr_accessor :online
          # The type of customer acceptance information included with the Mandate. One of `online` or `offline`.
          attr_accessor :type

          def initialize(accepted_at: nil, offline: nil, online: nil, type: nil)
            @accepted_at = accepted_at
            @offline = offline
            @online = online
            @type = type
          end
        end
        # This hash contains details about the customer acceptance of the Mandate.
        attr_accessor :customer_acceptance

        def initialize(customer_acceptance: nil)
          @customer_acceptance = customer_acceptance
        end
      end

      class PaymentMethodData < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          # Customer's bank account number.
          attr_accessor :account_number
          # Institution number of the customer's bank.
          attr_accessor :institution_number
          # Transit number of the customer's bank.
          attr_accessor :transit_number

          def initialize(account_number: nil, institution_number: nil, transit_number: nil)
            @account_number = account_number
            @institution_number = institution_number
            @transit_number = transit_number
          end
        end

        class Affirm < Stripe::RequestParams
        end

        class AfterpayClearpay < Stripe::RequestParams
        end

        class Alipay < Stripe::RequestParams
        end

        class Alma < Stripe::RequestParams
        end

        class AmazonPay < Stripe::RequestParams
        end

        class AuBecsDebit < Stripe::RequestParams
          # The account number for the bank account.
          attr_accessor :account_number
          # Bank-State-Branch number of the bank account.
          attr_accessor :bsb_number

          def initialize(account_number: nil, bsb_number: nil)
            @account_number = account_number
            @bsb_number = bsb_number
          end
        end

        class BacsDebit < Stripe::RequestParams
          # Account number of the bank account that the funds will be debited from.
          attr_accessor :account_number
          # Sort code of the bank account. (e.g., `10-20-30`)
          attr_accessor :sort_code

          def initialize(account_number: nil, sort_code: nil)
            @account_number = account_number
            @sort_code = sort_code
          end
        end

        class Bancontact < Stripe::RequestParams
        end

        class Billie < Stripe::RequestParams
        end

        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State, county, province, or region.
            attr_accessor :state

            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            )
              @city = city
              @country = country
              @line1 = line1
              @line2 = line2
              @postal_code = postal_code
              @state = state
            end
          end
          # Billing address.
          attr_accessor :address
          # Email address.
          attr_accessor :email
          # Full name.
          attr_accessor :name
          # Billing phone number (including extension).
          attr_accessor :phone
          # Taxpayer identification number. Used only for transactions between LATAM buyers and non-LATAM sellers.
          attr_accessor :tax_id

          def initialize(address: nil, email: nil, name: nil, phone: nil, tax_id: nil)
            @address = address
            @email = email
            @name = name
            @phone = phone
            @tax_id = tax_id
          end
        end

        class Blik < Stripe::RequestParams
        end

        class Boleto < Stripe::RequestParams
          # The tax ID of the customer (CPF for individual consumers or CNPJ for businesses consumers)
          attr_accessor :tax_id

          def initialize(tax_id: nil)
            @tax_id = tax_id
          end
        end

        class Cashapp < Stripe::RequestParams
        end

        class CustomerBalance < Stripe::RequestParams
        end

        class Eps < Stripe::RequestParams
          # The customer's bank.
          attr_accessor :bank

          def initialize(bank: nil)
            @bank = bank
          end
        end

        class Fpx < Stripe::RequestParams
          # Account holder type for FPX transaction
          attr_accessor :account_holder_type
          # The customer's bank.
          attr_accessor :bank

          def initialize(account_holder_type: nil, bank: nil)
            @account_holder_type = account_holder_type
            @bank = bank
          end
        end

        class Giropay < Stripe::RequestParams
        end

        class Grabpay < Stripe::RequestParams
        end

        class Ideal < Stripe::RequestParams
          # The customer's bank. Only use this parameter for existing customers. Don't use it for new customers.
          attr_accessor :bank

          def initialize(bank: nil)
            @bank = bank
          end
        end

        class InteracPresent < Stripe::RequestParams
        end

        class KakaoPay < Stripe::RequestParams
        end

        class Klarna < Stripe::RequestParams
          class Dob < Stripe::RequestParams
            # The day of birth, between 1 and 31.
            attr_accessor :day
            # The month of birth, between 1 and 12.
            attr_accessor :month
            # The four-digit year of birth.
            attr_accessor :year

            def initialize(day: nil, month: nil, year: nil)
              @day = day
              @month = month
              @year = year
            end
          end
          # Customer's date of birth
          attr_accessor :dob

          def initialize(dob: nil)
            @dob = dob
          end
        end

        class Konbini < Stripe::RequestParams
        end

        class KrCard < Stripe::RequestParams
        end

        class Link < Stripe::RequestParams
        end

        class Mobilepay < Stripe::RequestParams
        end

        class Multibanco < Stripe::RequestParams
        end

        class NaverPay < Stripe::RequestParams
          # Whether to use Naver Pay points or a card to fund this transaction. If not provided, this defaults to `card`.
          attr_accessor :funding

          def initialize(funding: nil)
            @funding = funding
          end
        end

        class NzBankAccount < Stripe::RequestParams
          # The name on the bank account. Only required if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
          attr_accessor :account_holder_name
          # The account number for the bank account.
          attr_accessor :account_number
          # The numeric code for the bank account's bank.
          attr_accessor :bank_code
          # The numeric code for the bank account's bank branch.
          attr_accessor :branch_code
          # Attribute for param field reference
          attr_accessor :reference
          # The suffix of the bank account number.
          attr_accessor :suffix

          def initialize(
            account_holder_name: nil,
            account_number: nil,
            bank_code: nil,
            branch_code: nil,
            reference: nil,
            suffix: nil
          )
            @account_holder_name = account_holder_name
            @account_number = account_number
            @bank_code = bank_code
            @branch_code = branch_code
            @reference = reference
            @suffix = suffix
          end
        end

        class Oxxo < Stripe::RequestParams
        end

        class P24 < Stripe::RequestParams
          # The customer's bank.
          attr_accessor :bank

          def initialize(bank: nil)
            @bank = bank
          end
        end

        class PayByBank < Stripe::RequestParams
        end

        class Payco < Stripe::RequestParams
        end

        class Paynow < Stripe::RequestParams
        end

        class Paypal < Stripe::RequestParams
        end

        class Pix < Stripe::RequestParams
        end

        class Promptpay < Stripe::RequestParams
        end

        class RadarOptions < Stripe::RequestParams
          # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
          attr_accessor :session

          def initialize(session: nil)
            @session = session
          end
        end

        class RevolutPay < Stripe::RequestParams
        end

        class SamsungPay < Stripe::RequestParams
        end

        class Satispay < Stripe::RequestParams
        end

        class SepaDebit < Stripe::RequestParams
          # IBAN of the bank account.
          attr_accessor :iban

          def initialize(iban: nil)
            @iban = iban
          end
        end

        class Sofort < Stripe::RequestParams
          # Two-letter ISO code representing the country the bank account is located in.
          attr_accessor :country

          def initialize(country: nil)
            @country = country
          end
        end

        class Swish < Stripe::RequestParams
        end

        class Twint < Stripe::RequestParams
        end

        class UsBankAccount < Stripe::RequestParams
          # Account holder type: individual or company.
          attr_accessor :account_holder_type
          # Account number of the bank account.
          attr_accessor :account_number
          # Account type: checkings or savings. Defaults to checking if omitted.
          attr_accessor :account_type
          # The ID of a Financial Connections Account to use as a payment method.
          attr_accessor :financial_connections_account
          # Routing number of the bank account.
          attr_accessor :routing_number

          def initialize(
            account_holder_type: nil,
            account_number: nil,
            account_type: nil,
            financial_connections_account: nil,
            routing_number: nil
          )
            @account_holder_type = account_holder_type
            @account_number = account_number
            @account_type = account_type
            @financial_connections_account = financial_connections_account
            @routing_number = routing_number
          end
        end

        class WechatPay < Stripe::RequestParams
        end

        class Zip < Stripe::RequestParams
        end
        # If this is an `acss_debit` PaymentMethod, this hash contains details about the ACSS Debit payment method.
        attr_accessor :acss_debit
        # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
        attr_accessor :affirm
        # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
        attr_accessor :afterpay_clearpay
        # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
        attr_accessor :alipay
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
        attr_accessor :allow_redisplay
        # If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
        attr_accessor :alma
        # If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
        attr_accessor :amazon_pay
        # If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
        attr_accessor :au_becs_debit
        # If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
        attr_accessor :bacs_debit
        # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
        attr_accessor :bancontact
        # If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
        attr_accessor :billie
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        attr_accessor :billing_details
        # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
        attr_accessor :blik
        # If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
        attr_accessor :boleto
        # If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
        attr_accessor :cashapp
        # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
        attr_accessor :customer_balance
        # If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
        attr_accessor :eps
        # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
        attr_accessor :fpx
        # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
        attr_accessor :giropay
        # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
        attr_accessor :grabpay
        # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
        attr_accessor :ideal
        # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
        attr_accessor :interac_present
        # If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
        attr_accessor :kakao_pay
        # If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
        attr_accessor :klarna
        # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
        attr_accessor :konbini
        # If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
        attr_accessor :kr_card
        # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
        attr_accessor :link
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
        attr_accessor :mobilepay
        # If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
        attr_accessor :multibanco
        # If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
        attr_accessor :naver_pay
        # If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
        attr_accessor :nz_bank_account
        # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
        attr_accessor :oxxo
        # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
        attr_accessor :p24
        # If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
        attr_accessor :pay_by_bank
        # If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
        attr_accessor :payco
        # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
        attr_accessor :paynow
        # If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
        attr_accessor :paypal
        # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
        attr_accessor :pix
        # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
        attr_accessor :promptpay
        # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
        attr_accessor :radar_options
        # If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
        attr_accessor :revolut_pay
        # If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
        attr_accessor :samsung_pay
        # If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
        attr_accessor :satispay
        # If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
        attr_accessor :sepa_debit
        # If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
        attr_accessor :sofort
        # If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
        attr_accessor :swish
        # If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
        attr_accessor :twint
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        attr_accessor :type
        # If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
        attr_accessor :us_bank_account
        # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
        attr_accessor :wechat_pay
        # If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
        attr_accessor :zip

        def initialize(
          acss_debit: nil,
          affirm: nil,
          afterpay_clearpay: nil,
          alipay: nil,
          allow_redisplay: nil,
          alma: nil,
          amazon_pay: nil,
          au_becs_debit: nil,
          bacs_debit: nil,
          bancontact: nil,
          billie: nil,
          billing_details: nil,
          blik: nil,
          boleto: nil,
          cashapp: nil,
          customer_balance: nil,
          eps: nil,
          fpx: nil,
          giropay: nil,
          grabpay: nil,
          ideal: nil,
          interac_present: nil,
          kakao_pay: nil,
          klarna: nil,
          konbini: nil,
          kr_card: nil,
          link: nil,
          metadata: nil,
          mobilepay: nil,
          multibanco: nil,
          naver_pay: nil,
          nz_bank_account: nil,
          oxxo: nil,
          p24: nil,
          pay_by_bank: nil,
          payco: nil,
          paynow: nil,
          paypal: nil,
          pix: nil,
          promptpay: nil,
          radar_options: nil,
          revolut_pay: nil,
          samsung_pay: nil,
          satispay: nil,
          sepa_debit: nil,
          sofort: nil,
          swish: nil,
          twint: nil,
          type: nil,
          us_bank_account: nil,
          wechat_pay: nil,
          zip: nil
        )
          @acss_debit = acss_debit
          @affirm = affirm
          @afterpay_clearpay = afterpay_clearpay
          @alipay = alipay
          @allow_redisplay = allow_redisplay
          @alma = alma
          @amazon_pay = amazon_pay
          @au_becs_debit = au_becs_debit
          @bacs_debit = bacs_debit
          @bancontact = bancontact
          @billie = billie
          @billing_details = billing_details
          @blik = blik
          @boleto = boleto
          @cashapp = cashapp
          @customer_balance = customer_balance
          @eps = eps
          @fpx = fpx
          @giropay = giropay
          @grabpay = grabpay
          @ideal = ideal
          @interac_present = interac_present
          @kakao_pay = kakao_pay
          @klarna = klarna
          @konbini = konbini
          @kr_card = kr_card
          @link = link
          @metadata = metadata
          @mobilepay = mobilepay
          @multibanco = multibanco
          @naver_pay = naver_pay
          @nz_bank_account = nz_bank_account
          @oxxo = oxxo
          @p24 = p24
          @pay_by_bank = pay_by_bank
          @payco = payco
          @paynow = paynow
          @paypal = paypal
          @pix = pix
          @promptpay = promptpay
          @radar_options = radar_options
          @revolut_pay = revolut_pay
          @samsung_pay = samsung_pay
          @satispay = satispay
          @sepa_debit = sepa_debit
          @sofort = sofort
          @swish = swish
          @twint = twint
          @type = type
          @us_bank_account = us_bank_account
          @wechat_pay = wechat_pay
          @zip = zip
        end
      end

      class PaymentMethodOptions < Stripe::RequestParams
        class AcssDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # A URL for custom mandate text to render during confirmation step.
            # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
            # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
            attr_accessor :custom_mandate_url
            # List of Stripe products where this mandate can be selected automatically.
            attr_accessor :default_for
            # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
            attr_accessor :interval_description
            # Payment schedule for the mandate.
            attr_accessor :payment_schedule
            # Transaction type of the mandate.
            attr_accessor :transaction_type

            def initialize(
              custom_mandate_url: nil,
              default_for: nil,
              interval_description: nil,
              payment_schedule: nil,
              transaction_type: nil
            )
              @custom_mandate_url = custom_mandate_url
              @default_for = default_for
              @interval_description = interval_description
              @payment_schedule = payment_schedule
              @transaction_type = transaction_type
            end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency
          # Additional fields for Mandate creation
          attr_accessor :mandate_options
          # Bank account verification method.
          attr_accessor :verification_method

          def initialize(currency: nil, mandate_options: nil, verification_method: nil)
            @currency = currency
            @mandate_options = mandate_options
            @verification_method = verification_method
          end
        end

        class AmazonPay < Stripe::RequestParams
        end

        class BacsDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
            attr_accessor :reference_prefix

            def initialize(reference_prefix: nil)
              @reference_prefix = reference_prefix
            end
          end
          # Additional fields for Mandate creation
          attr_accessor :mandate_options

          def initialize(mandate_options: nil)
            @mandate_options = mandate_options
          end
        end

        class Card < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Amount to be charged for future payments.
            attr_accessor :amount
            # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
            attr_accessor :amount_type
            # Currency in which future payments will be charged. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_accessor :currency
            # A description of the mandate or subscription that is meant to be displayed to the customer.
            attr_accessor :description
            # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
            attr_accessor :end_date
            # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
            attr_accessor :interval
            # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
            attr_accessor :interval_count
            # Unique identifier for the mandate or subscription.
            attr_accessor :reference
            # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
            attr_accessor :start_date
            # Specifies the type of mandates supported. Possible values are `india`.
            attr_accessor :supported_types

            def initialize(
              amount: nil,
              amount_type: nil,
              currency: nil,
              description: nil,
              end_date: nil,
              interval: nil,
              interval_count: nil,
              reference: nil,
              start_date: nil,
              supported_types: nil
            )
              @amount = amount
              @amount_type = amount_type
              @currency = currency
              @description = description
              @end_date = end_date
              @interval = interval
              @interval_count = interval_count
              @reference = reference
              @start_date = start_date
              @supported_types = supported_types
            end
          end

          class ThreeDSecure < Stripe::RequestParams
            class NetworkOptions < Stripe::RequestParams
              class CartesBancaires < Stripe::RequestParams
                # The cryptogram calculation algorithm used by the card Issuer's ACS
                # to calculate the Authentication cryptogram. Also known as `cavvAlgorithm`.
                # messageExtension: CB-AVALGO
                attr_accessor :cb_avalgo
                # The exemption indicator returned from Cartes Bancaires in the ARes.
                # message extension: CB-EXEMPTION; string (4 characters)
                # This is a 3 byte bitmap (low significant byte first and most significant
                # bit first) that has been Base64 encoded
                attr_accessor :cb_exemption
                # The risk score returned from Cartes Bancaires in the ARes.
                # message extension: CB-SCORE; numeric value 0-99
                attr_accessor :cb_score

                def initialize(cb_avalgo: nil, cb_exemption: nil, cb_score: nil)
                  @cb_avalgo = cb_avalgo
                  @cb_exemption = cb_exemption
                  @cb_score = cb_score
                end
              end
              # Cartes Bancaires-specific 3DS fields.
              attr_accessor :cartes_bancaires

              def initialize(cartes_bancaires: nil)
                @cartes_bancaires = cartes_bancaires
              end
            end
            # The `transStatus` returned from the card Issuer’s ACS in the ARes.
            attr_accessor :ares_trans_status
            # The cryptogram, also known as the "authentication value" (AAV, CAVV or
            # AEVV). This value is 20 bytes, base64-encoded into a 28-character string.
            # (Most 3D Secure providers will return the base64-encoded version, which
            # is what you should specify here.)
            attr_accessor :cryptogram
            # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure
            # provider and indicates what degree of authentication was performed.
            attr_accessor :electronic_commerce_indicator
            # Network specific 3DS fields. Network specific arguments require an
            # explicit card brand choice. The parameter `payment_method_options.card.network``
            # must be populated accordingly
            attr_accessor :network_options
            # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the
            # AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
            attr_accessor :requestor_challenge_indicator
            # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server
            # Transaction ID (dsTransID).
            attr_accessor :transaction_id
            # The version of 3D Secure that was performed.
            attr_accessor :version

            def initialize(
              ares_trans_status: nil,
              cryptogram: nil,
              electronic_commerce_indicator: nil,
              network_options: nil,
              requestor_challenge_indicator: nil,
              transaction_id: nil,
              version: nil
            )
              @ares_trans_status = ares_trans_status
              @cryptogram = cryptogram
              @electronic_commerce_indicator = electronic_commerce_indicator
              @network_options = network_options
              @requestor_challenge_indicator = requestor_challenge_indicator
              @transaction_id = transaction_id
              @version = version
            end
          end
          # Configuration options for setting up an eMandate for cards issued in India.
          attr_accessor :mandate_options
          # When specified, this parameter signals that a card has been collected
          # as MOTO (Mail Order Telephone Order) and thus out of scope for SCA. This
          # parameter can only be provided during confirmation.
          attr_accessor :moto
          # Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the SetupIntent. Can be only set confirm-time.
          attr_accessor :network
          # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
          attr_accessor :request_three_d_secure
          # If 3D Secure authentication was performed with a third-party provider,
          # the authentication details to use for this setup.
          attr_accessor :three_d_secure

          def initialize(
            mandate_options: nil,
            moto: nil,
            network: nil,
            request_three_d_secure: nil,
            three_d_secure: nil
          )
            @mandate_options = mandate_options
            @moto = moto
            @network = network
            @request_three_d_secure = request_three_d_secure
            @three_d_secure = three_d_secure
          end
        end

        class CardPresent < Stripe::RequestParams
        end

        class Link < Stripe::RequestParams
          # [Deprecated] This is a legacy parameter that no longer has any function.
          attr_accessor :persistent_token

          def initialize(persistent_token: nil)
            @persistent_token = persistent_token
          end
        end

        class Paypal < Stripe::RequestParams
          # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
          attr_accessor :billing_agreement_id

          def initialize(billing_agreement_id: nil)
            @billing_agreement_id = billing_agreement_id
          end
        end

        class SepaDebit < Stripe::RequestParams
          class MandateOptions < Stripe::RequestParams
            # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
            attr_accessor :reference_prefix

            def initialize(reference_prefix: nil)
              @reference_prefix = reference_prefix
            end
          end
          # Additional fields for Mandate creation
          attr_accessor :mandate_options

          def initialize(mandate_options: nil)
            @mandate_options = mandate_options
          end
        end

        class UsBankAccount < Stripe::RequestParams
          class FinancialConnections < Stripe::RequestParams
            class Filters < Stripe::RequestParams
              # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
              attr_accessor :account_subcategories

              def initialize(account_subcategories: nil)
                @account_subcategories = account_subcategories
              end
            end
            # Provide filters for the linked accounts that the customer can select for the payment method.
            attr_accessor :filters
            # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
            attr_accessor :permissions
            # List of data features that you would like to retrieve upon account creation.
            attr_accessor :prefetch
            # For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            attr_accessor :return_url

            def initialize(filters: nil, permissions: nil, prefetch: nil, return_url: nil)
              @filters = filters
              @permissions = permissions
              @prefetch = prefetch
              @return_url = return_url
            end
          end

          class MandateOptions < Stripe::RequestParams
            # The method used to collect offline mandate customer acceptance.
            attr_accessor :collection_method

            def initialize(collection_method: nil)
              @collection_method = collection_method
            end
          end

          class Networks < Stripe::RequestParams
            # Triggers validations to run across the selected networks
            attr_accessor :requested

            def initialize(requested: nil)
              @requested = requested
            end
          end
          # Additional fields for Financial Connections Session creation
          attr_accessor :financial_connections
          # Additional fields for Mandate creation
          attr_accessor :mandate_options
          # Additional fields for network related functions
          attr_accessor :networks
          # Bank account verification method.
          attr_accessor :verification_method

          def initialize(
            financial_connections: nil,
            mandate_options: nil,
            networks: nil,
            verification_method: nil
          )
            @financial_connections = financial_connections
            @mandate_options = mandate_options
            @networks = networks
            @verification_method = verification_method
          end
        end
        # If this is a `acss_debit` SetupIntent, this sub-hash contains details about the ACSS Debit payment method options.
        attr_accessor :acss_debit
        # If this is a `amazon_pay` SetupIntent, this sub-hash contains details about the AmazonPay payment method options.
        attr_accessor :amazon_pay
        # If this is a `bacs_debit` SetupIntent, this sub-hash contains details about the Bacs Debit payment method options.
        attr_accessor :bacs_debit
        # Configuration for any card setup attempted on this SetupIntent.
        attr_accessor :card
        # If this is a `card_present` PaymentMethod, this sub-hash contains details about the card-present payment method options.
        attr_accessor :card_present
        # If this is a `link` PaymentMethod, this sub-hash contains details about the Link payment method options.
        attr_accessor :link
        # If this is a `paypal` PaymentMethod, this sub-hash contains details about the PayPal payment method options.
        attr_accessor :paypal
        # If this is a `sepa_debit` SetupIntent, this sub-hash contains details about the SEPA Debit payment method options.
        attr_accessor :sepa_debit
        # If this is a `us_bank_account` SetupIntent, this sub-hash contains details about the US bank account payment method options.
        attr_accessor :us_bank_account

        def initialize(
          acss_debit: nil,
          amazon_pay: nil,
          bacs_debit: nil,
          card: nil,
          card_present: nil,
          link: nil,
          paypal: nil,
          sepa_debit: nil,
          us_bank_account: nil
        )
          @acss_debit = acss_debit
          @amazon_pay = amazon_pay
          @bacs_debit = bacs_debit
          @card = card
          @card_present = card_present
          @link = link
          @paypal = paypal
          @sepa_debit = sepa_debit
          @us_bank_account = us_bank_account
        end
      end
      # ID of the ConfirmationToken used to confirm this SetupIntent.
      #
      # If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
      attr_accessor :confirmation_token
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Attribute for param field mandate_data
      attr_accessor :mandate_data
      # ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent.
      attr_accessor :payment_method
      # When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-payment_method)
      # value in the SetupIntent.
      attr_accessor :payment_method_data
      # Payment method-specific configuration for this SetupIntent.
      attr_accessor :payment_method_options
      # The URL to redirect your customer back to after they authenticate on the payment method's app or site.
      # If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.
      # This parameter is only used for cards and other redirect-based payment methods.
      attr_accessor :return_url
      # Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
      attr_accessor :use_stripe_sdk

      def initialize(
        confirmation_token: nil,
        expand: nil,
        mandate_data: nil,
        payment_method: nil,
        payment_method_data: nil,
        payment_method_options: nil,
        return_url: nil,
        use_stripe_sdk: nil
      )
        @confirmation_token = confirmation_token
        @expand = expand
        @mandate_data = mandate_data
        @payment_method = payment_method
        @payment_method_data = payment_method_data
        @payment_method_options = payment_method_options
        @return_url = return_url
        @use_stripe_sdk = use_stripe_sdk
      end
    end

    class VerifyMicrodepositsParams < Stripe::RequestParams
      # Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
      attr_accessor :amounts
      # A six-character code starting with SM present in the microdeposit sent to the bank account.
      attr_accessor :descriptor_code
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(amounts: nil, descriptor_code: nil, expand: nil)
        @amounts = amounts
        @descriptor_code = descriptor_code
        @expand = expand
      end
    end
    # ID of the Connect application that created the SetupIntent.
    attr_reader :application
    # If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
    #
    # It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
    attr_reader :attach_to_self
    # Settings for dynamic payment methods compatible with this Setup Intent
    attr_reader :automatic_payment_methods
    # Reason for cancellation of this SetupIntent, one of `abandoned`, `requested_by_customer`, or `duplicate`.
    attr_reader :cancellation_reason
    # The client secret of this SetupIntent. Used for client-side retrieval using a publishable key.
    #
    # The client secret can be used to complete payment setup from your frontend. It should not be stored, logged, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
    attr_reader :client_secret
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # ID of the Customer this SetupIntent belongs to, if one exists.
    #
    # If present, the SetupIntent's payment method will be attached to the Customer on successful setup. Payment methods attached to other Customers cannot be used with this SetupIntent.
    attr_reader :customer
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    # Indicates the directions of money movement for which this payment method is intended to be used.
    #
    # Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
    attr_reader :flow_directions
    # Unique identifier for the object.
    attr_reader :id
    # The error encountered in the previous SetupIntent confirmation.
    attr_reader :last_setup_error
    # The most recent SetupAttempt for this SetupIntent.
    attr_reader :latest_attempt
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # ID of the multi use Mandate generated by the SetupIntent.
    attr_reader :mandate
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # If present, this property tells you what actions you need to take in order for your customer to continue payment setup.
    attr_reader :next_action
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The account (if any) for which the setup is intended.
    attr_reader :on_behalf_of
    # ID of the payment method used with this SetupIntent. If the payment method is `card_present` and isn't a digital wallet, then the [generated_card](https://docs.stripe.com/api/setup_attempts/object#setup_attempt_object-payment_method_details-card_present-generated_card) associated with the `latest_attempt` is attached to the Customer instead.
    attr_reader :payment_method
    # Information about the [payment method configuration](https://stripe.com/docs/api/payment_method_configurations) used for this Setup Intent.
    attr_reader :payment_method_configuration_details
    # Payment method-specific configuration for this SetupIntent.
    attr_reader :payment_method_options
    # The list of payment method types (e.g. card) that this SetupIntent is allowed to set up.
    attr_reader :payment_method_types
    # ID of the single_use Mandate generated by the SetupIntent.
    attr_reader :single_use_mandate
    # [Status](https://stripe.com/docs/payments/intents#intent-statuses) of this SetupIntent, one of `requires_payment_method`, `requires_confirmation`, `requires_action`, `processing`, `canceled`, or `succeeded`.
    attr_reader :status
    # Indicates how the payment method is intended to be used in the future.
    #
    # Use `on_session` if you intend to only reuse the payment method when the customer is in your checkout flow. Use `off_session` if your customer may or may not be in your checkout flow. If not provided, this value defaults to `off_session`.
    attr_reader :usage

    # You can cancel a SetupIntent object when it's in one of these statuses: requires_payment_method, requires_confirmation, or requires_action.
    #
    # After you cancel it, setup is abandoned and any operations on the SetupIntent fail with an error. You can't cancel the SetupIntent for a Checkout Session. [Expire the Checkout Session](https://stripe.com/docs/api/checkout/sessions/expire) instead.
    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/cancel", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # You can cancel a SetupIntent object when it's in one of these statuses: requires_payment_method, requires_confirmation, or requires_action.
    #
    # After you cancel it, setup is abandoned and any operations on the SetupIntent fail with an error. You can't cancel the SetupIntent for a Checkout Session. [Expire the Checkout Session](https://stripe.com/docs/api/checkout/sessions/expire) instead.
    def self.cancel(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/cancel", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # Confirm that your customer intends to set up the current or
    # provided payment method. For example, you would confirm a SetupIntent
    # when a customer hits the “Save” button on a payment method management
    # page on your website.
    #
    # If the selected payment method does not require any additional
    # steps from the customer, the SetupIntent will transition to the
    # succeeded status.
    #
    # Otherwise, it will transition to the requires_action status and
    # suggest additional actions via next_action. If setup fails,
    # the SetupIntent will transition to the
    # requires_payment_method status or the canceled status if the
    # confirmation limit is reached.
    def confirm(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/confirm", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Confirm that your customer intends to set up the current or
    # provided payment method. For example, you would confirm a SetupIntent
    # when a customer hits the “Save” button on a payment method management
    # page on your website.
    #
    # If the selected payment method does not require any additional
    # steps from the customer, the SetupIntent will transition to the
    # succeeded status.
    #
    # Otherwise, it will transition to the requires_action status and
    # suggest additional actions via next_action. If setup fails,
    # the SetupIntent will transition to the
    # requires_payment_method status or the canceled status if the
    # confirmation limit is reached.
    def self.confirm(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/confirm", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # Creates a SetupIntent object.
    #
    # After you create the SetupIntent, attach a payment method and [confirm](https://stripe.com/docs/api/setup_intents/confirm)
    # it to collect any required permissions to charge the payment method later.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/setup_intents", params: params, opts: opts)
    end

    # Returns a list of SetupIntents.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/setup_intents", params: params, opts: opts)
    end

    # Updates a SetupIntent object.
    def self.update(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    # Verifies microdeposits on a SetupIntent object.
    def verify_microdeposits(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/verify_microdeposits", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Verifies microdeposits on a SetupIntent object.
    def self.verify_microdeposits(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/verify_microdeposits", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end
  end
end
