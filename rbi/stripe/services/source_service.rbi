# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class SourceService < StripeService
    attr_reader :transactions
    class DetachParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class RetrieveParams < Stripe::RequestParams
      # The client secret of the source. Required if a publishable key is used to retrieve the source.
      sig { returns(T.nilable(String)) }
      attr_accessor :client_secret
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(client_secret: T.nilable(String), expand: T.nilable(T::Array[String])).void }
      def initialize(client_secret: nil, expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class Mandate < Stripe::RequestParams
        class Acceptance < Stripe::RequestParams
          class Offline < Stripe::RequestParams
            # An email to contact you with if a copy of the mandate is requested, required if `type` is `offline`.
            sig { returns(String) }
            attr_accessor :contact_email
            sig { params(contact_email: String).void }
            def initialize(contact_email: nil); end
          end
          class Online < Stripe::RequestParams
            # The Unix timestamp (in seconds) when the mandate was accepted or refused by the customer.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :date
            # The IP address from which the mandate was accepted or refused by the customer.
            sig { returns(T.nilable(String)) }
            attr_accessor :ip
            # The user agent of the browser from which the mandate was accepted or refused by the customer.
            sig { returns(T.nilable(String)) }
            attr_accessor :user_agent
            sig {
              params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
             }
            def initialize(date: nil, ip: nil, user_agent: nil); end
          end
          # The Unix timestamp (in seconds) when the mandate was accepted or refused by the customer.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :date
          # The IP address from which the mandate was accepted or refused by the customer.
          sig { returns(T.nilable(String)) }
          attr_accessor :ip
          # The parameters required to store a mandate accepted offline. Should only be set if `mandate[type]` is `offline`
          sig {
            returns(T.nilable(::Stripe::SourceService::UpdateParams::Mandate::Acceptance::Offline))
           }
          attr_accessor :offline
          # The parameters required to store a mandate accepted online. Should only be set if `mandate[type]` is `online`
          sig {
            returns(T.nilable(::Stripe::SourceService::UpdateParams::Mandate::Acceptance::Online))
           }
          attr_accessor :online
          # The status of the mandate acceptance. Either `accepted` (the mandate was accepted) or `refused` (the mandate was refused).
          sig { returns(String) }
          attr_accessor :status
          # The type of acceptance information included with the mandate. Either `online` or `offline`
          sig { returns(T.nilable(String)) }
          attr_accessor :type
          # The user agent of the browser from which the mandate was accepted or refused by the customer.
          sig { returns(T.nilable(String)) }
          attr_accessor :user_agent
          sig {
            params(date: T.nilable(Integer), ip: T.nilable(String), offline: T.nilable(::Stripe::SourceService::UpdateParams::Mandate::Acceptance::Offline), online: T.nilable(::Stripe::SourceService::UpdateParams::Mandate::Acceptance::Online), status: String, type: T.nilable(String), user_agent: T.nilable(String)).void
           }
          def initialize(
            date: nil,
            ip: nil,
            offline: nil,
            online: nil,
            status: nil,
            type: nil,
            user_agent: nil
          ); end
        end
        # The parameters required to notify Stripe of a mandate acceptance or refusal by the customer.
        sig { returns(T.nilable(::Stripe::SourceService::UpdateParams::Mandate::Acceptance)) }
        attr_accessor :acceptance
        # The amount specified by the mandate. (Leave null for a mandate covering all amounts)
        sig { returns(T.nilable(T.any(String, Integer))) }
        attr_accessor :amount
        # The currency specified by the mandate. (Must match `currency` of the source)
        sig { returns(T.nilable(String)) }
        attr_accessor :currency
        # The interval of debits permitted by the mandate. Either `one_time` (just permitting a single debit), `scheduled` (with debits on an agreed schedule or for clearly-defined events), or `variable`(for debits with any frequency)
        sig { returns(T.nilable(String)) }
        attr_accessor :interval
        # The method Stripe should use to notify the customer of upcoming debit instructions and/or mandate confirmation as required by the underlying debit network. Either `email` (an email is sent directly to the customer), `manual` (a `source.mandate_notification` event is sent to your webhooks endpoint and you should handle the notification) or `none` (the underlying debit network does not require any notification).
        sig { returns(T.nilable(String)) }
        attr_accessor :notification_method
        sig {
          params(acceptance: T.nilable(::Stripe::SourceService::UpdateParams::Mandate::Acceptance), amount: T.nilable(T.any(String, Integer)), currency: T.nilable(String), interval: T.nilable(String), notification_method: T.nilable(String)).void
         }
        def initialize(
          acceptance: nil,
          amount: nil,
          currency: nil,
          interval: nil,
          notification_method: nil
        ); end
      end
      class Owner < Stripe::RequestParams
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
        # Owner's address.
        sig { returns(T.nilable(::Stripe::SourceService::UpdateParams::Owner::Address)) }
        attr_accessor :address
        # Owner's email address.
        sig { returns(T.nilable(String)) }
        attr_accessor :email
        # Owner's full name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name
        # Owner's phone number.
        sig { returns(T.nilable(String)) }
        attr_accessor :phone
        sig {
          params(address: T.nilable(::Stripe::SourceService::UpdateParams::Owner::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
         }
        def initialize(address: nil, email: nil, name: nil, phone: nil); end
      end
      class SourceOrder < Stripe::RequestParams
        class Item < Stripe::RequestParams
          # Attribute for param field amount
          sig { returns(T.nilable(Integer)) }
          attr_accessor :amount
          # Attribute for param field currency
          sig { returns(T.nilable(String)) }
          attr_accessor :currency
          # Attribute for param field description
          sig { returns(T.nilable(String)) }
          attr_accessor :description
          # The ID of the SKU being ordered.
          sig { returns(T.nilable(String)) }
          attr_accessor :parent
          # The quantity of this order item. When type is `sku`, this is the number of instances of the SKU to be ordered.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :quantity
          # Attribute for param field type
          sig { returns(T.nilable(String)) }
          attr_accessor :type
          sig {
            params(amount: T.nilable(Integer), currency: T.nilable(String), description: T.nilable(String), parent: T.nilable(String), quantity: T.nilable(Integer), type: T.nilable(String)).void
           }
          def initialize(
            amount: nil,
            currency: nil,
            description: nil,
            parent: nil,
            quantity: nil,
            type: nil
          ); end
        end
        class Shipping < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
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
              params(city: T.nilable(String), country: T.nilable(String), line1: String, line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
          # Shipping address.
          sig { returns(::Stripe::SourceService::UpdateParams::SourceOrder::Shipping::Address) }
          attr_accessor :address
          # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
          sig { returns(T.nilable(String)) }
          attr_accessor :carrier
          # Recipient name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name
          # Recipient phone (including extension).
          sig { returns(T.nilable(String)) }
          attr_accessor :phone
          # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
          sig { returns(T.nilable(String)) }
          attr_accessor :tracking_number
          sig {
            params(address: ::Stripe::SourceService::UpdateParams::SourceOrder::Shipping::Address, carrier: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tracking_number: T.nilable(String)).void
           }
          def initialize(
            address: nil,
            carrier: nil,
            name: nil,
            phone: nil,
            tracking_number: nil
          ); end
        end
        # List of items constituting the order.
        sig {
          returns(T.nilable(T::Array[::Stripe::SourceService::UpdateParams::SourceOrder::Item]))
         }
        attr_accessor :items
        # Shipping address for the order. Required if any of the SKUs are for products that have `shippable` set to true.
        sig { returns(T.nilable(::Stripe::SourceService::UpdateParams::SourceOrder::Shipping)) }
        attr_accessor :shipping
        sig {
          params(items: T.nilable(T::Array[::Stripe::SourceService::UpdateParams::SourceOrder::Item]), shipping: T.nilable(::Stripe::SourceService::UpdateParams::SourceOrder::Shipping)).void
         }
        def initialize(items: nil, shipping: nil); end
      end
      # Amount associated with the source.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Information about a mandate possibility attached to a source object (generally for bank debits) as well as its acceptance status.
      sig { returns(T.nilable(::Stripe::SourceService::UpdateParams::Mandate)) }
      attr_accessor :mandate
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # Information about the owner of the payment instrument that may be used or required by particular source types.
      sig { returns(T.nilable(::Stripe::SourceService::UpdateParams::Owner)) }
      attr_accessor :owner
      # Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
      sig { returns(T.nilable(::Stripe::SourceService::UpdateParams::SourceOrder)) }
      attr_accessor :source_order
      sig {
        params(amount: T.nilable(Integer), expand: T.nilable(T::Array[String]), mandate: T.nilable(::Stripe::SourceService::UpdateParams::Mandate), metadata: T.nilable(T.any(String, T::Hash[String, String])), owner: T.nilable(::Stripe::SourceService::UpdateParams::Owner), source_order: T.nilable(::Stripe::SourceService::UpdateParams::SourceOrder)).void
       }
      def initialize(
        amount: nil,
        expand: nil,
        mandate: nil,
        metadata: nil,
        owner: nil,
        source_order: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class Mandate < Stripe::RequestParams
        class Acceptance < Stripe::RequestParams
          class Offline < Stripe::RequestParams
            # An email to contact you with if a copy of the mandate is requested, required if `type` is `offline`.
            sig { returns(String) }
            attr_accessor :contact_email
            sig { params(contact_email: String).void }
            def initialize(contact_email: nil); end
          end
          class Online < Stripe::RequestParams
            # The Unix timestamp (in seconds) when the mandate was accepted or refused by the customer.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :date
            # The IP address from which the mandate was accepted or refused by the customer.
            sig { returns(T.nilable(String)) }
            attr_accessor :ip
            # The user agent of the browser from which the mandate was accepted or refused by the customer.
            sig { returns(T.nilable(String)) }
            attr_accessor :user_agent
            sig {
              params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
             }
            def initialize(date: nil, ip: nil, user_agent: nil); end
          end
          # The Unix timestamp (in seconds) when the mandate was accepted or refused by the customer.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :date
          # The IP address from which the mandate was accepted or refused by the customer.
          sig { returns(T.nilable(String)) }
          attr_accessor :ip
          # The parameters required to store a mandate accepted offline. Should only be set if `mandate[type]` is `offline`
          sig {
            returns(T.nilable(::Stripe::SourceService::CreateParams::Mandate::Acceptance::Offline))
           }
          attr_accessor :offline
          # The parameters required to store a mandate accepted online. Should only be set if `mandate[type]` is `online`
          sig {
            returns(T.nilable(::Stripe::SourceService::CreateParams::Mandate::Acceptance::Online))
           }
          attr_accessor :online
          # The status of the mandate acceptance. Either `accepted` (the mandate was accepted) or `refused` (the mandate was refused).
          sig { returns(String) }
          attr_accessor :status
          # The type of acceptance information included with the mandate. Either `online` or `offline`
          sig { returns(T.nilable(String)) }
          attr_accessor :type
          # The user agent of the browser from which the mandate was accepted or refused by the customer.
          sig { returns(T.nilable(String)) }
          attr_accessor :user_agent
          sig {
            params(date: T.nilable(Integer), ip: T.nilable(String), offline: T.nilable(::Stripe::SourceService::CreateParams::Mandate::Acceptance::Offline), online: T.nilable(::Stripe::SourceService::CreateParams::Mandate::Acceptance::Online), status: String, type: T.nilable(String), user_agent: T.nilable(String)).void
           }
          def initialize(
            date: nil,
            ip: nil,
            offline: nil,
            online: nil,
            status: nil,
            type: nil,
            user_agent: nil
          ); end
        end
        # The parameters required to notify Stripe of a mandate acceptance or refusal by the customer.
        sig { returns(T.nilable(::Stripe::SourceService::CreateParams::Mandate::Acceptance)) }
        attr_accessor :acceptance
        # The amount specified by the mandate. (Leave null for a mandate covering all amounts)
        sig { returns(T.nilable(T.any(String, Integer))) }
        attr_accessor :amount
        # The currency specified by the mandate. (Must match `currency` of the source)
        sig { returns(T.nilable(String)) }
        attr_accessor :currency
        # The interval of debits permitted by the mandate. Either `one_time` (just permitting a single debit), `scheduled` (with debits on an agreed schedule or for clearly-defined events), or `variable`(for debits with any frequency)
        sig { returns(T.nilable(String)) }
        attr_accessor :interval
        # The method Stripe should use to notify the customer of upcoming debit instructions and/or mandate confirmation as required by the underlying debit network. Either `email` (an email is sent directly to the customer), `manual` (a `source.mandate_notification` event is sent to your webhooks endpoint and you should handle the notification) or `none` (the underlying debit network does not require any notification).
        sig { returns(T.nilable(String)) }
        attr_accessor :notification_method
        sig {
          params(acceptance: T.nilable(::Stripe::SourceService::CreateParams::Mandate::Acceptance), amount: T.nilable(T.any(String, Integer)), currency: T.nilable(String), interval: T.nilable(String), notification_method: T.nilable(String)).void
         }
        def initialize(
          acceptance: nil,
          amount: nil,
          currency: nil,
          interval: nil,
          notification_method: nil
        ); end
      end
      class Owner < Stripe::RequestParams
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
        # Owner's address.
        sig { returns(T.nilable(::Stripe::SourceService::CreateParams::Owner::Address)) }
        attr_accessor :address
        # Owner's email address.
        sig { returns(T.nilable(String)) }
        attr_accessor :email
        # Owner's full name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name
        # Owner's phone number.
        sig { returns(T.nilable(String)) }
        attr_accessor :phone
        sig {
          params(address: T.nilable(::Stripe::SourceService::CreateParams::Owner::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
         }
        def initialize(address: nil, email: nil, name: nil, phone: nil); end
      end
      class Receiver < Stripe::RequestParams
        # The method Stripe should use to request information needed to process a refund or mispayment. Either `email` (an email is sent directly to the customer) or `manual` (a `source.refund_attributes_required` event is sent to your webhooks endpoint). Refer to each payment method's documentation to learn which refund attributes may be required.
        sig { returns(T.nilable(String)) }
        attr_accessor :refund_attributes_method
        sig { params(refund_attributes_method: T.nilable(String)).void }
        def initialize(refund_attributes_method: nil); end
      end
      class Redirect < Stripe::RequestParams
        # The URL you provide to redirect the customer back to you after they authenticated their payment. It can use your application URI scheme in the context of a mobile application.
        sig { returns(String) }
        attr_accessor :return_url
        sig { params(return_url: String).void }
        def initialize(return_url: nil); end
      end
      class SourceOrder < Stripe::RequestParams
        class Item < Stripe::RequestParams
          # Attribute for param field amount
          sig { returns(T.nilable(Integer)) }
          attr_accessor :amount
          # Attribute for param field currency
          sig { returns(T.nilable(String)) }
          attr_accessor :currency
          # Attribute for param field description
          sig { returns(T.nilable(String)) }
          attr_accessor :description
          # The ID of the SKU being ordered.
          sig { returns(T.nilable(String)) }
          attr_accessor :parent
          # The quantity of this order item. When type is `sku`, this is the number of instances of the SKU to be ordered.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :quantity
          # Attribute for param field type
          sig { returns(T.nilable(String)) }
          attr_accessor :type
          sig {
            params(amount: T.nilable(Integer), currency: T.nilable(String), description: T.nilable(String), parent: T.nilable(String), quantity: T.nilable(Integer), type: T.nilable(String)).void
           }
          def initialize(
            amount: nil,
            currency: nil,
            description: nil,
            parent: nil,
            quantity: nil,
            type: nil
          ); end
        end
        class Shipping < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
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
              params(city: T.nilable(String), country: T.nilable(String), line1: String, line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
          # Shipping address.
          sig { returns(::Stripe::SourceService::CreateParams::SourceOrder::Shipping::Address) }
          attr_accessor :address
          # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
          sig { returns(T.nilable(String)) }
          attr_accessor :carrier
          # Recipient name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name
          # Recipient phone (including extension).
          sig { returns(T.nilable(String)) }
          attr_accessor :phone
          # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
          sig { returns(T.nilable(String)) }
          attr_accessor :tracking_number
          sig {
            params(address: ::Stripe::SourceService::CreateParams::SourceOrder::Shipping::Address, carrier: T.nilable(String), name: T.nilable(String), phone: T.nilable(String), tracking_number: T.nilable(String)).void
           }
          def initialize(
            address: nil,
            carrier: nil,
            name: nil,
            phone: nil,
            tracking_number: nil
          ); end
        end
        # List of items constituting the order.
        sig {
          returns(T.nilable(T::Array[::Stripe::SourceService::CreateParams::SourceOrder::Item]))
         }
        attr_accessor :items
        # Shipping address for the order. Required if any of the SKUs are for products that have `shippable` set to true.
        sig { returns(T.nilable(::Stripe::SourceService::CreateParams::SourceOrder::Shipping)) }
        attr_accessor :shipping
        sig {
          params(items: T.nilable(T::Array[::Stripe::SourceService::CreateParams::SourceOrder::Item]), shipping: T.nilable(::Stripe::SourceService::CreateParams::SourceOrder::Shipping)).void
         }
        def initialize(items: nil, shipping: nil); end
      end
      # Amount associated with the source. This is the amount for which the source will be chargeable once ready. Required for `single_use` sources. Not supported for `receiver` type sources, where charge amount may not be specified until funds land.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount
      # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) associated with the source. This is the currency for which the source will be chargeable once ready.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency
      # The `Customer` to whom the original source is attached to. Must be set when the original source is not a `Source` (e.g., `Card`).
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The authentication `flow` of the source to create. `flow` is one of `redirect`, `receiver`, `code_verification`, `none`. It is generally inferred unless a type supports multiple flows.
      sig { returns(T.nilable(String)) }
      attr_accessor :flow
      # Information about a mandate possibility attached to a source object (generally for bank debits) as well as its acceptance status.
      sig { returns(T.nilable(::Stripe::SourceService::CreateParams::Mandate)) }
      attr_accessor :mandate
      # Attribute for param field metadata
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # The source to share.
      sig { returns(T.nilable(String)) }
      attr_accessor :original_source
      # Information about the owner of the payment instrument that may be used or required by particular source types.
      sig { returns(T.nilable(::Stripe::SourceService::CreateParams::Owner)) }
      attr_accessor :owner
      # Optional parameters for the receiver flow. Can be set only if the source is a receiver (`flow` is `receiver`).
      sig { returns(T.nilable(::Stripe::SourceService::CreateParams::Receiver)) }
      attr_accessor :receiver
      # Parameters required for the redirect flow. Required if the source is authenticated by a redirect (`flow` is `redirect`).
      sig { returns(T.nilable(::Stripe::SourceService::CreateParams::Redirect)) }
      attr_accessor :redirect
      # Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
      sig { returns(T.nilable(::Stripe::SourceService::CreateParams::SourceOrder)) }
      attr_accessor :source_order
      # An arbitrary string to be displayed on your customer's statement. As an example, if your website is `RunClub` and the item you're charging for is a race ticket, you may want to specify a `statement_descriptor` of `RunClub 5K race ticket.` While many payment types will display this information, some may not display it at all.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor
      # An optional token used to create the source. When passed, token properties will override source parameters.
      sig { returns(T.nilable(String)) }
      attr_accessor :token
      # The `type` of the source to create. Required unless `customer` and `original_source` are specified (see the [Cloning card Sources](https://stripe.com/docs/sources/connect#cloning-card-sources) guide)
      sig { returns(T.nilable(String)) }
      attr_accessor :type
      # Attribute for param field usage
      sig { returns(T.nilable(String)) }
      attr_accessor :usage
      sig {
        params(amount: T.nilable(Integer), currency: T.nilable(String), customer: T.nilable(String), expand: T.nilable(T::Array[String]), flow: T.nilable(String), mandate: T.nilable(::Stripe::SourceService::CreateParams::Mandate), metadata: T.nilable(T::Hash[String, String]), original_source: T.nilable(String), owner: T.nilable(::Stripe::SourceService::CreateParams::Owner), receiver: T.nilable(::Stripe::SourceService::CreateParams::Receiver), redirect: T.nilable(::Stripe::SourceService::CreateParams::Redirect), source_order: T.nilable(::Stripe::SourceService::CreateParams::SourceOrder), statement_descriptor: T.nilable(String), token: T.nilable(String), type: T.nilable(String), usage: T.nilable(String)).void
       }
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
      ); end
    end
    class VerifyParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The values needed to verify the source.
      sig { returns(T::Array[String]) }
      attr_accessor :values
      sig { params(expand: T.nilable(T::Array[String]), values: T::Array[String]).void }
      def initialize(expand: nil, values: nil); end
    end
    # Creates a new source object.
    sig {
      params(params: T.any(::Stripe::SourceService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Source)
     }
    def create(params = {}, opts = {}); end

    # Delete a specified source for a given customer.
    sig {
      params(customer: String, id: String, params: T.any(::Stripe::SourceService::DetachParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source))
     }
    def detach(customer, id, params = {}, opts = {}); end

    # Retrieves an existing source object. Supply the unique source ID from a source creation request and Stripe will return the corresponding up-to-date source object information.
    sig {
      params(source: String, params: T.any(::Stripe::SourceService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Source)
     }
    def retrieve(source, params = {}, opts = {}); end

    # Updates the specified source by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    #
    # This request accepts the metadata and owner as arguments. It is also possible to update type specific information for selected payment methods. Please refer to our [payment method guides](https://docs.stripe.com/docs/sources) for more detail.
    sig {
      params(source: String, params: T.any(::Stripe::SourceService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Source)
     }
    def update(source, params = {}, opts = {}); end

    # Verify a given source.
    sig {
      params(source: String, params: T.any(::Stripe::SourceService::VerifyParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Source)
     }
    def verify(source, params = {}, opts = {}); end
  end
end