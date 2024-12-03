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
    end
  end
end