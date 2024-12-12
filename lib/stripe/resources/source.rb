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
      attr_reader :account_number, :bank_name, :fingerprint, :refund_account_holder_name, :refund_account_holder_type, :refund_routing_number, :routing_number, :swift_code
    end

    class AchDebit < Stripe::StripeObject
      attr_reader :bank_name, :country, :fingerprint, :last4, :routing_number, :type
    end

    class AcssDebit < Stripe::StripeObject
      attr_reader :bank_address_city, :bank_address_line_1, :bank_address_line_2, :bank_address_postal_code, :bank_name, :category, :country, :fingerprint, :last4, :routing_number
    end

    class Alipay < Stripe::StripeObject
      attr_reader :data_string, :native_url, :statement_descriptor
    end

    class AuBecsDebit < Stripe::StripeObject
      attr_reader :bsb_number, :fingerprint, :last4
    end

    class Bancontact < Stripe::StripeObject
      attr_reader :bank_code, :bank_name, :bic, :iban_last4, :preferred_language, :statement_descriptor
    end

    class Card < Stripe::StripeObject
      attr_reader :address_line1_check, :address_zip_check, :brand, :country, :cvc_check, :description, :dynamic_last4, :exp_month, :exp_year, :fingerprint, :funding, :iin, :issuer, :last4, :name, :three_d_secure, :tokenization_method
    end

    class CardPresent < Stripe::StripeObject
      attr_reader :application_cryptogram, :application_preferred_name, :authorization_code, :authorization_response_code, :brand, :country, :cvm_type, :data_type, :dedicated_file_name, :description, :emv_auth_data, :evidence_customer_signature, :evidence_transaction_certificate, :exp_month, :exp_year, :fingerprint, :funding, :iin, :issuer, :last4, :pos_device_id, :pos_entry_mode, :read_method, :reader, :terminal_verification_results, :transaction_status_information
    end

    class CodeVerification < Stripe::StripeObject
      attr_reader :attempts_remaining, :status
    end

    class Eps < Stripe::StripeObject
      attr_reader :reference, :statement_descriptor
    end

    class Giropay < Stripe::StripeObject
      attr_reader :bank_code, :bank_name, :bic, :statement_descriptor
    end

    class Ideal < Stripe::StripeObject
      attr_reader :bank, :bic, :iban_last4, :statement_descriptor
    end

    class Klarna < Stripe::StripeObject
      attr_reader :background_image_url, :client_token, :first_name, :last_name, :locale, :logo_url, :page_title, :pay_later_asset_urls_descriptive, :pay_later_asset_urls_standard, :pay_later_name, :pay_later_redirect_url, :pay_now_asset_urls_descriptive, :pay_now_asset_urls_standard, :pay_now_name, :pay_now_redirect_url, :pay_over_time_asset_urls_descriptive, :pay_over_time_asset_urls_standard, :pay_over_time_name, :pay_over_time_redirect_url, :payment_method_categories, :purchase_country, :purchase_type, :redirect_url, :shipping_delay, :shipping_first_name, :shipping_last_name
    end

    class Multibanco < Stripe::StripeObject
      attr_reader :entity, :reference, :refund_account_holder_address_city, :refund_account_holder_address_country, :refund_account_holder_address_line1, :refund_account_holder_address_line2, :refund_account_holder_address_postal_code, :refund_account_holder_address_state, :refund_account_holder_name, :refund_iban
    end

    class Owner < Stripe::StripeObject
      class Address < Stripe::StripeObject
        attr_reader :city, :country, :line1, :line2, :postal_code, :state
      end

      class VerifiedAddress < Stripe::StripeObject
        attr_reader :city, :country, :line1, :line2, :postal_code, :state
      end
      attr_reader :address, :email, :name, :phone, :verified_address, :verified_email, :verified_name, :verified_phone
    end

    class P24 < Stripe::StripeObject
      attr_reader :reference
    end

    class Paypal < Stripe::StripeObject
      attr_reader :billing_agreement, :fingerprint, :payer_id, :reference_id, :reference_transaction_amount, :reference_transaction_charged, :statement_descriptor, :transaction_id, :verified_email
    end

    class Receiver < Stripe::StripeObject
      attr_reader :address, :amount_charged, :amount_received, :amount_returned, :refund_attributes_method, :refund_attributes_status
    end

    class Redirect < Stripe::StripeObject
      attr_reader :failure_reason, :return_url, :status, :url
    end

    class SepaCreditTransfer < Stripe::StripeObject
      attr_reader :bank_name, :bic, :iban, :refund_account_holder_address_city, :refund_account_holder_address_country, :refund_account_holder_address_line1, :refund_account_holder_address_line2, :refund_account_holder_address_postal_code, :refund_account_holder_address_state, :refund_account_holder_name, :refund_iban
    end

    class SepaDebit < Stripe::StripeObject
      attr_reader :bank_code, :branch_code, :country, :fingerprint, :last4, :mandate_reference, :mandate_url
    end

    class Sofort < Stripe::StripeObject
      attr_reader :bank_code, :bank_name, :bic, :country, :iban_last4, :preferred_language, :statement_descriptor
    end

    class SourceOrder < Stripe::StripeObject
      class Item < Stripe::StripeObject
        attr_reader :amount, :currency, :description, :parent, :quantity, :type
      end

      class Shipping < Stripe::StripeObject
        class Address < Stripe::StripeObject
          attr_reader :city, :country, :line1, :line2, :postal_code, :state
        end
        attr_reader :address, :carrier, :name, :phone, :tracking_number
      end
      attr_reader :amount, :currency, :email, :items, :shipping
    end

    class ThreeDSecure < Stripe::StripeObject
      attr_reader :address_line1_check, :address_zip_check, :authenticated, :brand, :card, :country, :customer, :cvc_check, :description, :dynamic_last4, :exp_month, :exp_year, :fingerprint, :funding, :iin, :issuer, :last4, :name, :three_d_secure, :tokenization_method
    end

    class Wechat < Stripe::StripeObject
      attr_reader :prepay_id, :qr_code_url, :statement_descriptor
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
    # Attribute for field paypal
    attr_reader :paypal
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
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/sources/%<id>s", { id: CGI.escape(id) }),
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
                                                                    params: params, opts: opts)
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
