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
        sig { returns(T.nilable(Integer)) }
        attr_reader :atm_fee
        sig { returns(T.nilable(Integer)) }
        attr_reader :cashback_amount
      end
      class Fleet < Stripe::StripeObject
        class CardholderPromptData < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :alphanumeric_id
          sig { returns(T.nilable(String)) }
          attr_reader :driver_id
          sig { returns(T.nilable(Integer)) }
          attr_reader :odometer
          sig { returns(T.nilable(String)) }
          attr_reader :unspecified_id
          sig { returns(T.nilable(String)) }
          attr_reader :user_id
          sig { returns(T.nilable(String)) }
          attr_reader :vehicle_number
        end
        class ReportedBreakdown < Stripe::StripeObject
          class Fuel < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :gross_amount_decimal
          end
          class NonFuel < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :gross_amount_decimal
          end
          class Tax < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :local_amount_decimal
            sig { returns(T.nilable(String)) }
            attr_reader :national_amount_decimal
          end
          sig { returns(T.nilable(Fuel)) }
          attr_reader :fuel
          sig { returns(T.nilable(NonFuel)) }
          attr_reader :non_fuel
          sig { returns(T.nilable(Tax)) }
          attr_reader :tax
        end
        sig { returns(T.nilable(CardholderPromptData)) }
        attr_reader :cardholder_prompt_data
        sig { returns(T.nilable(String)) }
        attr_reader :purchase_type
        sig { returns(T.nilable(ReportedBreakdown)) }
        attr_reader :reported_breakdown
        sig { returns(T.nilable(String)) }
        attr_reader :service_type
      end
      class FraudChallenge < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :channel
        sig { returns(String) }
        attr_reader :status
        sig { returns(T.nilable(String)) }
        attr_reader :undeliverable_reason
      end
      class Fuel < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :industry_product_code
        sig { returns(T.nilable(String)) }
        attr_reader :quantity_decimal
        sig { returns(T.nilable(String)) }
        attr_reader :type
        sig { returns(T.nilable(String)) }
        attr_reader :unit
        sig { returns(T.nilable(String)) }
        attr_reader :unit_cost_decimal
      end
      class MerchantData < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :category
        sig { returns(String) }
        attr_reader :category_code
        sig { returns(T.nilable(String)) }
        attr_reader :city
        sig { returns(T.nilable(String)) }
        attr_reader :country
        sig { returns(T.nilable(String)) }
        attr_reader :name
        sig { returns(String) }
        attr_reader :network_id
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code
        sig { returns(T.nilable(String)) }
        attr_reader :state
        sig { returns(T.nilable(String)) }
        attr_reader :tax_id
        sig { returns(T.nilable(String)) }
        attr_reader :terminal_id
        sig { returns(T.nilable(String)) }
        attr_reader :url
      end
      class NetworkData < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :acquiring_institution_id
        sig { returns(T.nilable(String)) }
        attr_reader :system_trace_audit_number
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_id
      end
      class PendingRequest < Stripe::StripeObject
        class AmountDetails < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :atm_fee
          sig { returns(T.nilable(Integer)) }
          attr_reader :cashback_amount
        end
        sig { returns(Integer) }
        attr_reader :amount
        sig { returns(T.nilable(AmountDetails)) }
        attr_reader :amount_details
        sig { returns(String) }
        attr_reader :currency
        sig { returns(T::Boolean) }
        attr_reader :is_amount_controllable
        sig { returns(Integer) }
        attr_reader :merchant_amount
        sig { returns(String) }
        attr_reader :merchant_currency
        sig { returns(T.nilable(Integer)) }
        attr_reader :network_risk_score
      end
      class RequestHistory < Stripe::StripeObject
        class AmountDetails < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :atm_fee
          sig { returns(T.nilable(Integer)) }
          attr_reader :cashback_amount
        end
        sig { returns(Integer) }
        attr_reader :amount
        sig { returns(T.nilable(AmountDetails)) }
        attr_reader :amount_details
        sig { returns(T::Boolean) }
        attr_reader :approved
        sig { returns(T.nilable(String)) }
        attr_reader :authorization_code
        sig { returns(Integer) }
        attr_reader :created
        sig { returns(String) }
        attr_reader :currency
        sig { returns(Integer) }
        attr_reader :merchant_amount
        sig { returns(String) }
        attr_reader :merchant_currency
        sig { returns(T.nilable(Integer)) }
        attr_reader :network_risk_score
        sig { returns(String) }
        attr_reader :reason
        sig { returns(T.nilable(String)) }
        attr_reader :reason_message
        sig { returns(T.nilable(Integer)) }
        attr_reader :requested_at
      end
      class Treasury < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :received_credits
        sig { returns(T::Array[String]) }
        attr_reader :received_debits
        sig { returns(T.nilable(String)) }
        attr_reader :transaction
      end
      class VerificationData < Stripe::StripeObject
        class AuthenticationExemption < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :claimed_by
          sig { returns(String) }
          attr_reader :type
        end
        class ThreeDSecure < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :result
        end
        sig { returns(String) }
        attr_reader :address_line1_check
        sig { returns(String) }
        attr_reader :address_postal_code_check
        sig { returns(T.nilable(AuthenticationExemption)) }
        attr_reader :authentication_exemption
        sig { returns(String) }
        attr_reader :cvc_check
        sig { returns(String) }
        attr_reader :expiry_check
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code
        sig { returns(T.nilable(ThreeDSecure)) }
        attr_reader :three_d_secure
      end
      sig { returns(Integer) }
      # The total amount that was authorized or rejected. This amount is in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). `amount` should be the same as `merchant_amount`, unless `currency` and `merchant_currency` are different.
      attr_reader :amount
      sig { returns(T.nilable(AmountDetails)) }
      # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
      attr_reader :amount_details
      sig { returns(T::Boolean) }
      # Whether the authorization has been approved.
      attr_reader :approved
      sig { returns(String) }
      # How the card details were provided.
      attr_reader :authorization_method
      sig { returns(T::Array[Stripe::BalanceTransaction]) }
      # List of balance transactions associated with this authorization.
      attr_reader :balance_transactions
      sig { returns(Stripe::Issuing::Card) }
      # You can [create physical or virtual cards](https://stripe.com/docs/issuing) that are issued to cardholders.
      attr_reader :card
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Cardholder))) }
      # The cardholder to whom this authorization belongs.
      attr_reader :cardholder
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # The currency of the cardholder. This currency can be different from the currency presented at authorization and the `merchant_currency` field on this authorization. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      sig { returns(T.nilable(Fleet)) }
      # Fleet-specific information for authorizations using Fleet cards.
      attr_reader :fleet
      sig { returns(T.nilable(T::Array[FraudChallenge])) }
      # Fraud challenges sent to the cardholder, if this authorization was declined for fraud risk reasons.
      attr_reader :fraud_challenges
      sig { returns(T.nilable(Fuel)) }
      # Information about fuel that was purchased with this transaction. Typically this information is received from the merchant after the authorization has been approved and the fuel dispensed.
      attr_reader :fuel
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(Integer) }
      # The total amount that was authorized or rejected. This amount is in the `merchant_currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). `merchant_amount` should be the same as `amount`, unless `merchant_currency` and `currency` are different.
      attr_reader :merchant_amount
      sig { returns(String) }
      # The local currency that was presented to the cardholder for the authorization. This currency can be different from the cardholder currency and the `currency` field on this authorization. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :merchant_currency
      sig { returns(MerchantData) }
      # Attribute for field merchant_data
      attr_reader :merchant_data
      sig { returns(T::Hash[String, String]) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(T.nilable(NetworkData)) }
      # Details about the authorization, such as identifiers, set by the card network.
      attr_reader :network_data
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(PendingRequest)) }
      # The pending authorization request. This field will only be non-null during an `issuing_authorization.request` webhook.
      attr_reader :pending_request
      sig { returns(T::Array[RequestHistory]) }
      # History of every time a `pending_request` authorization was approved/declined, either by you directly or by Stripe (e.g. based on your spending_controls). If the merchant changes the authorization by performing an incremental authorization, you can look at this field to see the previous requests for the authorization. This field can be helpful in determining why a given authorization was approved/declined.
      attr_reader :request_history
      sig { returns(String) }
      # The current status of the authorization in its lifecycle.
      attr_reader :status
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Token))) }
      # [Token](https://stripe.com/docs/api/issuing/tokens/object) object used for this authorization. If a network token was not used for this authorization, this field will be null.
      attr_reader :token
      sig { returns(T::Array[Stripe::Issuing::Transaction]) }
      # List of [transactions](https://stripe.com/docs/api/issuing/transactions) associated with this authorization.
      attr_reader :transactions
      sig { returns(T.nilable(Treasury)) }
      # [Treasury](https://stripe.com/docs/api/treasury) details related to this authorization if it was created on a [FinancialAccount](https://stripe.com/docs/api/treasury/financial_accounts).
      attr_reader :treasury
      sig { returns(VerificationData) }
      # Attribute for field verification_data
      attr_reader :verification_data
      sig { returns(T.nilable(T::Boolean)) }
      # Whether the authorization bypassed fraud risk checks because the cardholder has previously completed a fraud challenge on a similar high-risk authorization from the same merchant.
      attr_reader :verified_by_fraud_challenge
      sig { returns(T.nilable(String)) }
      # The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`. Will populate as `null` when no digital wallet was utilized.
      attr_reader :wallet
    end
  end
end