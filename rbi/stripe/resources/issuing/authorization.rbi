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
        attr_reader :atm_fee
        # The amount of cash requested by the cardholder.
        sig { returns(T.nilable(Integer)) }
        attr_reader :cashback_amount
      end
      class Fleet < Stripe::StripeObject
        class CardholderPromptData < Stripe::StripeObject
          # [Deprecated] An alphanumeric ID, though typical point of sales only support numeric entry. The card program can be configured to prompt for a vehicle ID, driver ID, or generic ID.
          sig { returns(T.nilable(String)) }
          attr_reader :alphanumeric_id
          # Driver ID.
          sig { returns(T.nilable(String)) }
          attr_reader :driver_id
          # Odometer reading.
          sig { returns(T.nilable(Integer)) }
          attr_reader :odometer
          # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
          sig { returns(T.nilable(String)) }
          attr_reader :unspecified_id
          # User ID.
          sig { returns(T.nilable(String)) }
          attr_reader :user_id
          # Vehicle number.
          sig { returns(T.nilable(String)) }
          attr_reader :vehicle_number
        end
        class ReportedBreakdown < Stripe::StripeObject
          class Fuel < Stripe::StripeObject
            # Gross fuel amount that should equal Fuel Quantity multiplied by Fuel Unit Cost, inclusive of taxes.
            sig { returns(T.nilable(String)) }
            attr_reader :gross_amount_decimal
          end
          class NonFuel < Stripe::StripeObject
            # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
            sig { returns(T.nilable(String)) }
            attr_reader :gross_amount_decimal
          end
          class Tax < Stripe::StripeObject
            # Amount of state or provincial Sales Tax included in the transaction amount. `null` if not reported by merchant or not subject to tax.
            sig { returns(T.nilable(String)) }
            attr_reader :local_amount_decimal
            # Amount of national Sales Tax or VAT included in the transaction amount. `null` if not reported by merchant or not subject to tax.
            sig { returns(T.nilable(String)) }
            attr_reader :national_amount_decimal
          end
          # Breakdown of fuel portion of the purchase.
          sig { returns(T.nilable(Fuel)) }
          attr_reader :fuel
          # Breakdown of non-fuel portion of the purchase.
          sig { returns(T.nilable(NonFuel)) }
          attr_reader :non_fuel
          # Information about tax included in this transaction.
          sig { returns(T.nilable(Tax)) }
          attr_reader :tax
        end
        # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
        sig { returns(T.nilable(CardholderPromptData)) }
        attr_reader :cardholder_prompt_data
        # The type of purchase.
        sig { returns(T.nilable(String)) }
        attr_reader :purchase_type
        # More information about the total amount. Typically this information is received from the merchant after the authorization has been approved and the fuel dispensed. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
        sig { returns(T.nilable(ReportedBreakdown)) }
        attr_reader :reported_breakdown
        # The type of fuel service.
        sig { returns(T.nilable(String)) }
        attr_reader :service_type
      end
      class FraudChallenge < Stripe::StripeObject
        # The method by which the fraud challenge was delivered to the cardholder.
        sig { returns(String) }
        attr_reader :channel
        # The status of the fraud challenge.
        sig { returns(String) }
        attr_reader :status
        # If the challenge is not deliverable, the reason why.
        sig { returns(T.nilable(String)) }
        attr_reader :undeliverable_reason
      end
      class Fuel < Stripe::StripeObject
        # [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
        sig { returns(T.nilable(String)) }
        attr_reader :industry_product_code
        # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
        sig { returns(T.nilable(String)) }
        attr_reader :quantity_decimal
        # The type of fuel that was purchased.
        sig { returns(T.nilable(String)) }
        attr_reader :type
        # The units for `quantity_decimal`.
        sig { returns(T.nilable(String)) }
        attr_reader :unit
        # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
        sig { returns(T.nilable(String)) }
        attr_reader :unit_cost_decimal
      end
      class MerchantData < Stripe::StripeObject
        # A categorization of the seller's type of business. See our [merchant categories guide](https://stripe.com/docs/issuing/merchant-categories) for a list of possible values.
        sig { returns(String) }
        attr_reader :category
        # The merchant category code for the seller’s business
        sig { returns(String) }
        attr_reader :category_code
        # City where the seller is located
        sig { returns(T.nilable(String)) }
        attr_reader :city
        # Country where the seller is located
        sig { returns(T.nilable(String)) }
        attr_reader :country
        # Name of the seller
        sig { returns(T.nilable(String)) }
        attr_reader :name
        # Identifier assigned to the seller by the card network. Different card networks may assign different network_id fields to the same merchant.
        sig { returns(String) }
        attr_reader :network_id
        # Postal code where the seller is located
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code
        # State where the seller is located
        sig { returns(T.nilable(String)) }
        attr_reader :state
        # The seller's tax identification number. Currently populated for French merchants only.
        sig { returns(T.nilable(String)) }
        attr_reader :tax_id
        # An ID assigned by the seller to the location of the sale.
        sig { returns(T.nilable(String)) }
        attr_reader :terminal_id
        # URL provided by the merchant on a 3DS request
        sig { returns(T.nilable(String)) }
        attr_reader :url
      end
      class NetworkData < Stripe::StripeObject
        # Identifier assigned to the acquirer by the card network. Sometimes this value is not provided by the network; in this case, the value will be `null`.
        sig { returns(T.nilable(String)) }
        attr_reader :acquiring_institution_id
        # The System Trace Audit Number (STAN) is a 6-digit identifier assigned by the acquirer. Prefer `network_data.transaction_id` if present, unless you have special requirements.
        sig { returns(T.nilable(String)) }
        attr_reader :system_trace_audit_number
        # Unique identifier for the authorization assigned by the card network used to match subsequent messages, disputes, and transactions.
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class PendingRequest < Stripe::StripeObject
        class AmountDetails < Stripe::StripeObject
          # The fee charged by the ATM for the cash withdrawal.
          sig { returns(T.nilable(Integer)) }
          attr_reader :atm_fee
          # The amount of cash requested by the cardholder.
          sig { returns(T.nilable(Integer)) }
          attr_reader :cashback_amount
        end
        # The additional amount Stripe will hold if the authorization is approved, in the card's [currency](https://stripe.com/docs/api#issuing_authorization_object-pending-request-currency) and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(Integer) }
        attr_reader :amount
        # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(T.nilable(AmountDetails)) }
        attr_reader :amount_details
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_reader :currency
        # If set `true`, you may provide [amount](https://stripe.com/docs/api/issuing/authorizations/approve#approve_issuing_authorization-amount) to control how much to hold for the authorization.
        sig { returns(T::Boolean) }
        attr_reader :is_amount_controllable
        # The amount the merchant is requesting to be authorized in the `merchant_currency`. The amount is in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(Integer) }
        attr_reader :merchant_amount
        # The local currency the merchant is requesting to authorize.
        sig { returns(String) }
        attr_reader :merchant_currency
        # The card network's estimate of the likelihood that an authorization is fraudulent. Takes on values between 1 and 99.
        sig { returns(T.nilable(Integer)) }
        attr_reader :network_risk_score
      end
      class RequestHistory < Stripe::StripeObject
        class AmountDetails < Stripe::StripeObject
          # The fee charged by the ATM for the cash withdrawal.
          sig { returns(T.nilable(Integer)) }
          attr_reader :atm_fee
          # The amount of cash requested by the cardholder.
          sig { returns(T.nilable(Integer)) }
          attr_reader :cashback_amount
        end
        # The `pending_request.amount` at the time of the request, presented in your card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). Stripe held this amount from your account to fund the authorization if the request was approved.
        sig { returns(Integer) }
        attr_reader :amount
        # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(T.nilable(AmountDetails)) }
        attr_reader :amount_details
        # Whether this request was approved.
        sig { returns(T::Boolean) }
        attr_reader :approved
        # A code created by Stripe which is shared with the merchant to validate the authorization. This field will be populated if the authorization message was approved. The code typically starts with the letter "S", followed by a six-digit number. For example, "S498162". Please note that the code is not guaranteed to be unique across authorizations.
        sig { returns(T.nilable(String)) }
        attr_reader :authorization_code
        # Time at which the object was created. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_reader :created
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_reader :currency
        # The `pending_request.merchant_amount` at the time of the request, presented in the `merchant_currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(Integer) }
        attr_reader :merchant_amount
        # The currency that was collected by the merchant and presented to the cardholder for the authorization. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_reader :merchant_currency
        # The card network's estimate of the likelihood that an authorization is fraudulent. Takes on values between 1 and 99.
        sig { returns(T.nilable(Integer)) }
        attr_reader :network_risk_score
        # When an authorization is approved or declined by you or by Stripe, this field provides additional detail on the reason for the outcome.
        sig { returns(String) }
        attr_reader :reason
        # If the `request_history.reason` is `webhook_error` because the direct webhook response is invalid (for example, parsing errors or missing parameters), we surface a more detailed error message via this field.
        sig { returns(T.nilable(String)) }
        attr_reader :reason_message
        # Time when the card network received an authorization request from the acquirer in UTC. Referred to by networks as transmission time.
        sig { returns(T.nilable(Integer)) }
        attr_reader :requested_at
      end
      class Treasury < Stripe::StripeObject
        # The array of [ReceivedCredits](https://stripe.com/docs/api/treasury/received_credits) associated with this authorization
        sig { returns(T::Array[String]) }
        attr_reader :received_credits
        # The array of [ReceivedDebits](https://stripe.com/docs/api/treasury/received_debits) associated with this authorization
        sig { returns(T::Array[String]) }
        attr_reader :received_debits
        # The Treasury [Transaction](https://stripe.com/docs/api/treasury/transactions) associated with this authorization
        sig { returns(T.nilable(String)) }
        attr_reader :transaction
      end
      class VerificationData < Stripe::StripeObject
        class AuthenticationExemption < Stripe::StripeObject
          # The entity that requested the exemption, either the acquiring merchant or the Issuing user.
          sig { returns(String) }
          attr_reader :claimed_by
          # The specific exemption claimed for this authorization.
          sig { returns(String) }
          attr_reader :type
        end
        class ThreeDSecure < Stripe::StripeObject
          # The outcome of the 3D Secure authentication request.
          sig { returns(String) }
          attr_reader :result
        end
        # Whether the cardholder provided an address first line and if it matched the cardholder’s `billing.address.line1`.
        sig { returns(String) }
        attr_reader :address_line1_check
        # Whether the cardholder provided a postal code and if it matched the cardholder’s `billing.address.postal_code`.
        sig { returns(String) }
        attr_reader :address_postal_code_check
        # The exemption applied to this authorization.
        sig { returns(T.nilable(AuthenticationExemption)) }
        attr_reader :authentication_exemption
        # Whether the cardholder provided a CVC and if it matched Stripe’s record.
        sig { returns(String) }
        attr_reader :cvc_check
        # Whether the cardholder provided an expiry date and if it matched Stripe’s record.
        sig { returns(String) }
        attr_reader :expiry_check
        # The postal code submitted as part of the authorization used for postal code verification.
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code
        # 3D Secure details.
        sig { returns(T.nilable(ThreeDSecure)) }
        attr_reader :three_d_secure
      end
      # The total amount that was authorized or rejected. This amount is in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). `amount` should be the same as `merchant_amount`, unless `currency` and `merchant_currency` are different.
      sig { returns(Integer) }
      attr_reader :amount
      # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      sig { returns(T.nilable(AmountDetails)) }
      attr_reader :amount_details
      # Whether the authorization has been approved.
      sig { returns(T::Boolean) }
      attr_reader :approved
      # How the card details were provided.
      sig { returns(String) }
      attr_reader :authorization_method
      # List of balance transactions associated with this authorization.
      sig { returns(T::Array[Stripe::BalanceTransaction]) }
      attr_reader :balance_transactions
      # You can [create physical or virtual cards](https://stripe.com/docs/issuing) that are issued to cardholders.
      sig { returns(Stripe::Issuing::Card) }
      attr_reader :card
      # The cardholder to whom this authorization belongs.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Cardholder))) }
      attr_reader :cardholder
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # The currency of the cardholder. This currency can be different from the currency presented at authorization and the `merchant_currency` field on this authorization. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency
      # Fleet-specific information for authorizations using Fleet cards.
      sig { returns(T.nilable(Fleet)) }
      attr_reader :fleet
      # Fraud challenges sent to the cardholder, if this authorization was declined for fraud risk reasons.
      sig { returns(T.nilable(T::Array[FraudChallenge])) }
      attr_reader :fraud_challenges
      # Information about fuel that was purchased with this transaction. Typically this information is received from the merchant after the authorization has been approved and the fuel dispensed.
      sig { returns(T.nilable(Fuel)) }
      attr_reader :fuel
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # The total amount that was authorized or rejected. This amount is in the `merchant_currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). `merchant_amount` should be the same as `amount`, unless `merchant_currency` and `currency` are different.
      sig { returns(Integer) }
      attr_reader :merchant_amount
      # The local currency that was presented to the cardholder for the authorization. This currency can be different from the cardholder currency and the `currency` field on this authorization. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :merchant_currency
      # Attribute for field merchant_data
      sig { returns(MerchantData) }
      attr_reader :merchant_data
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata
      # Details about the authorization, such as identifiers, set by the card network.
      sig { returns(T.nilable(NetworkData)) }
      attr_reader :network_data
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # The pending authorization request. This field will only be non-null during an `issuing_authorization.request` webhook.
      sig { returns(T.nilable(PendingRequest)) }
      attr_reader :pending_request
      # History of every time a `pending_request` authorization was approved/declined, either by you directly or by Stripe (e.g. based on your spending_controls). If the merchant changes the authorization by performing an incremental authorization, you can look at this field to see the previous requests for the authorization. This field can be helpful in determining why a given authorization was approved/declined.
      sig { returns(T::Array[RequestHistory]) }
      attr_reader :request_history
      # The current status of the authorization in its lifecycle.
      sig { returns(String) }
      attr_reader :status
      # [Token](https://stripe.com/docs/api/issuing/tokens/object) object used for this authorization. If a network token was not used for this authorization, this field will be null.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Token))) }
      attr_reader :token
      # List of [transactions](https://stripe.com/docs/api/issuing/transactions) associated with this authorization.
      sig { returns(T::Array[Stripe::Issuing::Transaction]) }
      attr_reader :transactions
      # [Treasury](https://stripe.com/docs/api/treasury) details related to this authorization if it was created on a [FinancialAccount](https://stripe.com/docs/api/treasury/financial_accounts).
      sig { returns(T.nilable(Treasury)) }
      attr_reader :treasury
      # Attribute for field verification_data
      sig { returns(VerificationData) }
      attr_reader :verification_data
      # Whether the authorization bypassed fraud risk checks because the cardholder has previously completed a fraud challenge on a similar high-risk authorization from the same merchant.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :verified_by_fraud_challenge
      # The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`. Will populate as `null` when no digital wallet was utilized.
      sig { returns(T.nilable(String)) }
      attr_reader :wallet
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
        # Only return authorizations that belong to the given card.
        sig { returns(T.nilable(String)) }
        attr_accessor :card
        # Only return authorizations that belong to the given cardholder.
        sig { returns(T.nilable(String)) }
        attr_accessor :cardholder
        # Only return authorizations that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Issuing::Authorization::ListParams::Created, Integer)))
         }
        attr_accessor :created
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
        # Only return authorizations with the given status. One of `pending`, `closed`, or `reversed`.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
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
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.nilable(T.any(String, T::Hash[String, String])))) }
        attr_accessor :metadata
        sig {
          params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T.nilable(T.any(String, T::Hash[String, String])))).void
         }
        def initialize(expand: nil, metadata: nil); end
      end
      class ApproveParams < Stripe::RequestParams
        # If the authorization's `pending_request.is_amount_controllable` property is `true`, you may provide this value to control how much to hold for the authorization. Must be positive (use [`decline`](https://stripe.com/docs/api/issuing/authorizations/decline) to decline an authorization request).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.nilable(T.any(String, T::Hash[String, String])))) }
        attr_accessor :metadata
        sig {
          params(amount: T.nilable(Integer), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.nilable(T.any(String, T::Hash[String, String])))).void
         }
        def initialize(amount: nil, expand: nil, metadata: nil); end
      end
      class DeclineParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.nilable(T.any(String, T::Hash[String, String])))) }
        attr_accessor :metadata
        sig {
          params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T.nilable(T.any(String, T::Hash[String, String])))).void
         }
        def initialize(expand: nil, metadata: nil); end
      end
      class CreateParams < Stripe::RequestParams
        class AmountDetails < Stripe::RequestParams
          # The ATM withdrawal fee.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :atm_fee
          # The amount of cash requested by the cardholder.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :cashback_amount
          sig { params(atm_fee: T.nilable(Integer), cashback_amount: T.nilable(Integer)).void }
          def initialize(atm_fee: nil, cashback_amount: nil); end
        end
        class Fleet < Stripe::RequestParams
          class CardholderPromptData < Stripe::RequestParams
            # Driver ID.
            sig { returns(T.nilable(String)) }
            attr_accessor :driver_id
            # Odometer reading.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :odometer
            # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
            sig { returns(T.nilable(String)) }
            attr_accessor :unspecified_id
            # User ID.
            sig { returns(T.nilable(String)) }
            attr_accessor :user_id
            # Vehicle number.
            sig { returns(T.nilable(String)) }
            attr_accessor :vehicle_number
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
              attr_accessor :gross_amount_decimal
              sig { params(gross_amount_decimal: T.nilable(String)).void }
              def initialize(gross_amount_decimal: nil); end
            end
            class NonFuel < Stripe::RequestParams
              # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
              sig { returns(T.nilable(String)) }
              attr_accessor :gross_amount_decimal
              sig { params(gross_amount_decimal: T.nilable(String)).void }
              def initialize(gross_amount_decimal: nil); end
            end
            class Tax < Stripe::RequestParams
              # Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
              sig { returns(T.nilable(String)) }
              attr_accessor :local_amount_decimal
              # Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
              sig { returns(T.nilable(String)) }
              attr_accessor :national_amount_decimal
              sig {
                params(local_amount_decimal: T.nilable(String), national_amount_decimal: T.nilable(String)).void
               }
              def initialize(local_amount_decimal: nil, national_amount_decimal: nil); end
            end
            # Breakdown of fuel portion of the purchase.
            sig {
              returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::Fuel))
             }
            attr_accessor :fuel
            # Breakdown of non-fuel portion of the purchase.
            sig {
              returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::NonFuel))
             }
            attr_accessor :non_fuel
            # Information about tax included in this transaction.
            sig {
              returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::Tax))
             }
            attr_accessor :tax
            sig {
              params(fuel: T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::Fuel), non_fuel: T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::NonFuel), tax: T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown::Tax)).void
             }
            def initialize(fuel: nil, non_fuel: nil, tax: nil); end
          end
          # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::CardholderPromptData))
           }
          attr_accessor :cardholder_prompt_data
          # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
          sig { returns(T.nilable(String)) }
          attr_accessor :purchase_type
          # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet::ReportedBreakdown))
           }
          attr_accessor :reported_breakdown
          # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
          sig { returns(T.nilable(String)) }
          attr_accessor :service_type
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
          attr_accessor :industry_product_code
          # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
          sig { returns(T.nilable(String)) }
          attr_accessor :quantity_decimal
          # The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
          sig { returns(T.nilable(String)) }
          attr_accessor :type
          # The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`.
          sig { returns(T.nilable(String)) }
          attr_accessor :unit
          # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
          sig { returns(T.nilable(String)) }
          attr_accessor :unit_cost_decimal
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
          attr_accessor :category
          # City where the seller is located
          sig { returns(T.nilable(String)) }
          attr_accessor :city
          # Country where the seller is located
          sig { returns(T.nilable(String)) }
          attr_accessor :country
          # Name of the seller
          sig { returns(T.nilable(String)) }
          attr_accessor :name
          # Identifier assigned to the seller by the card network. Different card networks may assign different network_id fields to the same merchant.
          sig { returns(T.nilable(String)) }
          attr_accessor :network_id
          # Postal code where the seller is located
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code
          # State where the seller is located
          sig { returns(T.nilable(String)) }
          attr_accessor :state
          # An ID assigned by the seller to the location of the sale.
          sig { returns(T.nilable(String)) }
          attr_accessor :terminal_id
          # URL provided by the merchant on a 3DS request
          sig { returns(T.nilable(String)) }
          attr_accessor :url
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
          attr_accessor :acquiring_institution_id
          sig { params(acquiring_institution_id: T.nilable(String)).void }
          def initialize(acquiring_institution_id: nil); end
        end
        class VerificationData < Stripe::RequestParams
          class AuthenticationExemption < Stripe::RequestParams
            # The entity that requested the exemption, either the acquiring merchant or the Issuing user.
            sig { returns(String) }
            attr_accessor :claimed_by
            # The specific exemption claimed for this authorization.
            sig { returns(String) }
            attr_accessor :type
            sig { params(claimed_by: String, type: String).void }
            def initialize(claimed_by: nil, type: nil); end
          end
          class ThreeDSecure < Stripe::RequestParams
            # The outcome of the 3D Secure authentication request.
            sig { returns(String) }
            attr_accessor :result
            sig { params(result: String).void }
            def initialize(result: nil); end
          end
          # Whether the cardholder provided an address first line and if it matched the cardholder’s `billing.address.line1`.
          sig { returns(T.nilable(String)) }
          attr_accessor :address_line1_check
          # Whether the cardholder provided a postal code and if it matched the cardholder’s `billing.address.postal_code`.
          sig { returns(T.nilable(String)) }
          attr_accessor :address_postal_code_check
          # The exemption applied to this authorization.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::VerificationData::AuthenticationExemption))
           }
          attr_accessor :authentication_exemption
          # Whether the cardholder provided a CVC and if it matched Stripe’s record.
          sig { returns(T.nilable(String)) }
          attr_accessor :cvc_check
          # Whether the cardholder provided an expiry date and if it matched Stripe’s record.
          sig { returns(T.nilable(String)) }
          attr_accessor :expiry_check
          # 3D Secure details.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::VerificationData::ThreeDSecure))
           }
          attr_accessor :three_d_secure
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
        attr_accessor :amount
        # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::AmountDetails)) }
        attr_accessor :amount_details
        # How the card details were provided. Defaults to online.
        sig { returns(T.nilable(String)) }
        attr_accessor :authorization_method
        # Card associated with this authorization.
        sig { returns(String) }
        attr_accessor :card
        # The currency of the authorization. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(T.nilable(String)) }
        attr_accessor :currency
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Fleet-specific information for authorizations using Fleet cards.
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fleet)) }
        attr_accessor :fleet
        # Information about fuel that was purchased with this transaction.
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::Fuel)) }
        attr_accessor :fuel
        # If set `true`, you may provide [amount](https://stripe.com/docs/api/issuing/authorizations/approve#approve_issuing_authorization-amount) to control how much to hold for the authorization.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :is_amount_controllable
        # The total amount to attempt to authorize. This amount is in the provided merchant currency, and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :merchant_amount
        # The currency of the authorization. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(T.nilable(String)) }
        attr_accessor :merchant_currency
        # Details about the seller (grocery store, e-commerce website, etc.) where the card authorization happened.
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::MerchantData)) }
        attr_accessor :merchant_data
        # Details about the authorization, such as identifiers, set by the card network.
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::NetworkData)) }
        attr_accessor :network_data
        # Verifications that Stripe performed on information that the cardholder provided to the merchant.
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::CreateParams::VerificationData)) }
        attr_accessor :verification_data
        # The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`. Will populate as `null` when no digital wallet was utilized.
        sig { returns(T.nilable(String)) }
        attr_accessor :wallet
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
              attr_accessor :driver_id
              # Odometer reading.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :odometer
              # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
              sig { returns(T.nilable(String)) }
              attr_accessor :unspecified_id
              # User ID.
              sig { returns(T.nilable(String)) }
              attr_accessor :user_id
              # Vehicle number.
              sig { returns(T.nilable(String)) }
              attr_accessor :vehicle_number
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
                attr_accessor :gross_amount_decimal
                sig { params(gross_amount_decimal: T.nilable(String)).void }
                def initialize(gross_amount_decimal: nil); end
              end
              class NonFuel < Stripe::RequestParams
                # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
                sig { returns(T.nilable(String)) }
                attr_accessor :gross_amount_decimal
                sig { params(gross_amount_decimal: T.nilable(String)).void }
                def initialize(gross_amount_decimal: nil); end
              end
              class Tax < Stripe::RequestParams
                # Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
                sig { returns(T.nilable(String)) }
                attr_accessor :local_amount_decimal
                # Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
                sig { returns(T.nilable(String)) }
                attr_accessor :national_amount_decimal
                sig {
                  params(local_amount_decimal: T.nilable(String), national_amount_decimal: T.nilable(String)).void
                 }
                def initialize(local_amount_decimal: nil, national_amount_decimal: nil); end
              end
              # Breakdown of fuel portion of the purchase.
              sig {
                returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel))
               }
              attr_accessor :fuel
              # Breakdown of non-fuel portion of the purchase.
              sig {
                returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel))
               }
              attr_accessor :non_fuel
              # Information about tax included in this transaction.
              sig {
                returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax))
               }
              attr_accessor :tax
              sig {
                params(fuel: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Fuel), non_fuel: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::NonFuel), tax: T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown::Tax)).void
               }
              def initialize(fuel: nil, non_fuel: nil, tax: nil); end
            end
            # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
            sig {
              returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::CardholderPromptData))
             }
            attr_accessor :cardholder_prompt_data
            # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
            sig { returns(T.nilable(String)) }
            attr_accessor :purchase_type
            # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
            sig {
              returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet::ReportedBreakdown))
             }
            attr_accessor :reported_breakdown
            # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
            sig { returns(T.nilable(String)) }
            attr_accessor :service_type
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
              attr_accessor :arrival_airport_code
              # The airline carrier code.
              sig { returns(T.nilable(String)) }
              attr_accessor :carrier
              # The three-letter IATA airport code that the flight departed from.
              sig { returns(T.nilable(String)) }
              attr_accessor :departure_airport_code
              # The flight number.
              sig { returns(T.nilable(String)) }
              attr_accessor :flight_number
              # The flight's service class.
              sig { returns(T.nilable(String)) }
              attr_accessor :service_class
              # Whether a stopover is allowed on this flight.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :stopover_allowed
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
            attr_accessor :departure_at
            # The name of the passenger.
            sig { returns(T.nilable(String)) }
            attr_accessor :passenger_name
            # Whether the ticket is refundable.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :refundable
            # The legs of the trip.
            sig {
              returns(T.nilable(T::Array[::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Flight::Segment]))
             }
            attr_accessor :segments
            # The travel agency that issued the ticket.
            sig { returns(T.nilable(String)) }
            attr_accessor :travel_agency
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
            attr_accessor :industry_product_code
            # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
            sig { returns(T.nilable(String)) }
            attr_accessor :quantity_decimal
            # The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
            sig { returns(T.nilable(String)) }
            attr_accessor :type
            # The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`.
            sig { returns(T.nilable(String)) }
            attr_accessor :unit
            # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
            sig { returns(T.nilable(String)) }
            attr_accessor :unit_cost_decimal
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
            attr_accessor :check_in_at
            # The number of nights stayed at the lodging.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :nights
            sig { params(check_in_at: T.nilable(Integer), nights: T.nilable(Integer)).void }
            def initialize(check_in_at: nil, nights: nil); end
          end
          class Receipt < Stripe::RequestParams
            # Attribute for param field description
            sig { returns(T.nilable(String)) }
            attr_accessor :description
            # Attribute for param field quantity
            sig { returns(T.nilable(String)) }
            attr_accessor :quantity
            # Attribute for param field total
            sig { returns(T.nilable(Integer)) }
            attr_accessor :total
            # Attribute for param field unit_cost
            sig { returns(T.nilable(Integer)) }
            attr_accessor :unit_cost
            sig {
              params(description: T.nilable(String), quantity: T.nilable(String), total: T.nilable(Integer), unit_cost: T.nilable(Integer)).void
             }
            def initialize(description: nil, quantity: nil, total: nil, unit_cost: nil); end
          end
          # Fleet-specific information for transactions using Fleet cards.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fleet))
           }
          attr_accessor :fleet
          # Information about the flight that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Flight))
           }
          attr_accessor :flight
          # Information about fuel that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Fuel))
           }
          attr_accessor :fuel
          # Information about lodging that was purchased with this transaction.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Lodging))
           }
          attr_accessor :lodging
          # The line items in the purchase.
          sig {
            returns(T.nilable(T::Array[::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails::Receipt]))
           }
          attr_accessor :receipt
          # A merchant-specific order number.
          sig { returns(T.nilable(String)) }
          attr_accessor :reference
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
        attr_accessor :capture_amount
        # Whether to close the authorization after capture. Defaults to true. Set to false to enable multi-capture flows.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :close_authorization
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Additional purchase information that is optionally provided by the merchant.
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::CaptureParams::PurchaseDetails)) }
        attr_accessor :purchase_details
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
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class FinalizeAmountParams < Stripe::RequestParams
        class Fleet < Stripe::RequestParams
          class CardholderPromptData < Stripe::RequestParams
            # Driver ID.
            sig { returns(T.nilable(String)) }
            attr_accessor :driver_id
            # Odometer reading.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :odometer
            # An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
            sig { returns(T.nilable(String)) }
            attr_accessor :unspecified_id
            # User ID.
            sig { returns(T.nilable(String)) }
            attr_accessor :user_id
            # Vehicle number.
            sig { returns(T.nilable(String)) }
            attr_accessor :vehicle_number
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
              attr_accessor :gross_amount_decimal
              sig { params(gross_amount_decimal: T.nilable(String)).void }
              def initialize(gross_amount_decimal: nil); end
            end
            class NonFuel < Stripe::RequestParams
              # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
              sig { returns(T.nilable(String)) }
              attr_accessor :gross_amount_decimal
              sig { params(gross_amount_decimal: T.nilable(String)).void }
              def initialize(gross_amount_decimal: nil); end
            end
            class Tax < Stripe::RequestParams
              # Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
              sig { returns(T.nilable(String)) }
              attr_accessor :local_amount_decimal
              # Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
              sig { returns(T.nilable(String)) }
              attr_accessor :national_amount_decimal
              sig {
                params(local_amount_decimal: T.nilable(String), national_amount_decimal: T.nilable(String)).void
               }
              def initialize(local_amount_decimal: nil, national_amount_decimal: nil); end
            end
            # Breakdown of fuel portion of the purchase.
            sig {
              returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::Fuel))
             }
            attr_accessor :fuel
            # Breakdown of non-fuel portion of the purchase.
            sig {
              returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::NonFuel))
             }
            attr_accessor :non_fuel
            # Information about tax included in this transaction.
            sig {
              returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::Tax))
             }
            attr_accessor :tax
            sig {
              params(fuel: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::Fuel), non_fuel: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::NonFuel), tax: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown::Tax)).void
             }
            def initialize(fuel: nil, non_fuel: nil, tax: nil); end
          end
          # Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::CardholderPromptData))
           }
          attr_accessor :cardholder_prompt_data
          # The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
          sig { returns(T.nilable(String)) }
          attr_accessor :purchase_type
          # More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
          sig {
            returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet::ReportedBreakdown))
           }
          attr_accessor :reported_breakdown
          # The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
          sig { returns(T.nilable(String)) }
          attr_accessor :service_type
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
          attr_accessor :industry_product_code
          # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
          sig { returns(T.nilable(String)) }
          attr_accessor :quantity_decimal
          # The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
          sig { returns(T.nilable(String)) }
          attr_accessor :type
          # The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`.
          sig { returns(T.nilable(String)) }
          attr_accessor :unit
          # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
          sig { returns(T.nilable(String)) }
          attr_accessor :unit_cost_decimal
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
        attr_accessor :expand
        # The final authorization amount that will be captured by the merchant. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(Integer) }
        attr_accessor :final_amount
        # Fleet-specific information for authorizations using Fleet cards.
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet)) }
        attr_accessor :fleet
        # Information about fuel that was purchased with this transaction.
        sig { returns(T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fuel)) }
        attr_accessor :fuel
        sig {
          params(expand: T.nilable(T::Array[String]), final_amount: Integer, fleet: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fleet), fuel: T.nilable(::Stripe::Issuing::Authorization::FinalizeAmountParams::Fuel)).void
         }
        def initialize(expand: nil, final_amount: nil, fleet: nil, fuel: nil); end
      end
      class RespondParams < Stripe::RequestParams
        # Whether to simulate the user confirming that the transaction was legitimate (true) or telling Stripe that it was fraudulent (false).
        sig { returns(T::Boolean) }
        attr_accessor :confirmed
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(confirmed: T::Boolean, expand: T.nilable(T::Array[String])).void }
        def initialize(confirmed: nil, expand: nil); end
      end
      class IncrementParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The amount to increment the authorization by. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(Integer) }
        attr_accessor :increment_amount
        # If set `true`, you may provide [amount](https://stripe.com/docs/api/issuing/authorizations/approve#approve_issuing_authorization-amount) to control how much to hold for the authorization.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :is_amount_controllable
        sig {
          params(expand: T.nilable(T::Array[String]), increment_amount: Integer, is_amount_controllable: T.nilable(T::Boolean)).void
         }
        def initialize(expand: nil, increment_amount: nil, is_amount_controllable: nil); end
      end
      class ReverseParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The amount to reverse from the authorization. If not provided, the full amount of the authorization will be reversed. This amount is in the authorization currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :reverse_amount
        sig { params(expand: T.nilable(T::Array[String]), reverse_amount: T.nilable(Integer)).void }
        def initialize(expand: nil, reverse_amount: nil); end
      end
      # [Deprecated] Approves a pending Issuing Authorization object. This request should be made within the timeout window of the [real-time authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to approve an authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      sig {
        params(params: T.any(::Stripe::Issuing::Authorization::ApproveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Authorization)
       }
      def approve(params = {}, opts = {}); end

      # [Deprecated] Approves a pending Issuing Authorization object. This request should be made within the timeout window of the [real-time authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to approve an authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      sig {
        params(authorization: String, params: T.any(::Stripe::Issuing::Authorization::ApproveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Authorization)
       }
      def self.approve(authorization, params = {}, opts = {}); end

      # [Deprecated] Declines a pending Issuing Authorization object. This request should be made within the timeout window of the [real time authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to decline an authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      sig {
        params(params: T.any(::Stripe::Issuing::Authorization::DeclineParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Authorization)
       }
      def decline(params = {}, opts = {}); end

      # [Deprecated] Declines a pending Issuing Authorization object. This request should be made within the timeout window of the [real time authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to decline an authorization](https://stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
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