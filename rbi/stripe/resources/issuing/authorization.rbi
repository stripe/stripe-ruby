# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # When an [issued card](https://stripe.com/docs/issuing) is used to make a purchase, an Issuing `Authorization`
    # object is created. [Authorizations](https://stripe.com/docs/issuing/purchases/authorizations) must be approved for the
    # purchase to be completed successfully.
    #
    # Related guide: [Issued card authorizations](https://stripe.com/docs/issuing/purchases/authorizations)
    class Authorization < APIResource
      class AmountDetails < Stripe::StripeObject
        # The fee charged by the ATM for the cash withdrawal.
        sig { returns(T.nilable(Integer)) }
        def atm_fee; end
        # The amount of cash requested by the cardholder.
        sig { returns(T.nilable(Integer)) }
        def cashback_amount; end
      end
      class Fleet < Stripe::StripeObject
        class CardholderPromptData < Stripe::StripeObject
          # [Deprecated] An alphanumeric ID, though typical point of sales only support numeric entry. The card program can be configured to prompt for a vehicle ID, driver ID, or generic ID.
          sig { returns(T.nilable(String)) }
          def alphanumeric_id; end
          # Driver ID.
          sig { returns(T.nilable(String)) }
          def driver_id; end
          # Odometer reading.
          sig { returns(T.nilable(Integer)) }
          def odometer; end
          # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
          sig { returns(T.nilable(String)) }
          def unspecified_id; end
          # User ID.
          sig { returns(T.nilable(String)) }
          def user_id; end
          # Vehicle number.
          sig { returns(T.nilable(String)) }
          def vehicle_number; end
        end
        class ReportedBreakdown < Stripe::StripeObject
          class Fuel < Stripe::StripeObject
            # Gross fuel amount that should equal Fuel Quantity multiplied by Fuel Unit Cost, inclusive of taxes.
            sig { returns(T.nilable(String)) }
            def gross_amount_decimal; end
          end
          class NonFuel < Stripe::StripeObject
            # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
            sig { returns(T.nilable(String)) }
            def gross_amount_decimal; end
          end
          class Tax < Stripe::StripeObject
            # Amount of state or provincial Sales Tax included in the transaction amount. `null` if not reported by merchant or not subject to tax.
            sig { returns(T.nilable(String)) }
            def local_amount_decimal; end
            # Amount of national Sales Tax or VAT included in the transaction amount. `null` if not reported by merchant or not subject to tax.
            sig { returns(T.nilable(String)) }
            def national_amount_decimal; end
          end
          # Breakdown of fuel portion of the purchase.
          sig { returns(T.nilable(Fuel)) }
          def fuel; end
          # Breakdown of non-fuel portion of the purchase.
          sig { returns(T.nilable(NonFuel)) }
          def non_fuel; end
          # Information about tax included in this transaction.
          sig { returns(T.nilable(Tax)) }
          def tax; end
        end
        # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
        sig { returns(T.nilable(CardholderPromptData)) }
        def cardholder_prompt_data; end
        # The type of purchase.
        sig { returns(T.nilable(String)) }
        def purchase_type; end
        # More information about the total amount. Typically this information is received from the merchant after the authorization has been approved and the fuel dispensed. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
        sig { returns(T.nilable(ReportedBreakdown)) }
        def reported_breakdown; end
        # The type of fuel service.
        sig { returns(T.nilable(String)) }
        def service_type; end
      end
      class FraudChallenge < Stripe::StripeObject
        # The method by which the fraud challenge was delivered to the cardholder.
        sig { returns(String) }
        def channel; end
        # The status of the fraud challenge.
        sig { returns(String) }
        def status; end
        # If the challenge is not deliverable, the reason why.
        sig { returns(T.nilable(String)) }
        def undeliverable_reason; end
      end
      class Fuel < Stripe::StripeObject
        # [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
        sig { returns(T.nilable(String)) }
        def industry_product_code; end
        # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
        sig { returns(T.nilable(String)) }
        def quantity_decimal; end
        # The type of fuel that was purchased.
        sig { returns(T.nilable(String)) }
        def type; end
        # The units for `quantity_decimal`.
        sig { returns(T.nilable(String)) }
        def unit; end
        # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
        sig { returns(T.nilable(String)) }
        def unit_cost_decimal; end
      end
      class MerchantData < Stripe::StripeObject
        # A categorization of the seller's type of business. See our [merchant categories guide](https://stripe.com/docs/issuing/merchant-categories) for a list of possible values.
        sig { returns(String) }
        def category; end
        # The merchant category code for the seller’s business
        sig { returns(String) }
        def category_code; end
        # City where the seller is located
        sig { returns(T.nilable(String)) }
        def city; end
        # Country where the seller is located
        sig { returns(T.nilable(String)) }
        def country; end
        # Name of the seller
        sig { returns(T.nilable(String)) }
        def name; end
        # Identifier assigned to the seller by the card network. Different card networks may assign different network_id fields to the same merchant.
        sig { returns(String) }
        def network_id; end
        # Postal code where the seller is located
        sig { returns(T.nilable(String)) }
        def postal_code; end
        # State where the seller is located
        sig { returns(T.nilable(String)) }
        def state; end
        # The seller's tax identification number. Currently populated for French merchants only.
        sig { returns(T.nilable(String)) }
        def tax_id; end
        # An ID assigned by the seller to the location of the sale.
        sig { returns(T.nilable(String)) }
        def terminal_id; end
        # URL provided by the merchant on a 3DS request
        sig { returns(T.nilable(String)) }
        def url; end
      end
      class NetworkData < Stripe::StripeObject
        # Identifier assigned to the acquirer by the card network. Sometimes this value is not provided by the network; in this case, the value will be `null`.
        sig { returns(T.nilable(String)) }
        def acquiring_institution_id; end
        # The System Trace Audit Number (STAN) is a 6-digit identifier assigned by the acquirer. Prefer `network_data.transaction_id` if present, unless you have special requirements.
        sig { returns(T.nilable(String)) }
        def system_trace_audit_number; end
        # Unique identifier for the authorization assigned by the card network used to match subsequent messages, disputes, and transactions.
        sig { returns(T.nilable(String)) }
        def transaction_id; end
      end
      class PendingRequest < Stripe::StripeObject
        class AmountDetails < Stripe::StripeObject
          # The fee charged by the ATM for the cash withdrawal.
          sig { returns(T.nilable(Integer)) }
          def atm_fee; end
          # The amount of cash requested by the cardholder.
          sig { returns(T.nilable(Integer)) }
          def cashback_amount; end
        end
        # The additional amount Stripe will hold if the authorization is approved, in the card's [currency](https://stripe.com/docs/api#issuing_authorization_object-pending-request-currency) and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(Integer) }
        def amount; end
        # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(T.nilable(AmountDetails)) }
        def amount_details; end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        # If set `true`, you may provide [amount](https://stripe.com/docs/api/issuing/authorizations/approve#approve_issuing_authorization-amount) to control how much to hold for the authorization.
        sig { returns(T::Boolean) }
        def is_amount_controllable; end
        # The amount the merchant is requesting to be authorized in the `merchant_currency`. The amount is in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(Integer) }
        def merchant_amount; end
        # The local currency the merchant is requesting to authorize.
        sig { returns(String) }
        def merchant_currency; end
        # The card network's estimate of the likelihood that an authorization is fraudulent. Takes on values between 1 and 99.
        sig { returns(T.nilable(Integer)) }
        def network_risk_score; end
      end
      class RequestHistory < Stripe::StripeObject
        class AmountDetails < Stripe::StripeObject
          # The fee charged by the ATM for the cash withdrawal.
          sig { returns(T.nilable(Integer)) }
          def atm_fee; end
          # The amount of cash requested by the cardholder.
          sig { returns(T.nilable(Integer)) }
          def cashback_amount; end
        end
        # The `pending_request.amount` at the time of the request, presented in your card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). Stripe held this amount from your account to fund the authorization if the request was approved.
        sig { returns(Integer) }
        def amount; end
        # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(T.nilable(AmountDetails)) }
        def amount_details; end
        # Whether this request was approved.
        sig { returns(T::Boolean) }
        def approved; end
        # A code created by Stripe which is shared with the merchant to validate the authorization. This field will be populated if the authorization message was approved. The code typically starts with the letter "S", followed by a six-digit number. For example, "S498162". Please note that the code is not guaranteed to be unique across authorizations.
        sig { returns(T.nilable(String)) }
        def authorization_code; end
        # Time at which the object was created. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        def created; end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        # The `pending_request.merchant_amount` at the time of the request, presented in the `merchant_currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(Integer) }
        def merchant_amount; end
        # The currency that was collected by the merchant and presented to the cardholder for the authorization. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def merchant_currency; end
        # The card network's estimate of the likelihood that an authorization is fraudulent. Takes on values between 1 and 99.
        sig { returns(T.nilable(Integer)) }
        def network_risk_score; end
        # When an authorization is approved or declined by you or by Stripe, this field provides additional detail on the reason for the outcome.
        sig { returns(String) }
        def reason; end
        # If the `request_history.reason` is `webhook_error` because the direct webhook response is invalid (for example, parsing errors or missing parameters), we surface a more detailed error message via this field.
        sig { returns(T.nilable(String)) }
        def reason_message; end
        # Time when the card network received an authorization request from the acquirer in UTC. Referred to by networks as transmission time.
        sig { returns(T.nilable(Integer)) }
        def requested_at; end
      end
      class Treasury < Stripe::StripeObject
        # The array of [ReceivedCredits](https://stripe.com/docs/api/treasury/received_credits) associated with this authorization
        sig { returns(T::Array[String]) }
        def received_credits; end
        # The array of [ReceivedDebits](https://stripe.com/docs/api/treasury/received_debits) associated with this authorization
        sig { returns(T::Array[String]) }
        def received_debits; end
        # The Treasury [Transaction](https://stripe.com/docs/api/treasury/transactions) associated with this authorization
        sig { returns(T.nilable(String)) }
        def transaction; end
      end
      class VerificationData < Stripe::StripeObject
        class AuthenticationExemption < Stripe::StripeObject
          # The entity that requested the exemption, either the acquiring merchant or the Issuing user.
          sig { returns(String) }
          def claimed_by; end
          # The specific exemption claimed for this authorization.
          sig { returns(String) }
          def type; end
        end
        class ThreeDSecure < Stripe::StripeObject
          # The outcome of the 3D Secure authentication request.
          sig { returns(String) }
          def result; end
        end
        # Whether the cardholder provided an address first line and if it matched the cardholder’s `billing.address.line1`.
        sig { returns(String) }
        def address_line1_check; end
        # Whether the cardholder provided a postal code and if it matched the cardholder’s `billing.address.postal_code`.
        sig { returns(String) }
        def address_postal_code_check; end
        # The exemption applied to this authorization.
        sig { returns(T.nilable(AuthenticationExemption)) }
        def authentication_exemption; end
        # Whether the cardholder provided a CVC and if it matched Stripe’s record.
        sig { returns(String) }
        def cvc_check; end
        # Whether the cardholder provided an expiry date and if it matched Stripe’s record.
        sig { returns(String) }
        def expiry_check; end
        # The postal code submitted as part of the authorization used for postal code verification.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        # 3D Secure details.
        sig { returns(T.nilable(ThreeDSecure)) }
        def three_d_secure; end
      end
      # The total amount that was authorized or rejected. This amount is in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). `amount` should be the same as `merchant_amount`, unless `currency` and `merchant_currency` are different.
      sig { returns(Integer) }
      def amount; end
      # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      sig { returns(T.nilable(AmountDetails)) }
      def amount_details; end
      # Whether the authorization has been approved.
      sig { returns(T::Boolean) }
      def approved; end
      # How the card details were provided.
      sig { returns(String) }
      def authorization_method; end
      # List of balance transactions associated with this authorization.
      sig { returns(T::Array[Stripe::BalanceTransaction]) }
      def balance_transactions; end
      # You can [create physical or virtual cards](https://stripe.com/docs/issuing) that are issued to cardholders.
      sig { returns(Stripe::Issuing::Card) }
      def card; end
      # The cardholder to whom this authorization belongs.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Cardholder))) }
      def cardholder; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # The currency of the cardholder. This currency can be different from the currency presented at authorization and the `merchant_currency` field on this authorization. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # Fleet-specific information for authorizations using Fleet cards.
      sig { returns(T.nilable(Fleet)) }
      def fleet; end
      # Fraud challenges sent to the cardholder, if this authorization was declined for fraud risk reasons.
      sig { returns(T.nilable(T::Array[FraudChallenge])) }
      def fraud_challenges; end
      # Information about fuel that was purchased with this transaction. Typically this information is received from the merchant after the authorization has been approved and the fuel dispensed.
      sig { returns(T.nilable(Fuel)) }
      def fuel; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # The total amount that was authorized or rejected. This amount is in the `merchant_currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). `merchant_amount` should be the same as `amount`, unless `merchant_currency` and `currency` are different.
      sig { returns(Integer) }
      def merchant_amount; end
      # The local currency that was presented to the cardholder for the authorization. This currency can be different from the cardholder currency and the `currency` field on this authorization. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def merchant_currency; end
      # Attribute for field merchant_data
      sig { returns(MerchantData) }
      def merchant_data; end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      def metadata; end
      # Details about the authorization, such as identifiers, set by the card network.
      sig { returns(T.nilable(NetworkData)) }
      def network_data; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The pending authorization request. This field will only be non-null during an `issuing_authorization.request` webhook.
      sig { returns(T.nilable(PendingRequest)) }
      def pending_request; end
      # History of every time a `pending_request` authorization was approved/declined, either by you directly or by Stripe (e.g. based on your spending_controls). If the merchant changes the authorization by performing an incremental authorization, you can look at this field to see the previous requests for the authorization. This field can be helpful in determining why a given authorization was approved/declined.
      sig { returns(T::Array[RequestHistory]) }
      def request_history; end
      # The current status of the authorization in its lifecycle.
      sig { returns(String) }
      def status; end
      # [Token](https://stripe.com/docs/api/issuing/tokens/object) object used for this authorization. If a network token was not used for this authorization, this field will be null.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Token))) }
      def token; end
      # List of [transactions](https://stripe.com/docs/api/issuing/transactions) associated with this authorization.
      sig { returns(T::Array[Stripe::Issuing::Transaction]) }
      def transactions; end
      # [Treasury](https://stripe.com/docs/api/treasury) details related to this authorization if it was created on a [FinancialAccount](https://stripe.com/docs/api/treasury/financial_accounts).
      sig { returns(T.nilable(Treasury)) }
      def treasury; end
      # Attribute for field verification_data
      sig { returns(VerificationData) }
      def verification_data; end
      # Whether the authorization bypassed fraud risk checks because the cardholder has previously completed a fraud challenge on a similar high-risk authorization from the same merchant.
      sig { returns(T.nilable(T::Boolean)) }
      def verified_by_fraud_challenge; end
      # The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`. Will populate as `null` when no digital wallet was utilized.
      sig { returns(T.nilable(String)) }
      def wallet; end
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def gt; end
          sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gt=(_gt); end
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def gte; end
          sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gte=(_gte); end
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def lt; end
          sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lt=(_lt); end
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def lte; end
          sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Only return authorizations that belong to the given card.
        sig { returns(T.nilable(String)) }
        def card; end
        sig { params(_card: T.nilable(String)).returns(T.nilable(String)) }
        def card=(_card); end
        # Only return authorizations that belong to the given cardholder.
        sig { returns(T.nilable(String)) }
        def cardholder; end
        sig { params(_cardholder: T.nilable(String)).returns(T.nilable(String)) }
        def cardholder=(_cardholder); end
        # Only return authorizations that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Issuing::Authorization::ListParams::Created, Integer)))
         }
        def created; end
        sig {
          params(_created: T.nilable(T.any(::Stripe::Issuing::Authorization::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Issuing::Authorization::ListParams::Created, Integer)))
         }
        def created=(_created); end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # Only return authorizations with the given status. One of `pending`, `closed`, or `reversed`.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        sig {
          params(card: T.nilable(String), cardholder: T.nilable(String), created: T.nilable(T.any(::Stripe::Issuing::Authorization::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String)).void
         }
        def initialize(
          card: nil,
          cardholder: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        ); end
      end
      class UpdateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
         }
        def metadata=(_metadata); end
        sig {
          params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
         }
        def initialize(expand: nil, metadata: nil); end
      end
      class ApproveParams < Stripe::RequestParams
        # If the authorization's `pending_request.is_amount_controllable` property is `true`, you may provide this value to control how much to hold for the authorization. Must be positive (use [`decline`](https://stripe.com/docs/api/issuing/authorizations/decline) to decline an authorization request).
        sig { returns(T.nilable(Integer)) }
        def amount; end
        sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_amount); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
         }
        def metadata=(_metadata); end
        sig {
          params(amount: T.nilable(Integer), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
         }
        def initialize(amount: nil, expand: nil, metadata: nil); end
      end
      class DeclineParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
         }
        def metadata=(_metadata); end
        sig {
          params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
         }
        def initialize(expand: nil, metadata: nil); end
      end
      class CreateParams < Stripe::RequestParams
        class AmountDetails < Stripe::RequestParams
          # The ATM withdrawal fee.
          sig { returns(T.nilable(Integer)) }
          def atm_fee; end
          sig { params(_atm_fee: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def atm_fee=(_atm_fee); end
          # The amount of cash requested by the cardholder.
          sig { returns(T.nilable(Integer)) }
          def cashback_amount; end
          sig { params(_cashback_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def cashback_amount=(_cashback_amount); end
          sig { params(atm_fee: T.nilable(Integer), cashback_amount: T.nilable(Integer)).void }
          def initialize(atm_fee: nil, cashback_amount: nil); end
        end
        class Fleet < Stripe::RequestParams
          class CardholderPromptData < Stripe::RequestParams
            # Driver ID.
            sig { returns(T.nilable(String)) }
            def driver_id; end
            sig { params(_driver_id: T.nilable(String)).returns(T.nilable(String)) }
            def driver_id=(_driver_id); end
            # Odometer reading.
            sig { returns(T.nilable(Integer)) }
            def odometer; end
            sig { params(_odometer: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def odometer=(_odometer); end
            # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
            sig { returns(T.nilable(String)) }
            def unspecified_id; end
            sig { params(_unspecified_id: T.nilable(String)).returns(T.nilable(String)) }
            def unspecified_id=(_unspecified_id); end
            # User ID.
            sig { returns(T.nilable(String)) }
            def user_id; end
            sig { params(_user_id: T.nilable(String)).returns(T.nilable(String)) }
            def user_id=(_user_id); end
            # Vehicle number.
            sig { returns(T.nilable(String)) }
            def vehicle_number; end
            sig { params(_vehicle_number: T.nilable(String)).returns(T.nilable(String)) }
            def vehicle_number=(_vehicle_number); end
            sig {
              params(driver_id: T.nilable(String), odometer: T.nilable(Integer), unspecified_id: T.nilable(String), user_id: T.nilable(String), vehicle_number: T.nilable(String)).void
             }
            def initialize(
              driver_id: nil,
              odometer: nil,
              unspecified_id: nil,
              user_id: nil,
              vehicle_number: nil
            ); end
          end
          class ReportedBreakdown < Stripe::RequestParams
            class Fuel < Stripe::RequestParams
              # Gross fuel amount that should equal Fuel Volume multipled by Fuel Unit Cost, inclusive of taxes.
              sig { returns(T.nilable(String)) }
              def gross_amount_decimal; end
              sig { params(_gross_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
              def gross_amount_decimal=(_gross_amount_decimal); end
              sig { params(gross_amount_decimal: T.nilable(String)).void }
              def initialize(gross_amount_decimal: nil); end
            end
            class NonFuel < Stripe::RequestParams
              # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
              sig { returns(T.nilable(String)) }
              def gross_amount_decimal; end
              sig { params(_gross_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
              def gross_amount_decimal=(_gross_amount_decimal); end
              sig { params(gross_amount_decimal: T.nilable(String)).void }
              def initialize(gross_amount_decimal: nil); end
            end
            class Tax < Stripe::RequestParams
              # Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
              sig { returns(T.nilable(String)) }
              def local_amount_decimal; end
              sig { params(_local_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
              def local_amount_decimal=(_local_amount_decimal); end
              # Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
              sig { returns(T.nilable(String)) }
              def national_amount_decimal; end
              sig { params(_national_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
              def national_amount_decimal=(_national_amount_decimal); end
              sig {
                params(local_amount_decimal: T.nilable(String), national_amount_decimal: T.nilable(String)).void
               }
              def initialize(local_amount_decimal: nil, national_amount_decimal: nil); end
            end
            # Breakdown of fuel portion of the purchase.
            sig {
              returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::Fuel))
             }
            def fuel; end
            sig {
              params(_fuel: T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::Fuel)).returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::Fuel))
             }
            def fuel=(_fuel); end
            # Breakdown of non-fuel portion of the purchase.
            sig {
              returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::NonFuel))
             }
            def non_fuel; end
            sig {
              params(_non_fuel: T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::NonFuel)).returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::NonFuel))
             }
            def non_fuel=(_non_fuel); end
            # Information about tax included in this transaction.
            sig {
              returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::Tax))
             }
            def tax; end
            sig {
              params(_tax: T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::Tax)).returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::Tax))
             }
            def tax=(_tax); end
            sig {
              params(fuel: T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::Fuel), non_fuel: T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::NonFuel), tax: T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::Tax)).void
             }
            def initialize(fuel: nil, non_fuel: nil, tax: nil); end
          end
          # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::CardholderPromptData))
           }
          def cardholder_prompt_data; end
          sig {
            params(_cardholder_prompt_data: T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::CardholderPromptData)).returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::CardholderPromptData))
           }
          def cardholder_prompt_data=(_cardholder_prompt_data); end
          # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
          sig { returns(T.nilable(String)) }
          def purchase_type; end
          sig { params(_purchase_type: T.nilable(String)).returns(T.nilable(String)) }
          def purchase_type=(_purchase_type); end
          # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown))
           }
          def reported_breakdown; end
          sig {
            params(_reported_breakdown: T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown)).returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown))
           }
          def reported_breakdown=(_reported_breakdown); end
          # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
          sig { returns(T.nilable(String)) }
          def service_type; end
          sig { params(_service_type: T.nilable(String)).returns(T.nilable(String)) }
          def service_type=(_service_type); end
          sig {
            params(cardholder_prompt_data: T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::CardholderPromptData), purchase_type: T.nilable(String), reported_breakdown: T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown), service_type: T.nilable(String)).void
           }
          def initialize(
            cardholder_prompt_data: nil,
            purchase_type: nil,
            reported_breakdown: nil,
            service_type: nil
          ); end
        end
        class Fuel < Stripe::RequestParams
          # [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
          sig { returns(T.nilable(String)) }
          def industry_product_code; end
          sig { params(_industry_product_code: T.nilable(String)).returns(T.nilable(String)) }
          def industry_product_code=(_industry_product_code); end
          # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
          sig { returns(T.nilable(String)) }
          def quantity_decimal; end
          sig { params(_quantity_decimal: T.nilable(String)).returns(T.nilable(String)) }
          def quantity_decimal=(_quantity_decimal); end
          # The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
          # The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`.
          sig { returns(T.nilable(String)) }
          def unit; end
          sig { params(_unit: T.nilable(String)).returns(T.nilable(String)) }
          def unit=(_unit); end
          # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
          sig { returns(T.nilable(String)) }
          def unit_cost_decimal; end
          sig { params(_unit_cost_decimal: T.nilable(String)).returns(T.nilable(String)) }
          def unit_cost_decimal=(_unit_cost_decimal); end
          sig {
            params(industry_product_code: T.nilable(String), quantity_decimal: T.nilable(String), type: T.nilable(String), unit: T.nilable(String), unit_cost_decimal: T.nilable(String)).void
           }
          def initialize(
            industry_product_code: nil,
            quantity_decimal: nil,
            type: nil,
            unit: nil,
            unit_cost_decimal: nil
          ); end
        end
        class MerchantData < Stripe::RequestParams
          # A categorization of the seller's type of business. See our [merchant categories guide](https://stripe.com/docs/issuing/merchant-categories) for a list of possible values.
          sig { returns(T.nilable(String)) }
          def category; end
          sig { params(_category: T.nilable(String)).returns(T.nilable(String)) }
          def category=(_category); end
          # City where the seller is located
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Country where the seller is located
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Name of the seller
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # Identifier assigned to the seller by the card network. Different card networks may assign different network_id fields to the same merchant.
          sig { returns(T.nilable(String)) }
          def network_id; end
          sig { params(_network_id: T.nilable(String)).returns(T.nilable(String)) }
          def network_id=(_network_id); end
          # Postal code where the seller is located
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # State where the seller is located
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          # An ID assigned by the seller to the location of the sale.
          sig { returns(T.nilable(String)) }
          def terminal_id; end
          sig { params(_terminal_id: T.nilable(String)).returns(T.nilable(String)) }
          def terminal_id=(_terminal_id); end
          # URL provided by the merchant on a 3DS request
          sig { returns(T.nilable(String)) }
          def url; end
          sig { params(_url: T.nilable(String)).returns(T.nilable(String)) }
          def url=(_url); end
          sig {
            params(category: T.nilable(String), city: T.nilable(String), country: T.nilable(String), name: T.nilable(String), network_id: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), terminal_id: T.nilable(String), url: T.nilable(String)).void
           }
          def initialize(
            category: nil,
            city: nil,
            country: nil,
            name: nil,
            network_id: nil,
            postal_code: nil,
            state: nil,
            terminal_id: nil,
            url: nil
          ); end
        end
        class NetworkData < Stripe::RequestParams
          # Identifier assigned to the acquirer by the card network.
          sig { returns(T.nilable(String)) }
          def acquiring_institution_id; end
          sig { params(_acquiring_institution_id: T.nilable(String)).returns(T.nilable(String)) }
          def acquiring_institution_id=(_acquiring_institution_id); end
          sig { params(acquiring_institution_id: T.nilable(String)).void }
          def initialize(acquiring_institution_id: nil); end
        end
        class VerificationData < Stripe::RequestParams
          class AuthenticationExemption < Stripe::RequestParams
            # The entity that requested the exemption, either the acquiring merchant or the Issuing user.
            sig { returns(String) }
            def claimed_by; end
            sig { params(_claimed_by: String).returns(String) }
            def claimed_by=(_claimed_by); end
            # The specific exemption claimed for this authorization.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(claimed_by: String, type: String).void }
            def initialize(claimed_by: nil, type: nil); end
          end
          class ThreeDSecure < Stripe::RequestParams
            # The outcome of the 3D Secure authentication request.
            sig { returns(String) }
            def result; end
            sig { params(_result: String).returns(String) }
            def result=(_result); end
            sig { params(result: String).void }
            def initialize(result: nil); end
          end
          # Whether the cardholder provided an address first line and if it matched the cardholder’s `billing.address.line1`.
          sig { returns(T.nilable(String)) }
          def address_line1_check; end
          sig { params(_address_line1_check: T.nilable(String)).returns(T.nilable(String)) }
          def address_line1_check=(_address_line1_check); end
          # Whether the cardholder provided a postal code and if it matched the cardholder’s `billing.address.postal_code`.
          sig { returns(T.nilable(String)) }
          def address_postal_code_check; end
          sig { params(_address_postal_code_check: T.nilable(String)).returns(T.nilable(String)) }
          def address_postal_code_check=(_address_postal_code_check); end
          # The exemption applied to this authorization.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::VerificationData::AuthenticationExemption))
           }
          def authentication_exemption; end
          sig {
            params(_authentication_exemption: T.nilable(::Stripe::Issuing::Authorization::CreateParams::VerificationData::AuthenticationExemption)).returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::VerificationData::AuthenticationExemption))
           }
          def authentication_exemption=(_authentication_exemption); end
          # Whether the cardholder provided a CVC and if it matched Stripe’s record.
          sig { returns(T.nilable(String)) }
          def cvc_check; end
          sig { params(_cvc_check: T.nilable(String)).returns(T.nilable(String)) }
          def cvc_check=(_cvc_check); end
          # Whether the cardholder provided an expiry date and if it matched Stripe’s record.
          sig { returns(T.nilable(String)) }
          def expiry_check; end
          sig { params(_expiry_check: T.nilable(String)).returns(T.nilable(String)) }
          def expiry_check=(_expiry_check); end
          # 3D Secure details.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::VerificationData::ThreeDSecure))
           }
          def three_d_secure; end
          sig {
            params(_three_d_secure: T.nilable(::Stripe::Issuing::Authorization::CreateParams::VerificationData::ThreeDSecure)).returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::VerificationData::ThreeDSecure))
           }
          def three_d_secure=(_three_d_secure); end
          sig {
            params(address_line1_check: T.nilable(String), address_postal_code_check: T.nilable(String), authentication_exemption: T.nilable(::Stripe::Issuing::Authorization::CreateParams::VerificationData::AuthenticationExemption), cvc_check: T.nilable(String), expiry_check: T.nilable(String), three_d_secure: T.nilable(::Stripe::Issuing::Authorization::CreateParams::VerificationData::ThreeDSecure)).void
           }
          def initialize(
            address_line1_check: nil,
            address_postal_code_check: nil,
            authentication_exemption: nil,
            cvc_check: nil,
            expiry_check: nil,
            three_d_secure: nil
          ); end
        end
        # The total amount to attempt to authorize. This amount is in the provided currency, or defaults to the card's currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(T.nilable(Integer)) }
        def amount; end
        sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_amount); end
        # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::AmountDetails)) }
        def amount_details; end
        sig {
          params(_amount_details: T.nilable(::Stripe::Issuing::Authorization::CreateParams::AmountDetails)).returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::AmountDetails))
         }
        def amount_details=(_amount_details); end
        # How the card details were provided. Defaults to online.
        sig { returns(T.nilable(String)) }
        def authorization_method; end
        sig { params(_authorization_method: T.nilable(String)).returns(T.nilable(String)) }
        def authorization_method=(_authorization_method); end
        # Card associated with this authorization.
        sig { returns(String) }
        def card; end
        sig { params(_card: String).returns(String) }
        def card=(_card); end
        # The currency of the authorization. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(T.nilable(String)) }
        def currency; end
        sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_currency); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Fleet-specific information for authorizations using Fleet cards.
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet)) }
        def fleet; end
        sig {
          params(_fleet: T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet)).returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet))
         }
        def fleet=(_fleet); end
        # Information about fuel that was purchased with this transaction.
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fuel)) }
        def fuel; end
        sig {
          params(_fuel: T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fuel)).returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fuel))
         }
        def fuel=(_fuel); end
        # If set `true`, you may provide [amount](https://stripe.com/docs/api/issuing/authorizations/approve#approve_issuing_authorization-amount) to control how much to hold for the authorization.
        sig { returns(T.nilable(T::Boolean)) }
        def is_amount_controllable; end
        sig {
          params(_is_amount_controllable: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
         }
        def is_amount_controllable=(_is_amount_controllable); end
        # The total amount to attempt to authorize. This amount is in the provided merchant currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(T.nilable(Integer)) }
        def merchant_amount; end
        sig { params(_merchant_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def merchant_amount=(_merchant_amount); end
        # The currency of the authorization. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(T.nilable(String)) }
        def merchant_currency; end
        sig { params(_merchant_currency: T.nilable(String)).returns(T.nilable(String)) }
        def merchant_currency=(_merchant_currency); end
        # Details about the seller (grocery store, e-commerce website, etc.) where the card authorization happened.
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::MerchantData)) }
        def merchant_data; end
        sig {
          params(_merchant_data: T.nilable(::Stripe::Issuing::Authorization::CreateParams::MerchantData)).returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::MerchantData))
         }
        def merchant_data=(_merchant_data); end
        # Details about the authorization, such as identifiers, set by the card network.
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::NetworkData)) }
        def network_data; end
        sig {
          params(_network_data: T.nilable(::Stripe::Issuing::Authorization::CreateParams::NetworkData)).returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::NetworkData))
         }
        def network_data=(_network_data); end
        # Verifications that Stripe performed on information that the cardholder provided to the merchant.
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::VerificationData)) }
        def verification_data; end
        sig {
          params(_verification_data: T.nilable(::Stripe::Issuing::Authorization::CreateParams::VerificationData)).returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::VerificationData))
         }
        def verification_data=(_verification_data); end
        # The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`. Will populate as `null` when no digital wallet was utilized.
        sig { returns(T.nilable(String)) }
        def wallet; end
        sig { params(_wallet: T.nilable(String)).returns(T.nilable(String)) }
        def wallet=(_wallet); end
        sig {
          params(amount: T.nilable(Integer), amount_details: T.nilable(::Stripe::Issuing::Authorization::CreateParams::AmountDetails), authorization_method: T.nilable(String), card: String, currency: T.nilable(String), expand: T.nilable(T::Array[String]), fleet: T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet), fuel: T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fuel), is_amount_controllable: T.nilable(T::Boolean), merchant_amount: T.nilable(Integer), merchant_currency: T.nilable(String), merchant_data: T.nilable(::Stripe::Issuing::Authorization::CreateParams::MerchantData), network_data: T.nilable(::Stripe::Issuing::Authorization::CreateParams::NetworkData), verification_data: T.nilable(::Stripe::Issuing::Authorization::CreateParams::VerificationData), wallet: T.nilable(String)).void
         }
        def initialize(
          amount: nil,
          amount_details: nil,
          authorization_method: nil,
          card: nil,
          currency: nil,
          expand: nil,
          fleet: nil,
          fuel: nil,
          is_amount_controllable: nil,
          merchant_amount: nil,
          merchant_currency: nil,
          merchant_data: nil,
          network_data: nil,
          verification_data: nil,
          wallet: nil
        ); end
      end
      class CaptureParams < Stripe::RequestParams
        class PurchaseDetails < Stripe::RequestParams
          class Fleet < Stripe::RequestParams
            class CardholderPromptData < Stripe::RequestParams
              # Driver ID.
              sig { returns(T.nilable(String)) }
              def driver_id; end
              sig { params(_driver_id: T.nilable(String)).returns(T.nilable(String)) }
              def driver_id=(_driver_id); end
              # Odometer reading.
              sig { returns(T.nilable(Integer)) }
              def odometer; end
              sig { params(_odometer: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def odometer=(_odometer); end
              # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
              sig { returns(T.nilable(String)) }
              def unspecified_id; end
              sig { params(_unspecified_id: T.nilable(String)).returns(T.nilable(String)) }
              def unspecified_id=(_unspecified_id); end
              # User ID.
              sig { returns(T.nilable(String)) }
              def user_id; end
              sig { params(_user_id: T.nilable(String)).returns(T.nilable(String)) }
              def user_id=(_user_id); end
              # Vehicle number.
              sig { returns(T.nilable(String)) }
              def vehicle_number; end
              sig { params(_vehicle_number: T.nilable(String)).returns(T.nilable(String)) }
              def vehicle_number=(_vehicle_number); end
              sig {
                params(driver_id: T.nilable(String), odometer: T.nilable(Integer), unspecified_id: T.nilable(String), user_id: T.nilable(String), vehicle_number: T.nilable(String)).void
               }
              def initialize(
                driver_id: nil,
                odometer: nil,
                unspecified_id: nil,
                user_id: nil,
                vehicle_number: nil
              ); end
            end
            class ReportedBreakdown < Stripe::RequestParams
              class Fuel < Stripe::RequestParams
                # Gross fuel amount that should equal Fuel Volume multipled by Fuel Unit Cost, inclusive of taxes.
                sig { returns(T.nilable(String)) }
                def gross_amount_decimal; end
                sig { params(_gross_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
                def gross_amount_decimal=(_gross_amount_decimal); end
                sig { params(gross_amount_decimal: T.nilable(String)).void }
                def initialize(gross_amount_decimal: nil); end
              end
              class NonFuel < Stripe::RequestParams
                # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
                sig { returns(T.nilable(String)) }
                def gross_amount_decimal; end
                sig { params(_gross_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
                def gross_amount_decimal=(_gross_amount_decimal); end
                sig { params(gross_amount_decimal: T.nilable(String)).void }
                def initialize(gross_amount_decimal: nil); end
              end
              class Tax < Stripe::RequestParams
                # Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
                sig { returns(T.nilable(String)) }
                def local_amount_decimal; end
                sig { params(_local_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
                def local_amount_decimal=(_local_amount_decimal); end
                # Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
                sig { returns(T.nilable(String)) }
                def national_amount_decimal; end
                sig {
                  params(_national_amount_decimal: T.nilable(String)).returns(T.nilable(String))
                 }
                def national_amount_decimal=(_national_amount_decimal); end
                sig {
                  params(local_amount_decimal: T.nilable(String), national_amount_decimal: T.nilable(String)).void
                 }
                def initialize(local_amount_decimal: nil, national_amount_decimal: nil); end
              end
              # Breakdown of fuel portion of the purchase.
              sig {
                returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel))
               }
              def fuel; end
              sig {
                params(_fuel: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel)).returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel))
               }
              def fuel=(_fuel); end
              # Breakdown of non-fuel portion of the purchase.
              sig {
                returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel))
               }
              def non_fuel; end
              sig {
                params(_non_fuel: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel)).returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel))
               }
              def non_fuel=(_non_fuel); end
              # Information about tax included in this transaction.
              sig {
                returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax))
               }
              def tax; end
              sig {
                params(_tax: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax)).returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax))
               }
              def tax=(_tax); end
              sig {
                params(fuel: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel), non_fuel: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel), tax: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax)).void
               }
              def initialize(fuel: nil, non_fuel: nil, tax: nil); end
            end
            # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
            sig {
              returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::CardholderPromptData))
             }
            def cardholder_prompt_data; end
            sig {
              params(_cardholder_prompt_data: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::CardholderPromptData)).returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::CardholderPromptData))
             }
            def cardholder_prompt_data=(_cardholder_prompt_data); end
            # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
            sig { returns(T.nilable(String)) }
            def purchase_type; end
            sig { params(_purchase_type: T.nilable(String)).returns(T.nilable(String)) }
            def purchase_type=(_purchase_type); end
            # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
            sig {
              returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown))
             }
            def reported_breakdown; end
            sig {
              params(_reported_breakdown: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown)).returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown))
             }
            def reported_breakdown=(_reported_breakdown); end
            # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
            sig { returns(T.nilable(String)) }
            def service_type; end
            sig { params(_service_type: T.nilable(String)).returns(T.nilable(String)) }
            def service_type=(_service_type); end
            sig {
              params(cardholder_prompt_data: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::CardholderPromptData), purchase_type: T.nilable(String), reported_breakdown: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown), service_type: T.nilable(String)).void
             }
            def initialize(
              cardholder_prompt_data: nil,
              purchase_type: nil,
              reported_breakdown: nil,
              service_type: nil
            ); end
          end
          class Flight < Stripe::RequestParams
            class Segment < Stripe::RequestParams
              # The three-letter IATA airport code of the flight's destination.
              sig { returns(T.nilable(String)) }
              def arrival_airport_code; end
              sig { params(_arrival_airport_code: T.nilable(String)).returns(T.nilable(String)) }
              def arrival_airport_code=(_arrival_airport_code); end
              # The airline carrier code.
              sig { returns(T.nilable(String)) }
              def carrier; end
              sig { params(_carrier: T.nilable(String)).returns(T.nilable(String)) }
              def carrier=(_carrier); end
              # The three-letter IATA airport code that the flight departed from.
              sig { returns(T.nilable(String)) }
              def departure_airport_code; end
              sig { params(_departure_airport_code: T.nilable(String)).returns(T.nilable(String)) }
              def departure_airport_code=(_departure_airport_code); end
              # The flight number.
              sig { returns(T.nilable(String)) }
              def flight_number; end
              sig { params(_flight_number: T.nilable(String)).returns(T.nilable(String)) }
              def flight_number=(_flight_number); end
              # The flight's service class.
              sig { returns(T.nilable(String)) }
              def service_class; end
              sig { params(_service_class: T.nilable(String)).returns(T.nilable(String)) }
              def service_class=(_service_class); end
              # Whether a stopover is allowed on this flight.
              sig { returns(T.nilable(T::Boolean)) }
              def stopover_allowed; end
              sig {
                params(_stopover_allowed: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
               }
              def stopover_allowed=(_stopover_allowed); end
              sig {
                params(arrival_airport_code: T.nilable(String), carrier: T.nilable(String), departure_airport_code: T.nilable(String), flight_number: T.nilable(String), service_class: T.nilable(String), stopover_allowed: T.nilable(T::Boolean)).void
               }
              def initialize(
                arrival_airport_code: nil,
                carrier: nil,
                departure_airport_code: nil,
                flight_number: nil,
                service_class: nil,
                stopover_allowed: nil
              ); end
            end
            # The time that the flight departed.
            sig { returns(T.nilable(Integer)) }
            def departure_at; end
            sig { params(_departure_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def departure_at=(_departure_at); end
            # The name of the passenger.
            sig { returns(T.nilable(String)) }
            def passenger_name; end
            sig { params(_passenger_name: T.nilable(String)).returns(T.nilable(String)) }
            def passenger_name=(_passenger_name); end
            # Whether the ticket is refundable.
            sig { returns(T.nilable(T::Boolean)) }
            def refundable; end
            sig { params(_refundable: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def refundable=(_refundable); end
            # The legs of the trip.
            sig {
              returns(T.nilable(T::Array[::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Flight::Segment]))
             }
            def segments; end
            sig {
              params(_segments: T.nilable(T::Array[::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Flight::Segment])).returns(T.nilable(T::Array[::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Flight::Segment]))
             }
            def segments=(_segments); end
            # The travel agency that issued the ticket.
            sig { returns(T.nilable(String)) }
            def travel_agency; end
            sig { params(_travel_agency: T.nilable(String)).returns(T.nilable(String)) }
            def travel_agency=(_travel_agency); end
            sig {
              params(departure_at: T.nilable(Integer), passenger_name: T.nilable(String), refundable: T.nilable(T::Boolean), segments: T.nilable(T::Array[::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Flight::Segment]), travel_agency: T.nilable(String)).void
             }
            def initialize(
              departure_at: nil,
              passenger_name: nil,
              refundable: nil,
              segments: nil,
              travel_agency: nil
            ); end
          end
          class Fuel < Stripe::RequestParams
            # [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
            sig { returns(T.nilable(String)) }
            def industry_product_code; end
            sig { params(_industry_product_code: T.nilable(String)).returns(T.nilable(String)) }
            def industry_product_code=(_industry_product_code); end
            # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
            sig { returns(T.nilable(String)) }
            def quantity_decimal; end
            sig { params(_quantity_decimal: T.nilable(String)).returns(T.nilable(String)) }
            def quantity_decimal=(_quantity_decimal); end
            # The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
            sig { returns(T.nilable(String)) }
            def type; end
            sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
            def type=(_type); end
            # The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`.
            sig { returns(T.nilable(String)) }
            def unit; end
            sig { params(_unit: T.nilable(String)).returns(T.nilable(String)) }
            def unit=(_unit); end
            # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
            sig { returns(T.nilable(String)) }
            def unit_cost_decimal; end
            sig { params(_unit_cost_decimal: T.nilable(String)).returns(T.nilable(String)) }
            def unit_cost_decimal=(_unit_cost_decimal); end
            sig {
              params(industry_product_code: T.nilable(String), quantity_decimal: T.nilable(String), type: T.nilable(String), unit: T.nilable(String), unit_cost_decimal: T.nilable(String)).void
             }
            def initialize(
              industry_product_code: nil,
              quantity_decimal: nil,
              type: nil,
              unit: nil,
              unit_cost_decimal: nil
            ); end
          end
          class Lodging < Stripe::RequestParams
            # The time of checking into the lodging.
            sig { returns(T.nilable(Integer)) }
            def check_in_at; end
            sig { params(_check_in_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def check_in_at=(_check_in_at); end
            # The number of nights stayed at the lodging.
            sig { returns(T.nilable(Integer)) }
            def nights; end
            sig { params(_nights: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def nights=(_nights); end
            sig { params(check_in_at: T.nilable(Integer), nights: T.nilable(Integer)).void }
            def initialize(check_in_at: nil, nights: nil); end
          end
          class Receipt < Stripe::RequestParams
            # Attribute for param field description
            sig { returns(T.nilable(String)) }
            def description; end
            sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_description); end
            # Attribute for param field quantity
            sig { returns(T.nilable(String)) }
            def quantity; end
            sig { params(_quantity: T.nilable(String)).returns(T.nilable(String)) }
            def quantity=(_quantity); end
            # Attribute for param field total
            sig { returns(T.nilable(Integer)) }
            def total; end
            sig { params(_total: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def total=(_total); end
            # Attribute for param field unit_cost
            sig { returns(T.nilable(Integer)) }
            def unit_cost; end
            sig { params(_unit_cost: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def unit_cost=(_unit_cost); end
            sig {
              params(description: T.nilable(String), quantity: T.nilable(String), total: T.nilable(Integer), unit_cost: T.nilable(Integer)).void
             }
            def initialize(description: nil, quantity: nil, total: nil, unit_cost: nil); end
          end
          # Fleet-specific information for transactions using Fleet cards.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet))
           }
          def fleet; end
          sig {
            params(_fleet: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet)).returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet))
           }
          def fleet=(_fleet); end
          # Information about the flight that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Flight))
           }
          def flight; end
          sig {
            params(_flight: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Flight)).returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Flight))
           }
          def flight=(_flight); end
          # Information about fuel that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fuel))
           }
          def fuel; end
          sig {
            params(_fuel: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fuel)).returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fuel))
           }
          def fuel=(_fuel); end
          # Information about lodging that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Lodging))
           }
          def lodging; end
          sig {
            params(_lodging: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Lodging)).returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Lodging))
           }
          def lodging=(_lodging); end
          # The line items in the purchase.
          sig {
            returns(T.nilable(T::Array[::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Receipt]))
           }
          def receipt; end
          sig {
            params(_receipt: T.nilable(T::Array[::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Receipt])).returns(T.nilable(T::Array[::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Receipt]))
           }
          def receipt=(_receipt); end
          # A merchant-specific order number.
          sig { returns(T.nilable(String)) }
          def reference; end
          sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
          def reference=(_reference); end
          sig {
            params(fleet: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet), flight: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Flight), fuel: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fuel), lodging: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Lodging), receipt: T.nilable(T::Array[::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Receipt]), reference: T.nilable(String)).void
           }
          def initialize(
            fleet: nil,
            flight: nil,
            fuel: nil,
            lodging: nil,
            receipt: nil,
            reference: nil
          ); end
        end
        # The amount to capture from the authorization. If not provided, the full amount of the authorization will be captured. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(T.nilable(Integer)) }
        def capture_amount; end
        sig { params(_capture_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def capture_amount=(_capture_amount); end
        # Whether to close the authorization after capture. Defaults to true. Set to false to enable multi-capture flows.
        sig { returns(T.nilable(T::Boolean)) }
        def close_authorization; end
        sig { params(_close_authorization: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def close_authorization=(_close_authorization); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Additional purchase information that is optionally provided by the merchant.
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails)) }
        def purchase_details; end
        sig {
          params(_purchase_details: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails)).returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails))
         }
        def purchase_details=(_purchase_details); end
        sig {
          params(capture_amount: T.nilable(Integer), close_authorization: T.nilable(T::Boolean), expand: T.nilable(T::Array[String]), purchase_details: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails)).void
         }
        def initialize(
          capture_amount: nil,
          close_authorization: nil,
          expand: nil,
          purchase_details: nil
        ); end
      end
      class ExpireParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class FinalizeAmountParams < Stripe::RequestParams
        class Fleet < Stripe::RequestParams
          class CardholderPromptData < Stripe::RequestParams
            # Driver ID.
            sig { returns(T.nilable(String)) }
            def driver_id; end
            sig { params(_driver_id: T.nilable(String)).returns(T.nilable(String)) }
            def driver_id=(_driver_id); end
            # Odometer reading.
            sig { returns(T.nilable(Integer)) }
            def odometer; end
            sig { params(_odometer: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def odometer=(_odometer); end
            # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
            sig { returns(T.nilable(String)) }
            def unspecified_id; end
            sig { params(_unspecified_id: T.nilable(String)).returns(T.nilable(String)) }
            def unspecified_id=(_unspecified_id); end
            # User ID.
            sig { returns(T.nilable(String)) }
            def user_id; end
            sig { params(_user_id: T.nilable(String)).returns(T.nilable(String)) }
            def user_id=(_user_id); end
            # Vehicle number.
            sig { returns(T.nilable(String)) }
            def vehicle_number; end
            sig { params(_vehicle_number: T.nilable(String)).returns(T.nilable(String)) }
            def vehicle_number=(_vehicle_number); end
            sig {
              params(driver_id: T.nilable(String), odometer: T.nilable(Integer), unspecified_id: T.nilable(String), user_id: T.nilable(String), vehicle_number: T.nilable(String)).void
             }
            def initialize(
              driver_id: nil,
              odometer: nil,
              unspecified_id: nil,
              user_id: nil,
              vehicle_number: nil
            ); end
          end
          class ReportedBreakdown < Stripe::RequestParams
            class Fuel < Stripe::RequestParams
              # Gross fuel amount that should equal Fuel Volume multipled by Fuel Unit Cost, inclusive of taxes.
              sig { returns(T.nilable(String)) }
              def gross_amount_decimal; end
              sig { params(_gross_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
              def gross_amount_decimal=(_gross_amount_decimal); end
              sig { params(gross_amount_decimal: T.nilable(String)).void }
              def initialize(gross_amount_decimal: nil); end
            end
            class NonFuel < Stripe::RequestParams
              # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
              sig { returns(T.nilable(String)) }
              def gross_amount_decimal; end
              sig { params(_gross_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
              def gross_amount_decimal=(_gross_amount_decimal); end
              sig { params(gross_amount_decimal: T.nilable(String)).void }
              def initialize(gross_amount_decimal: nil); end
            end
            class Tax < Stripe::RequestParams
              # Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
              sig { returns(T.nilable(String)) }
              def local_amount_decimal; end
              sig { params(_local_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
              def local_amount_decimal=(_local_amount_decimal); end
              # Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
              sig { returns(T.nilable(String)) }
              def national_amount_decimal; end
              sig { params(_national_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
              def national_amount_decimal=(_national_amount_decimal); end
              sig {
                params(local_amount_decimal: T.nilable(String), national_amount_decimal: T.nilable(String)).void
               }
              def initialize(local_amount_decimal: nil, national_amount_decimal: nil); end
            end
            # Breakdown of fuel portion of the purchase.
            sig {
              returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::Fuel))
             }
            def fuel; end
            sig {
              params(_fuel: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::Fuel)).returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::Fuel))
             }
            def fuel=(_fuel); end
            # Breakdown of non-fuel portion of the purchase.
            sig {
              returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::NonFuel))
             }
            def non_fuel; end
            sig {
              params(_non_fuel: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::NonFuel)).returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::NonFuel))
             }
            def non_fuel=(_non_fuel); end
            # Information about tax included in this transaction.
            sig {
              returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::Tax))
             }
            def tax; end
            sig {
              params(_tax: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::Tax)).returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::Tax))
             }
            def tax=(_tax); end
            sig {
              params(fuel: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::Fuel), non_fuel: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::NonFuel), tax: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::Tax)).void
             }
            def initialize(fuel: nil, non_fuel: nil, tax: nil); end
          end
          # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::CardholderPromptData))
           }
          def cardholder_prompt_data; end
          sig {
            params(_cardholder_prompt_data: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::CardholderPromptData)).returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::CardholderPromptData))
           }
          def cardholder_prompt_data=(_cardholder_prompt_data); end
          # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
          sig { returns(T.nilable(String)) }
          def purchase_type; end
          sig { params(_purchase_type: T.nilable(String)).returns(T.nilable(String)) }
          def purchase_type=(_purchase_type); end
          # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown))
           }
          def reported_breakdown; end
          sig {
            params(_reported_breakdown: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown)).returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown))
           }
          def reported_breakdown=(_reported_breakdown); end
          # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
          sig { returns(T.nilable(String)) }
          def service_type; end
          sig { params(_service_type: T.nilable(String)).returns(T.nilable(String)) }
          def service_type=(_service_type); end
          sig {
            params(cardholder_prompt_data: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::CardholderPromptData), purchase_type: T.nilable(String), reported_breakdown: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown), service_type: T.nilable(String)).void
           }
          def initialize(
            cardholder_prompt_data: nil,
            purchase_type: nil,
            reported_breakdown: nil,
            service_type: nil
          ); end
        end
        class Fuel < Stripe::RequestParams
          # [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
          sig { returns(T.nilable(String)) }
          def industry_product_code; end
          sig { params(_industry_product_code: T.nilable(String)).returns(T.nilable(String)) }
          def industry_product_code=(_industry_product_code); end
          # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
          sig { returns(T.nilable(String)) }
          def quantity_decimal; end
          sig { params(_quantity_decimal: T.nilable(String)).returns(T.nilable(String)) }
          def quantity_decimal=(_quantity_decimal); end
          # The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
          # The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`.
          sig { returns(T.nilable(String)) }
          def unit; end
          sig { params(_unit: T.nilable(String)).returns(T.nilable(String)) }
          def unit=(_unit); end
          # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
          sig { returns(T.nilable(String)) }
          def unit_cost_decimal; end
          sig { params(_unit_cost_decimal: T.nilable(String)).returns(T.nilable(String)) }
          def unit_cost_decimal=(_unit_cost_decimal); end
          sig {
            params(industry_product_code: T.nilable(String), quantity_decimal: T.nilable(String), type: T.nilable(String), unit: T.nilable(String), unit_cost_decimal: T.nilable(String)).void
           }
          def initialize(
            industry_product_code: nil,
            quantity_decimal: nil,
            type: nil,
            unit: nil,
            unit_cost_decimal: nil
          ); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The final authorization amount that will be captured by the merchant. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(Integer) }
        def final_amount; end
        sig { params(_final_amount: Integer).returns(Integer) }
        def final_amount=(_final_amount); end
        # Fleet-specific information for authorizations using Fleet cards.
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet)) }
        def fleet; end
        sig {
          params(_fleet: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet)).returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet))
         }
        def fleet=(_fleet); end
        # Information about fuel that was purchased with this transaction.
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fuel)) }
        def fuel; end
        sig {
          params(_fuel: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fuel)).returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fuel))
         }
        def fuel=(_fuel); end
        sig {
          params(expand: T.nilable(T::Array[String]), final_amount: Integer, fleet: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet), fuel: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fuel)).void
         }
        def initialize(expand: nil, final_amount: nil, fleet: nil, fuel: nil); end
      end
      class RespondParams < Stripe::RequestParams
        # Whether to simulate the user confirming that the transaction was legitimate (true) or telling Stripe that it was fraudulent (false).
        sig { returns(T::Boolean) }
        def confirmed; end
        sig { params(_confirmed: T::Boolean).returns(T::Boolean) }
        def confirmed=(_confirmed); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(confirmed: T::Boolean, expand: T.nilable(T::Array[String])).void }
        def initialize(confirmed: nil, expand: nil); end
      end
      class IncrementParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The amount to increment the authorization by. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(Integer) }
        def increment_amount; end
        sig { params(_increment_amount: Integer).returns(Integer) }
        def increment_amount=(_increment_amount); end
        # If set `true`, you may provide [amount](https://stripe.com/docs/api/issuing/authorizations/approve#approve_issuing_authorization-amount) to control how much to hold for the authorization.
        sig { returns(T.nilable(T::Boolean)) }
        def is_amount_controllable; end
        sig {
          params(_is_amount_controllable: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
         }
        def is_amount_controllable=(_is_amount_controllable); end
        sig {
          params(expand: T.nilable(T::Array[String]), increment_amount: Integer, is_amount_controllable: T.nilable(T::Boolean)).void
         }
        def initialize(expand: nil, increment_amount: nil, is_amount_controllable: nil); end
      end
      class ReverseParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The amount to reverse from the authorization. If not provided, the full amount of the authorization will be reversed. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(T.nilable(Integer)) }
        def reverse_amount; end
        sig { params(_reverse_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def reverse_amount=(_reverse_amount); end
        sig { params(expand: T.nilable(T::Array[String]), reverse_amount: T.nilable(Integer)).void }
        def initialize(expand: nil, reverse_amount: nil); end
      end
      # [Deprecated] Approves a pending Issuing Authorization object. This request should be made within the timeout window of the [real-time authorization](https://docs.stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to approve an authorization](https://docs.stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      sig {
        params(params: T.any(::Stripe::Issuing::Authorization::ApproveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Authorization)
       }
      def approve(params = {}, opts = {}); end

      # [Deprecated] Approves a pending Issuing Authorization object. This request should be made within the timeout window of the [real-time authorization](https://docs.stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to approve an authorization](https://docs.stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      sig {
        params(authorization: String, params: T.any(::Stripe::Issuing::Authorization::ApproveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Authorization)
       }
      def self.approve(authorization, params = {}, opts = {}); end

      # [Deprecated] Declines a pending Issuing Authorization object. This request should be made within the timeout window of the [real time authorization](https://docs.stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to decline an authorization](https://docs.stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      sig {
        params(params: T.any(::Stripe::Issuing::Authorization::DeclineParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Authorization)
       }
      def decline(params = {}, opts = {}); end

      # [Deprecated] Declines a pending Issuing Authorization object. This request should be made within the timeout window of the [real time authorization](https://docs.stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to decline an authorization](https://docs.stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      sig {
        params(authorization: String, params: T.any(::Stripe::Issuing::Authorization::DeclineParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Authorization)
       }
      def self.decline(authorization, params = {}, opts = {}); end

      # Returns a list of Issuing Authorization objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::Authorization::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Updates the specified Issuing Authorization object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      sig {
        params(authorization: String, params: T.any(::Stripe::Issuing::Authorization::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Authorization)
       }
      def self.update(authorization, params = {}, opts = {}); end
    end
  end
end