# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # `Source` objects allow you to accept a variety of payment methods. They
  # represent a customer's payment instrument, and can be used with the Stripe API
  # just like a `Card` object: once chargeable, they can be charged, or can be
  # attached to customers.
  #
  # Stripe doesn't recommend using the deprecated [Sources API](https://stripe.com/docs/api/sources).
  # We recommend that you adopt the [PaymentMethods API](https://stripe.com/docs/api/payment_methods).
  # This newer API provides access to our latest features and payment method types.
  #
  # Related guides: [Sources API](https://stripe.com/docs/sources) and [Sources & Customers](https://stripe.com/docs/sources/customers).
  class Source < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::NestedResource
    include Stripe::APIOperations::Save

    OBJECT_NAME = "source"
    def self.object_name
      "source"
    end

    nested_resource_class_methods :source_transaction, operations: %i[retrieve list]

    class AchCreditTransfer < Stripe::StripeObject
      # Attribute for field account_number
      attr_reader :account_number
      # Attribute for field bank_name
      attr_reader :bank_name
      # Attribute for field fingerprint
      attr_reader :fingerprint
      # Attribute for field refund_account_holder_name
      attr_reader :refund_account_holder_name
      # Attribute for field refund_account_holder_type
      attr_reader :refund_account_holder_type
      # Attribute for field refund_routing_number
      attr_reader :refund_routing_number
      # Attribute for field routing_number
      attr_reader :routing_number
      # Attribute for field swift_code
      attr_reader :swift_code
    end

    class AchDebit < Stripe::StripeObject
      # Attribute for field bank_name
      attr_reader :bank_name
      # Attribute for field country
      attr_reader :country
      # Attribute for field fingerprint
      attr_reader :fingerprint
      # Attribute for field last4
      attr_reader :last4
      # Attribute for field routing_number
      attr_reader :routing_number
      # Attribute for field type
      attr_reader :type
    end

    class AcssDebit < Stripe::StripeObject
      # Attribute for field bank_address_city
      attr_reader :bank_address_city
      # Attribute for field bank_address_line_1
      attr_reader :bank_address_line_1
      # Attribute for field bank_address_line_2
      attr_reader :bank_address_line_2
      # Attribute for field bank_address_postal_code
      attr_reader :bank_address_postal_code
      # Attribute for field bank_name
      attr_reader :bank_name
      # Attribute for field category
      attr_reader :category
      # Attribute for field country
      attr_reader :country
      # Attribute for field fingerprint
      attr_reader :fingerprint
      # Attribute for field last4
      attr_reader :last4
      # Attribute for field routing_number
      attr_reader :routing_number
    end

    class Alipay < Stripe::StripeObject
      # Attribute for field data_string
      attr_reader :data_string
      # Attribute for field native_url
      attr_reader :native_url
      # Attribute for field statement_descriptor
      attr_reader :statement_descriptor
    end

    class AuBecsDebit < Stripe::StripeObject
      # Attribute for field bsb_number
      attr_reader :bsb_number
      # Attribute for field fingerprint
      attr_reader :fingerprint
      # Attribute for field last4
      attr_reader :last4
    end

    class Bancontact < Stripe::StripeObject
      # Attribute for field bank_code
      attr_reader :bank_code
      # Attribute for field bank_name
      attr_reader :bank_name
      # Attribute for field bic
      attr_reader :bic
      # Attribute for field iban_last4
      attr_reader :iban_last4
      # Attribute for field preferred_language
      attr_reader :preferred_language
      # Attribute for field statement_descriptor
      attr_reader :statement_descriptor
    end

    class Card < Stripe::StripeObject
      # Attribute for field address_line1_check
      attr_reader :address_line1_check
      # Attribute for field address_zip_check
      attr_reader :address_zip_check
      # Attribute for field brand
      attr_reader :brand
      # Attribute for field country
      attr_reader :country
      # Attribute for field cvc_check
      attr_reader :cvc_check
      # Attribute for field description
      attr_reader :description
      # Attribute for field dynamic_last4
      attr_reader :dynamic_last4
      # Attribute for field exp_month
      attr_reader :exp_month
      # Attribute for field exp_year
      attr_reader :exp_year
      # Attribute for field fingerprint
      attr_reader :fingerprint
      # Attribute for field funding
      attr_reader :funding
      # Attribute for field iin
      attr_reader :iin
      # Attribute for field issuer
      attr_reader :issuer
      # Attribute for field last4
      attr_reader :last4
      # Attribute for field name
      attr_reader :name
      # Attribute for field three_d_secure
      attr_reader :three_d_secure
      # Attribute for field tokenization_method
      attr_reader :tokenization_method
    end

    class CardPresent < Stripe::StripeObject
      # Attribute for field application_cryptogram
      attr_reader :application_cryptogram
      # Attribute for field application_preferred_name
      attr_reader :application_preferred_name
      # Attribute for field authorization_code
      attr_reader :authorization_code
      # Attribute for field authorization_response_code
      attr_reader :authorization_response_code
      # Attribute for field brand
      attr_reader :brand
      # Attribute for field country
      attr_reader :country
      # Attribute for field cvm_type
      attr_reader :cvm_type
      # Attribute for field data_type
      attr_reader :data_type
      # Attribute for field dedicated_file_name
      attr_reader :dedicated_file_name
      # Attribute for field description
      attr_reader :description
      # Attribute for field emv_auth_data
      attr_reader :emv_auth_data
      # Attribute for field evidence_customer_signature
      attr_reader :evidence_customer_signature
      # Attribute for field evidence_transaction_certificate
      attr_reader :evidence_transaction_certificate
      # Attribute for field exp_month
      attr_reader :exp_month
      # Attribute for field exp_year
      attr_reader :exp_year
      # Attribute for field fingerprint
      attr_reader :fingerprint
      # Attribute for field funding
      attr_reader :funding
      # Attribute for field iin
      attr_reader :iin
      # Attribute for field issuer
      attr_reader :issuer
      # Attribute for field last4
      attr_reader :last4
      # Attribute for field pos_device_id
      attr_reader :pos_device_id
      # Attribute for field pos_entry_mode
      attr_reader :pos_entry_mode
      # Attribute for field read_method
      attr_reader :read_method
      # Attribute for field reader
      attr_reader :reader
      # Attribute for field terminal_verification_results
      attr_reader :terminal_verification_results
      # Attribute for field transaction_status_information
      attr_reader :transaction_status_information
    end

    class CodeVerification < Stripe::StripeObject
      # The number of attempts remaining to authenticate the source object with a verification code.
      attr_reader :attempts_remaining
      # The status of the code verification, either `pending` (awaiting verification, `attempts_remaining` should be greater than 0), `succeeded` (successful verification) or `failed` (failed verification, cannot be verified anymore as `attempts_remaining` should be 0).
      attr_reader :status
    end

    class Eps < Stripe::StripeObject
      # Attribute for field reference
      attr_reader :reference
      # Attribute for field statement_descriptor
      attr_reader :statement_descriptor
    end

    class Giropay < Stripe::StripeObject
      # Attribute for field bank_code
      attr_reader :bank_code
      # Attribute for field bank_name
      attr_reader :bank_name
      # Attribute for field bic
      attr_reader :bic
      # Attribute for field statement_descriptor
      attr_reader :statement_descriptor
    end

    class Ideal < Stripe::StripeObject
      # Attribute for field bank
      attr_reader :bank
      # Attribute for field bic
      attr_reader :bic
      # Attribute for field iban_last4
      attr_reader :iban_last4
      # Attribute for field statement_descriptor
      attr_reader :statement_descriptor
    end

    class Klarna < Stripe::StripeObject
      # Attribute for field background_image_url
      attr_reader :background_image_url
      # Attribute for field client_token
      attr_reader :client_token
      # Attribute for field first_name
      attr_reader :first_name
      # Attribute for field last_name
      attr_reader :last_name
      # Attribute for field locale
      attr_reader :locale
      # Attribute for field logo_url
      attr_reader :logo_url
      # Attribute for field page_title
      attr_reader :page_title
      # Attribute for field pay_later_asset_urls_descriptive
      attr_reader :pay_later_asset_urls_descriptive
      # Attribute for field pay_later_asset_urls_standard
      attr_reader :pay_later_asset_urls_standard
      # Attribute for field pay_later_name
      attr_reader :pay_later_name
      # Attribute for field pay_later_redirect_url
      attr_reader :pay_later_redirect_url
      # Attribute for field pay_now_asset_urls_descriptive
      attr_reader :pay_now_asset_urls_descriptive
      # Attribute for field pay_now_asset_urls_standard
      attr_reader :pay_now_asset_urls_standard
      # Attribute for field pay_now_name
      attr_reader :pay_now_name
      # Attribute for field pay_now_redirect_url
      attr_reader :pay_now_redirect_url
      # Attribute for field pay_over_time_asset_urls_descriptive
      attr_reader :pay_over_time_asset_urls_descriptive
      # Attribute for field pay_over_time_asset_urls_standard
      attr_reader :pay_over_time_asset_urls_standard
      # Attribute for field pay_over_time_name
      attr_reader :pay_over_time_name
      # Attribute for field pay_over_time_redirect_url
      attr_reader :pay_over_time_redirect_url
      # Attribute for field payment_method_categories
      attr_reader :payment_method_categories
      # Attribute for field purchase_country
      attr_reader :purchase_country
      # Attribute for field purchase_type
      attr_reader :purchase_type
      # Attribute for field redirect_url
      attr_reader :redirect_url
      # Attribute for field shipping_delay
      attr_reader :shipping_delay
      # Attribute for field shipping_first_name
      attr_reader :shipping_first_name
      # Attribute for field shipping_last_name
      attr_reader :shipping_last_name
    end

    class Multibanco < Stripe::StripeObject
      # Attribute for field entity
      attr_reader :entity
      # Attribute for field reference
      attr_reader :reference
      # Attribute for field refund_account_holder_address_city
      attr_reader :refund_account_holder_address_city
      # Attribute for field refund_account_holder_address_country
      attr_reader :refund_account_holder_address_country
      # Attribute for field refund_account_holder_address_line1
      attr_reader :refund_account_holder_address_line1
      # Attribute for field refund_account_holder_address_line2
      attr_reader :refund_account_holder_address_line2
      # Attribute for field refund_account_holder_address_postal_code
      attr_reader :refund_account_holder_address_postal_code
      # Attribute for field refund_account_holder_address_state
      attr_reader :refund_account_holder_address_state
      # Attribute for field refund_account_holder_name
      attr_reader :refund_account_holder_name
      # Attribute for field refund_iban
      attr_reader :refund_iban
    end

    class Owner < Stripe::StripeObject
      class Address < Stripe::StripeObject
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
      end

      class VerifiedAddress < Stripe::StripeObject
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
      end
      # Owner's address.
      attr_reader :address
      # Owner's email address.
      attr_reader :email
      # Owner's full name.
      attr_reader :name
      # Owner's phone number (including extension).
      attr_reader :phone
      # Verified owner's address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
      attr_reader :verified_address
      # Verified owner's email address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
      attr_reader :verified_email
      # Verified owner's full name. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
      attr_reader :verified_name
      # Verified owner's phone number (including extension). Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
      attr_reader :verified_phone
    end

    class P24 < Stripe::StripeObject
      # Attribute for field reference
      attr_reader :reference
    end

    class Receiver < Stripe::StripeObject
      # The address of the receiver source. This is the value that should be communicated to the customer to send their funds to.
      attr_reader :address
      # The total amount that was moved to your balance. This is almost always equal to the amount charged. In rare cases when customers deposit excess funds and we are unable to refund those, those funds get moved to your balance and show up in amount_charged as well. The amount charged is expressed in the source's currency.
      attr_reader :amount_charged
      # The total amount received by the receiver source. `amount_received = amount_returned + amount_charged` should be true for consumed sources unless customers deposit excess funds. The amount received is expressed in the source's currency.
      attr_reader :amount_received
      # The total amount that was returned to the customer. The amount returned is expressed in the source's currency.
      attr_reader :amount_returned
      # Type of refund attribute method, one of `email`, `manual`, or `none`.
      attr_reader :refund_attributes_method
      # Type of refund attribute status, one of `missing`, `requested`, or `available`.
      attr_reader :refund_attributes_status
    end

    class Redirect < Stripe::StripeObject
      # The failure reason for the redirect, either `user_abort` (the customer aborted or dropped out of the redirect flow), `declined` (the authentication failed or the transaction was declined), or `processing_error` (the redirect failed due to a technical error). Present only if the redirect status is `failed`.
      attr_reader :failure_reason
      # The URL you provide to redirect the customer to after they authenticated their payment.
      attr_reader :return_url
      # The status of the redirect, either `pending` (ready to be used by your customer to authenticate the transaction), `succeeded` (succesful authentication, cannot be reused) or `not_required` (redirect should not be used) or `failed` (failed authentication, cannot be reused).
      attr_reader :status
      # The URL provided to you to redirect a customer to as part of a `redirect` authentication flow.
      attr_reader :url
    end

    class SepaCreditTransfer < Stripe::StripeObject
      # Attribute for field bank_name
      attr_reader :bank_name
      # Attribute for field bic
      attr_reader :bic
      # Attribute for field iban
      attr_reader :iban
      # Attribute for field refund_account_holder_address_city
      attr_reader :refund_account_holder_address_city
      # Attribute for field refund_account_holder_address_country
      attr_reader :refund_account_holder_address_country
      # Attribute for field refund_account_holder_address_line1
      attr_reader :refund_account_holder_address_line1
      # Attribute for field refund_account_holder_address_line2
      attr_reader :refund_account_holder_address_line2
      # Attribute for field refund_account_holder_address_postal_code
      attr_reader :refund_account_holder_address_postal_code
      # Attribute for field refund_account_holder_address_state
      attr_reader :refund_account_holder_address_state
      # Attribute for field refund_account_holder_name
      attr_reader :refund_account_holder_name
      # Attribute for field refund_iban
      attr_reader :refund_iban
    end

    class SepaDebit < Stripe::StripeObject
      # Attribute for field bank_code
      attr_reader :bank_code
      # Attribute for field branch_code
      attr_reader :branch_code
      # Attribute for field country
      attr_reader :country
      # Attribute for field fingerprint
      attr_reader :fingerprint
      # Attribute for field last4
      attr_reader :last4
      # Attribute for field mandate_reference
      attr_reader :mandate_reference
      # Attribute for field mandate_url
      attr_reader :mandate_url
    end

    class Sofort < Stripe::StripeObject
      # Attribute for field bank_code
      attr_reader :bank_code
      # Attribute for field bank_name
      attr_reader :bank_name
      # Attribute for field bic
      attr_reader :bic
      # Attribute for field country
      attr_reader :country
      # Attribute for field iban_last4
      attr_reader :iban_last4
      # Attribute for field preferred_language
      attr_reader :preferred_language
      # Attribute for field statement_descriptor
      attr_reader :statement_descriptor
    end

    class SourceOrder < Stripe::StripeObject
      class Item < Stripe::StripeObject
        # The amount (price) for this order item.
        attr_reader :amount
        # This currency of this order item. Required when `amount` is present.
        attr_reader :currency
        # Human-readable description for this order item.
        attr_reader :description
        # The ID of the associated object for this line item. Expandable if not null (e.g., expandable to a SKU).
        attr_reader :parent
        # The quantity of this order item. When type is `sku`, this is the number of instances of the SKU to be ordered.
        attr_reader :quantity
        # The type of this order item. Must be `sku`, `tax`, or `shipping`.
        attr_reader :type
      end

      class Shipping < Stripe::StripeObject
        class Address < Stripe::StripeObject
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
        end
        # Attribute for field address
        attr_reader :address
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        attr_reader :carrier
        # Recipient name.
        attr_reader :name
        # Recipient phone (including extension).
        attr_reader :phone
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        attr_reader :tracking_number
      end
      # A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount for the order.
      attr_reader :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # The email address of the customer placing the order.
      attr_reader :email
      # List of items constituting the order.
      attr_reader :items
      # Attribute for field shipping
      attr_reader :shipping
    end

    class ThreeDSecure < Stripe::StripeObject
      # Attribute for field address_line1_check
      attr_reader :address_line1_check
      # Attribute for field address_zip_check
      attr_reader :address_zip_check
      # Attribute for field authenticated
      attr_reader :authenticated
      # Attribute for field brand
      attr_reader :brand
      # Attribute for field card
      attr_reader :card
      # Attribute for field country
      attr_reader :country
      # Attribute for field customer
      attr_reader :customer
      # Attribute for field cvc_check
      attr_reader :cvc_check
      # Attribute for field description
      attr_reader :description
      # Attribute for field dynamic_last4
      attr_reader :dynamic_last4
      # Attribute for field exp_month
      attr_reader :exp_month
      # Attribute for field exp_year
      attr_reader :exp_year
      # Attribute for field fingerprint
      attr_reader :fingerprint
      # Attribute for field funding
      attr_reader :funding
      # Attribute for field iin
      attr_reader :iin
      # Attribute for field issuer
      attr_reader :issuer
      # Attribute for field last4
      attr_reader :last4
      # Attribute for field name
      attr_reader :name
      # Attribute for field three_d_secure
      attr_reader :three_d_secure
      # Attribute for field tokenization_method
      attr_reader :tokenization_method
    end

    class Wechat < Stripe::StripeObject
      # Attribute for field prepay_id
      attr_reader :prepay_id
      # Attribute for field qr_code_url
      attr_reader :qr_code_url
      # Attribute for field statement_descriptor
      attr_reader :statement_descriptor
    end

    class UpdateParams < Stripe::RequestParams
      class Mandate < Stripe::RequestParams
        class Acceptance < Stripe::RequestParams
          class Offline < Stripe::RequestParams
            # An email to contact you with if a copy of the mandate is requested, required if `type` is `offline`.
            attr_accessor :contact_email

            def initialize(contact_email: nil)
              @contact_email = contact_email
            end
          end

          class Online < Stripe::RequestParams
            # The Unix timestamp (in seconds) when the mandate was accepted or refused by the customer.
            attr_accessor :date
            # The IP address from which the mandate was accepted or refused by the customer.
            attr_accessor :ip
            # The user agent of the browser from which the mandate was accepted or refused by the customer.
            attr_accessor :user_agent

            def initialize(date: nil, ip: nil, user_agent: nil)
              @date = date
              @ip = ip
              @user_agent = user_agent
            end
          end
          # The Unix timestamp (in seconds) when the mandate was accepted or refused by the customer.
          attr_accessor :date
          # The IP address from which the mandate was accepted or refused by the customer.
          attr_accessor :ip
          # The parameters required to store a mandate accepted offline. Should only be set if `mandate[type]` is `offline`
          attr_accessor :offline
          # The parameters required to store a mandate accepted online. Should only be set if `mandate[type]` is `online`
          attr_accessor :online
          # The status of the mandate acceptance. Either `accepted` (the mandate was accepted) or `refused` (the mandate was refused).
          attr_accessor :status
          # The type of acceptance information included with the mandate. Either `online` or `offline`
          attr_accessor :type
          # The user agent of the browser from which the mandate was accepted or refused by the customer.
          attr_accessor :user_agent

          def initialize(
            date: nil,
            ip: nil,
            offline: nil,
            online: nil,
            status: nil,
            type: nil,
            user_agent: nil
          )
            @date = date
            @ip = ip
            @offline = offline
            @online = online
            @status = status
            @type = type
            @user_agent = user_agent
          end
        end
        # The parameters required to notify Stripe of a mandate acceptance or refusal by the customer.
        attr_accessor :acceptance
        # The amount specified by the mandate. (Leave null for a mandate covering all amounts)
        attr_accessor :amount
        # The currency specified by the mandate. (Must match `currency` of the source)
        attr_accessor :currency
        # The interval of debits permitted by the mandate. Either `one_time` (just permitting a single debit), `scheduled` (with debits on an agreed schedule or for clearly-defined events), or `variable`(for debits with any frequency)
        attr_accessor :interval
        # The method Stripe should use to notify the customer of upcoming debit instructions and/or mandate confirmation as required by the underlying debit network. Either `email` (an email is sent directly to the customer), `manual` (a `source.mandate_notification` event is sent to your webhooks endpoint and you should handle the notification) or `none` (the underlying debit network does not require any notification).
        attr_accessor :notification_method

        def initialize(
          acceptance: nil,
          amount: nil,
          currency: nil,
          interval: nil,
          notification_method: nil
        )
          @acceptance = acceptance
          @amount = amount
          @currency = currency
          @interval = interval
          @notification_method = notification_method
        end
      end

      class Owner < Stripe::RequestParams
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
        # Owner's address.
        attr_accessor :address
        # Owner's email address.
        attr_accessor :email
        # Owner's full name.
        attr_accessor :name
        # Owner's phone number.
        attr_accessor :phone

        def initialize(address: nil, email: nil, name: nil, phone: nil)
          @address = address
          @email = email
          @name = name
          @phone = phone
        end
      end

      class SourceOrder < Stripe::RequestParams
        class Item < Stripe::RequestParams
          # Attribute for param field amount
          attr_accessor :amount
          # Attribute for param field currency
          attr_accessor :currency
          # Attribute for param field description
          attr_accessor :description
          # The ID of the SKU being ordered.
          attr_accessor :parent
          # The quantity of this order item. When type is `sku`, this is the number of instances of the SKU to be ordered.
          attr_accessor :quantity
          # Attribute for param field type
          attr_accessor :type

          def initialize(
            amount: nil,
            currency: nil,
            description: nil,
            parent: nil,
            quantity: nil,
            type: nil
          )
            @amount = amount
            @currency = currency
            @description = description
            @parent = parent
            @quantity = quantity
            @type = type
          end
        end

        class Shipping < Stripe::RequestParams
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
          # Shipping address.
          attr_accessor :address
          # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
          attr_accessor :carrier
          # Recipient name.
          attr_accessor :name
          # Recipient phone (including extension).
          attr_accessor :phone
          # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
          attr_accessor :tracking_number

          def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil)
            @address = address
            @carrier = carrier
            @name = name
            @phone = phone
            @tracking_number = tracking_number
          end
        end
        # List of items constituting the order.
        attr_accessor :items
        # Shipping address for the order. Required if any of the SKUs are for products that have `shippable` set to true.
        attr_accessor :shipping

        def initialize(items: nil, shipping: nil)
          @items = items
          @shipping = shipping
        end
      end
      # Amount associated with the source.
      attr_accessor :amount
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Information about a mandate possibility attached to a source object (generally for bank debits) as well as its acceptance status.
      attr_accessor :mandate
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Information about the owner of the payment instrument that may be used or required by particular source types.
      attr_accessor :owner
      # Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
      attr_accessor :source_order

      def initialize(
        amount: nil,
        expand: nil,
        mandate: nil,
        metadata: nil,
        owner: nil,
        source_order: nil
      )
        @amount = amount
        @expand = expand
        @mandate = mandate
        @metadata = metadata
        @owner = owner
        @source_order = source_order
      end
    end

    class CreateParams < Stripe::RequestParams
      class Mandate < Stripe::RequestParams
        class Acceptance < Stripe::RequestParams
          class Offline < Stripe::RequestParams
            # An email to contact you with if a copy of the mandate is requested, required if `type` is `offline`.
            attr_accessor :contact_email

            def initialize(contact_email: nil)
              @contact_email = contact_email
            end
          end

          class Online < Stripe::RequestParams
            # The Unix timestamp (in seconds) when the mandate was accepted or refused by the customer.
            attr_accessor :date
            # The IP address from which the mandate was accepted or refused by the customer.
            attr_accessor :ip
            # The user agent of the browser from which the mandate was accepted or refused by the customer.
            attr_accessor :user_agent

            def initialize(date: nil, ip: nil, user_agent: nil)
              @date = date
              @ip = ip
              @user_agent = user_agent
            end
          end
          # The Unix timestamp (in seconds) when the mandate was accepted or refused by the customer.
          attr_accessor :date
          # The IP address from which the mandate was accepted or refused by the customer.
          attr_accessor :ip
          # The parameters required to store a mandate accepted offline. Should only be set if `mandate[type]` is `offline`
          attr_accessor :offline
          # The parameters required to store a mandate accepted online. Should only be set if `mandate[type]` is `online`
          attr_accessor :online
          # The status of the mandate acceptance. Either `accepted` (the mandate was accepted) or `refused` (the mandate was refused).
          attr_accessor :status
          # The type of acceptance information included with the mandate. Either `online` or `offline`
          attr_accessor :type
          # The user agent of the browser from which the mandate was accepted or refused by the customer.
          attr_accessor :user_agent

          def initialize(
            date: nil,
            ip: nil,
            offline: nil,
            online: nil,
            status: nil,
            type: nil,
            user_agent: nil
          )
            @date = date
            @ip = ip
            @offline = offline
            @online = online
            @status = status
            @type = type
            @user_agent = user_agent
          end
        end
        # The parameters required to notify Stripe of a mandate acceptance or refusal by the customer.
        attr_accessor :acceptance
        # The amount specified by the mandate. (Leave null for a mandate covering all amounts)
        attr_accessor :amount
        # The currency specified by the mandate. (Must match `currency` of the source)
        attr_accessor :currency
        # The interval of debits permitted by the mandate. Either `one_time` (just permitting a single debit), `scheduled` (with debits on an agreed schedule or for clearly-defined events), or `variable`(for debits with any frequency)
        attr_accessor :interval
        # The method Stripe should use to notify the customer of upcoming debit instructions and/or mandate confirmation as required by the underlying debit network. Either `email` (an email is sent directly to the customer), `manual` (a `source.mandate_notification` event is sent to your webhooks endpoint and you should handle the notification) or `none` (the underlying debit network does not require any notification).
        attr_accessor :notification_method

        def initialize(
          acceptance: nil,
          amount: nil,
          currency: nil,
          interval: nil,
          notification_method: nil
        )
          @acceptance = acceptance
          @amount = amount
          @currency = currency
          @interval = interval
          @notification_method = notification_method
        end
      end

      class Owner < Stripe::RequestParams
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
        # Owner's address.
        attr_accessor :address
        # Owner's email address.
        attr_accessor :email
        # Owner's full name.
        attr_accessor :name
        # Owner's phone number.
        attr_accessor :phone

        def initialize(address: nil, email: nil, name: nil, phone: nil)
          @address = address
          @email = email
          @name = name
          @phone = phone
        end
      end

      class Receiver < Stripe::RequestParams
        # The method Stripe should use to request information needed to process a refund or mispayment. Either `email` (an email is sent directly to the customer) or `manual` (a `source.refund_attributes_required` event is sent to your webhooks endpoint). Refer to each payment method's documentation to learn which refund attributes may be required.
        attr_accessor :refund_attributes_method

        def initialize(refund_attributes_method: nil)
          @refund_attributes_method = refund_attributes_method
        end
      end

      class Redirect < Stripe::RequestParams
        # The URL you provide to redirect the customer back to you after they authenticated their payment. It can use your application URI scheme in the context of a mobile application.
        attr_accessor :return_url

        def initialize(return_url: nil)
          @return_url = return_url
        end
      end

      class SourceOrder < Stripe::RequestParams
        class Item < Stripe::RequestParams
          # Attribute for param field amount
          attr_accessor :amount
          # Attribute for param field currency
          attr_accessor :currency
          # Attribute for param field description
          attr_accessor :description
          # The ID of the SKU being ordered.
          attr_accessor :parent
          # The quantity of this order item. When type is `sku`, this is the number of instances of the SKU to be ordered.
          attr_accessor :quantity
          # Attribute for param field type
          attr_accessor :type

          def initialize(
            amount: nil,
            currency: nil,
            description: nil,
            parent: nil,
            quantity: nil,
            type: nil
          )
            @amount = amount
            @currency = currency
            @description = description
            @parent = parent
            @quantity = quantity
            @type = type
          end
        end

        class Shipping < Stripe::RequestParams
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
          # Shipping address.
          attr_accessor :address
          # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
          attr_accessor :carrier
          # Recipient name.
          attr_accessor :name
          # Recipient phone (including extension).
          attr_accessor :phone
          # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
          attr_accessor :tracking_number

          def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil)
            @address = address
            @carrier = carrier
            @name = name
            @phone = phone
            @tracking_number = tracking_number
          end
        end
        # List of items constituting the order.
        attr_accessor :items
        # Shipping address for the order. Required if any of the SKUs are for products that have `shippable` set to true.
        attr_accessor :shipping

        def initialize(items: nil, shipping: nil)
          @items = items
          @shipping = shipping
        end
      end
      # Amount associated with the source. This is the amount for which the source will be chargeable once ready. Required for `single_use` sources. Not supported for `receiver` type sources, where charge amount may not be specified until funds land.
      attr_accessor :amount
      # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) associated with the source. This is the currency for which the source will be chargeable once ready.
      attr_accessor :currency
      # The `Customer` to whom the original source is attached to. Must be set when the original source is not a `Source` (e.g., `Card`).
      attr_accessor :customer
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The authentication `flow` of the source to create. `flow` is one of `redirect`, `receiver`, `code_verification`, `none`. It is generally inferred unless a type supports multiple flows.
      attr_accessor :flow
      # Information about a mandate possibility attached to a source object (generally for bank debits) as well as its acceptance status.
      attr_accessor :mandate
      # Attribute for param field metadata
      attr_accessor :metadata
      # The source to share.
      attr_accessor :original_source
      # Information about the owner of the payment instrument that may be used or required by particular source types.
      attr_accessor :owner
      # Optional parameters for the receiver flow. Can be set only if the source is a receiver (`flow` is `receiver`).
      attr_accessor :receiver
      # Parameters required for the redirect flow. Required if the source is authenticated by a redirect (`flow` is `redirect`).
      attr_accessor :redirect
      # Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
      attr_accessor :source_order
      # An arbitrary string to be displayed on your customer's statement. As an example, if your website is `RunClub` and the item you're charging for is a race ticket, you may want to specify a `statement_descriptor` of `RunClub 5K race ticket.` While many payment types will display this information, some may not display it at all.
      attr_accessor :statement_descriptor
      # An optional token used to create the source. When passed, token properties will override source parameters.
      attr_accessor :token
      # The `type` of the source to create. Required unless `customer` and `original_source` are specified (see the [Cloning card Sources](https://stripe.com/docs/sources/connect#cloning-card-sources) guide)
      attr_accessor :type
      # Attribute for param field usage
      attr_accessor :usage

      def initialize(
        amount: nil,
        currency: nil,
        customer: nil,
        expand: nil,
        flow: nil,
        mandate: nil,
        metadata: nil,
        original_source: nil,
        owner: nil,
        receiver: nil,
        redirect: nil,
        source_order: nil,
        statement_descriptor: nil,
        token: nil,
        type: nil,
        usage: nil
      )
        @amount = amount
        @currency = currency
        @customer = customer
        @expand = expand
        @flow = flow
        @mandate = mandate
        @metadata = metadata
        @original_source = original_source
        @owner = owner
        @receiver = receiver
        @redirect = redirect
        @source_order = source_order
        @statement_descriptor = statement_descriptor
        @token = token
        @type = type
        @usage = usage
      end
    end

    class VerifyParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The values needed to verify the source.
      attr_accessor :values

      def initialize(expand: nil, values: nil)
        @expand = expand
        @values = values
      end
    end
    # Attribute for field ach_credit_transfer
    attr_reader :ach_credit_transfer
    # Attribute for field ach_debit
    attr_reader :ach_debit
    # Attribute for field acss_debit
    attr_reader :acss_debit
    # Attribute for field alipay
    attr_reader :alipay
    # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
    attr_reader :allow_redisplay
    # A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount associated with the source. This is the amount for which the source will be chargeable once ready. Required for `single_use` sources.
    attr_reader :amount
    # Attribute for field au_becs_debit
    attr_reader :au_becs_debit
    # Attribute for field bancontact
    attr_reader :bancontact
    # Attribute for field card
    attr_reader :card
    # Attribute for field card_present
    attr_reader :card_present
    # The client secret of the source. Used for client-side retrieval using a publishable key.
    attr_reader :client_secret
    # Attribute for field code_verification
    attr_reader :code_verification
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) associated with the source. This is the currency for which the source will be chargeable once ready. Required for `single_use` sources.
    attr_reader :currency
    # The ID of the customer to which this source is attached. This will not be present when the source has not been attached to a customer.
    attr_reader :customer
    # Attribute for field eps
    attr_reader :eps
    # The authentication `flow` of the source. `flow` is one of `redirect`, `receiver`, `code_verification`, `none`.
    attr_reader :flow
    # Attribute for field giropay
    attr_reader :giropay
    # Unique identifier for the object.
    attr_reader :id
    # Attribute for field ideal
    attr_reader :ideal
    # Attribute for field klarna
    attr_reader :klarna
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # Attribute for field multibanco
    attr_reader :multibanco
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Information about the owner of the payment instrument that may be used or required by particular source types.
    attr_reader :owner
    # Attribute for field p24
    attr_reader :p24
    # Attribute for field receiver
    attr_reader :receiver
    # Attribute for field redirect
    attr_reader :redirect
    # Attribute for field sepa_credit_transfer
    attr_reader :sepa_credit_transfer
    # Attribute for field sepa_debit
    attr_reader :sepa_debit
    # Attribute for field sofort
    attr_reader :sofort
    # Attribute for field source_order
    attr_reader :source_order
    # Extra information about a source. This will appear on your customer's statement every time you charge the source.
    attr_reader :statement_descriptor
    # The status of the source, one of `canceled`, `chargeable`, `consumed`, `failed`, or `pending`. Only `chargeable` sources can be used to create a charge.
    attr_reader :status
    # Attribute for field three_d_secure
    attr_reader :three_d_secure
    # The `type` of the source. The `type` is a payment method, one of `ach_credit_transfer`, `ach_debit`, `alipay`, `bancontact`, `card`, `card_present`, `eps`, `giropay`, `ideal`, `multibanco`, `klarna`, `p24`, `sepa_debit`, `sofort`, `three_d_secure`, or `wechat`. An additional hash is included on the source with a name matching this value. It contains additional information specific to the [payment method](https://stripe.com/docs/sources) used.
    attr_reader :type
    # Either `reusable` or `single_use`. Whether this source should be reusable or not. Some source types may or may not be reusable by construction, while others may leave the option at creation. If an incompatible value is passed, an error will be returned.
    attr_reader :usage
    # Attribute for field wechat
    attr_reader :wechat

    # Creates a new source object.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/sources", params: params, opts: opts)
    end

    # Updates the specified source by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    #
    # This request accepts the metadata and owner as arguments. It is also possible to update type specific information for selected payment methods. Please refer to our [payment method guides](https://stripe.com/docs/sources) for more detail.
    def self.update(source, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/sources/%<source>s", { source: CGI.escape(source) }),
        params: params,
        opts: opts
      )
    end

    # Verify a given source.
    def verify(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/sources/%<source>s/verify", { source: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Verify a given source.
    def self.verify(source, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/sources/%<source>s/verify", { source: CGI.escape(source) }),
        params: params,
        opts: opts
      )
    end

    def detach(params = {}, opts = {})
      if !respond_to?(:customer) || customer.nil? || customer.empty?
        raise NotImplementedError,
              "This source object does not appear to be currently attached " \
              "to a customer object."
      end

      url = "#{Customer.resource_url}/#{CGI.escape(customer)}/sources" \
            "/#{CGI.escape(id)}"
      opts = Util.normalize_opts(opts)
      APIRequestor.active_requestor.execute_request_initialize_from(:delete, url, :api, self,
                                                                    params: params, opts: RequestOptions.extract_opts_from_hash(opts))
    end

    def source_transactions(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: resource_url + "/source_transactions",
        params: params,
        opts: opts
      )
    end
    extend Gem::Deprecate
    deprecate :source_transactions, :"Source.list_source_transactions", 2020, 1
  end
end
