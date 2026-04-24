# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # When an [issued card](https://docs.stripe.com/issuing) is used to make a purchase, an Issuing `Authorization`
    # object is created. [Authorizations](https://docs.stripe.com/issuing/purchases/authorizations) must be approved for the
    # purchase to be completed successfully.
    #
    # Related guide: [Issued card authorizations](https://docs.stripe.com/issuing/purchases/authorizations)
    class Authorization < APIResource
      class AmountDetails < ::Stripe::StripeObject
        # The fee charged by the ATM for the cash withdrawal.
        sig { returns(T.nilable(Integer)) }
        def atm_fee; end
        # The amount of cash requested by the cardholder.
        sig { returns(T.nilable(Integer)) }
        def cashback_amount; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class CryptoTransaction < ::Stripe::StripeObject
        class CryptoTransactionConfirmed < ::Stripe::StripeObject
          class Fee < ::Stripe::StripeObject
            # The fee amount.
            sig { returns(String) }
            def amount; end
            # The fee currency.
            sig { returns(String) }
            def currency; end
            # The fee type.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The crypto amount for the confirmed transaction.
          sig { returns(String) }
          def amount; end
          # The upcharged MCC amount, if one was applied.
          sig { returns(T.nilable(String)) }
          def amount_mcc_upcharged; end
          # The blockchain network for the confirmed transaction.
          sig { returns(String) }
          def chain; end
          # When the transaction was confirmed onchain.
          sig { returns(Integer) }
          def confirmed_at; end
          # The currency of the crypto transaction amount.
          sig { returns(String) }
          def currency; end
          # Fees associated with the transaction.
          sig { returns(T::Array[Fee]) }
          def fees; end
          # The source wallet address for the transaction.
          sig { returns(String) }
          def from_address; end
          # Memo metadata attached to the transaction, if present.
          sig { returns(T.nilable(String)) }
          def memo; end
          # The destination wallet address for the transaction.
          sig { returns(String) }
          def to_address; end
          # The blockchain transaction hash.
          sig { returns(String) }
          def transaction_hash; end
          def self.inner_class_types
            @inner_class_types = {fees: Fee}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class CryptoTransactionFailed < ::Stripe::StripeObject
          class Fee < ::Stripe::StripeObject
            # The fee amount.
            sig { returns(String) }
            def amount; end
            # The fee currency.
            sig { returns(String) }
            def currency; end
            # The fee type.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The crypto amount for the failed transaction.
          sig { returns(String) }
          def amount; end
          # The upcharged MCC amount, if one was applied.
          sig { returns(T.nilable(String)) }
          def amount_mcc_upcharged; end
          # The blockchain network for the failed transaction.
          sig { returns(String) }
          def chain; end
          # The currency of the crypto transaction amount.
          sig { returns(String) }
          def currency; end
          # When the transaction failed.
          sig { returns(Integer) }
          def failed_at; end
          # The reason the transaction failed.
          sig { returns(String) }
          def failure_reason; end
          # Fees associated with the transaction.
          sig { returns(T::Array[Fee]) }
          def fees; end
          # The source wallet address for the attempted transaction.
          sig { returns(String) }
          def from_address; end
          # Memo metadata attached to the transaction, if present.
          sig { returns(T.nilable(String)) }
          def memo; end
          # The destination wallet address for the attempted transaction when one exists.
          sig { returns(T.nilable(String)) }
          def to_address; end
          # The blockchain transaction hash when one exists.
          sig { returns(T.nilable(String)) }
          def transaction_hash; end
          def self.inner_class_types
            @inner_class_types = {fees: Fee}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The confirmed crypto transaction details when `type` is `crypto_transaction_confirmed`; otherwise null.
        sig { returns(T.nilable(CryptoTransactionConfirmed)) }
        def crypto_transaction_confirmed; end
        # The failed crypto transaction details when `type` is `crypto_transaction_failed`; otherwise null.
        sig { returns(T.nilable(CryptoTransactionFailed)) }
        def crypto_transaction_failed; end
        # The crypto transaction variant for this array entry.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {
            crypto_transaction_confirmed: CryptoTransactionConfirmed,
            crypto_transaction_failed: CryptoTransactionFailed,
          }
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Fleet < ::Stripe::StripeObject
        class CardholderPromptData < ::Stripe::StripeObject
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
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class ReportedBreakdown < ::Stripe::StripeObject
          class Fuel < ::Stripe::StripeObject
            # Gross fuel amount that should equal Fuel Quantity multiplied by Fuel Unit Cost, inclusive of taxes.
            sig { returns(T.nilable(BigDecimal)) }
            def gross_amount_decimal; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {gross_amount_decimal: :decimal_string}
            end
          end
          class NonFuel < ::Stripe::StripeObject
            # Gross non-fuel amount that should equal the sum of the line items, inclusive of taxes.
            sig { returns(T.nilable(BigDecimal)) }
            def gross_amount_decimal; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {gross_amount_decimal: :decimal_string}
            end
          end
          class Tax < ::Stripe::StripeObject
            # Amount of state or provincial Sales Tax included in the transaction amount. `null` if not reported by merchant or not subject to tax.
            sig { returns(T.nilable(BigDecimal)) }
            def local_amount_decimal; end
            # Amount of national Sales Tax or VAT included in the transaction amount. `null` if not reported by merchant or not subject to tax.
            sig { returns(T.nilable(BigDecimal)) }
            def national_amount_decimal; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {
                local_amount_decimal: :decimal_string,
                national_amount_decimal: :decimal_string,
              }
            end
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
          def self.inner_class_types
            @inner_class_types = {fuel: Fuel, non_fuel: NonFuel, tax: Tax}
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {
              fuel: {kind: :object, fields: {gross_amount_decimal: :decimal_string}},
              non_fuel: {kind: :object, fields: {gross_amount_decimal: :decimal_string}},
              tax: {
                kind: :object,
                fields: {
                  local_amount_decimal: :decimal_string,
                  national_amount_decimal: :decimal_string,
                },
              },
            }
          end
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
        def self.inner_class_types
          @inner_class_types = {
            cardholder_prompt_data: CardholderPromptData,
            reported_breakdown: ReportedBreakdown,
          }
        end
        def self.field_remappings
          @field_remappings = {}
        end
        def self.field_encodings
          @field_encodings = {
            reported_breakdown: {
              kind: :object,
              fields: {
                fuel: {kind: :object, fields: {gross_amount_decimal: :decimal_string}},
                non_fuel: {kind: :object, fields: {gross_amount_decimal: :decimal_string}},
                tax: {
                  kind: :object,
                  fields: {
                    local_amount_decimal: :decimal_string,
                    national_amount_decimal: :decimal_string,
                  },
                },
              },
            },
          }
        end
      end
      class FraudChallenge < ::Stripe::StripeObject
        # The method by which the fraud challenge was delivered to the cardholder.
        sig { returns(String) }
        def channel; end
        # The status of the fraud challenge.
        sig { returns(String) }
        def status; end
        # If the challenge is not deliverable, the reason why.
        sig { returns(T.nilable(String)) }
        def undeliverable_reason; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Fuel < ::Stripe::StripeObject
        # [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
        sig { returns(T.nilable(String)) }
        def industry_product_code; end
        # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
        sig { returns(T.nilable(BigDecimal)) }
        def quantity_decimal; end
        # The type of fuel that was purchased.
        sig { returns(T.nilable(String)) }
        def type; end
        # The units for `quantity_decimal`.
        sig { returns(T.nilable(String)) }
        def unit; end
        # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
        sig { returns(T.nilable(BigDecimal)) }
        def unit_cost_decimal; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
        def self.field_encodings
          @field_encodings = {quantity_decimal: :decimal_string, unit_cost_decimal: :decimal_string}
        end
      end
      class MerchantData < ::Stripe::StripeObject
        # A categorization of the seller's type of business. See our [merchant categories guide](https://docs.stripe.com/issuing/merchant-categories) for a list of possible values.
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
        # The identifier of the payment facilitator (PayFac) that processed this authorization, as assigned by the card network. Null when the transaction was not processed through a PayFac.
        sig { returns(T.nilable(String)) }
        def payment_facilitator_id; end
        # Postal code where the seller is located
        sig { returns(T.nilable(String)) }
        def postal_code; end
        # State where the seller is located
        sig { returns(T.nilable(String)) }
        def state; end
        # The identifier of the sub-merchant involved in this authorization, as assigned by the payment facilitator. Null when the transaction was not processed through a PayFac or when no sub-merchant ID was provided.
        sig { returns(T.nilable(String)) }
        def sub_merchant_id; end
        # The seller's tax identification number. Currently populated for French merchants only.
        sig { returns(T.nilable(String)) }
        def tax_id; end
        # An ID assigned by the seller to the location of the sale.
        sig { returns(T.nilable(String)) }
        def terminal_id; end
        # URL provided by the merchant on a 3DS request
        sig { returns(T.nilable(String)) }
        def url; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class NetworkData < ::Stripe::StripeObject
        # Identifier assigned to the acquirer by the card network. Sometimes this value is not provided by the network; in this case, the value will be `null`.
        sig { returns(T.nilable(String)) }
        def acquiring_institution_id; end
        # The System Trace Audit Number (STAN) is a 6-digit identifier assigned by the acquirer. Prefer `network_data.transaction_id` if present, unless you have special requirements.
        sig { returns(T.nilable(String)) }
        def system_trace_audit_number; end
        # Unique identifier for the authorization assigned by the card network used to match subsequent messages, disputes, and transactions.
        sig { returns(T.nilable(String)) }
        def transaction_id; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class PendingRequest < ::Stripe::StripeObject
        class AmountDetails < ::Stripe::StripeObject
          # The fee charged by the ATM for the cash withdrawal.
          sig { returns(T.nilable(Integer)) }
          def atm_fee; end
          # The amount of cash requested by the cardholder.
          sig { returns(T.nilable(Integer)) }
          def cashback_amount; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The additional amount Stripe will hold if the authorization is approved, in the card's [currency](https://docs.stripe.com/api#issuing_authorization_object-pending-request-currency) and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
        sig { returns(Integer) }
        def amount; end
        # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
        sig { returns(T.nilable(AmountDetails)) }
        def amount_details; end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        # If set `true`, you may provide [amount](https://docs.stripe.com/api/issuing/authorizations/approve#approve_issuing_authorization-amount) to control how much to hold for the authorization.
        sig { returns(T::Boolean) }
        def is_amount_controllable; end
        # The amount the merchant is requesting to be authorized in the `merchant_currency`. The amount is in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
        sig { returns(Integer) }
        def merchant_amount; end
        # The local currency the merchant is requesting to authorize.
        sig { returns(String) }
        def merchant_currency; end
        # The card network's estimate of the likelihood that an authorization is fraudulent. Takes on values between 1 and 99.
        sig { returns(T.nilable(Integer)) }
        def network_risk_score; end
        def self.inner_class_types
          @inner_class_types = {amount_details: AmountDetails}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class RequestHistory < ::Stripe::StripeObject
        class AmountDetails < ::Stripe::StripeObject
          # The fee charged by the ATM for the cash withdrawal.
          sig { returns(T.nilable(Integer)) }
          def atm_fee; end
          # The amount of cash requested by the cardholder.
          sig { returns(T.nilable(Integer)) }
          def cashback_amount; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The `pending_request.amount` at the time of the request, presented in your card's currency and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). Stripe held this amount from your account to fund the authorization if the request was approved.
        sig { returns(Integer) }
        def amount; end
        # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
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
        # The `pending_request.merchant_amount` at the time of the request, presented in the `merchant_currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
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
        def self.inner_class_types
          @inner_class_types = {amount_details: AmountDetails}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class TokenDetails < ::Stripe::StripeObject
        class NetworkData < ::Stripe::StripeObject
          class Device < ::Stripe::StripeObject
            # The IP address of the device at provisioning time.
            sig { returns(T.nilable(String)) }
            def ip_address; end
            # The ISO 639-1 language code of the device associated with the tokenization request.
            sig { returns(T.nilable(String)) }
            def language; end
            # The phone number of the device used for tokenization.
            sig { returns(T.nilable(String)) }
            def phone_number; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Mastercard < ::Stripe::StripeObject
            # A unique reference ID from the network to represent the card account number.
            sig { returns(T.nilable(String)) }
            def card_reference_id; end
            # The network-unique identifier for the token.
            sig { returns(String) }
            def token_reference_id; end
            # The ID of the entity requesting tokenization.
            sig { returns(String) }
            def token_requestor_id; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Visa < ::Stripe::StripeObject
            # A unique reference ID from the network to represent the card account number.
            sig { returns(T.nilable(String)) }
            def card_reference_id; end
            # The network-unique identifier for the token.
            sig { returns(String) }
            def token_reference_id; end
            # The ID of the entity requesting tokenization.
            sig { returns(String) }
            def token_requestor_id; end
            # Degree of risk associated with the token between `01` and `99`, with higher number indicating higher risk. A `00` value indicates the token was not scored by Visa.
            sig { returns(T.nilable(String)) }
            def token_risk_score; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class WalletProvider < ::Stripe::StripeObject
            # An evaluation on the trustworthiness of the wallet account between 1 and 5. A higher score indicates more trustworthy.
            sig { returns(T.nilable(Integer)) }
            def account_trust_score; end
            # The method used for tokenizing a card.
            sig { returns(T.nilable(String)) }
            def card_number_source; end
            # An evaluation on the trustworthiness of the device. A higher score indicates more trustworthy.
            sig { returns(T.nilable(Integer)) }
            def device_trust_score; end
            # The reasons for suggested tokenization given by the card network.
            sig { returns(T.nilable(T::Array[String])) }
            def reason_codes; end
            # The recommendation on responding to the tokenization request.
            sig { returns(T.nilable(String)) }
            def suggested_decision; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Attribute for field device
          sig { returns(T.nilable(Device)) }
          def device; end
          # Attribute for field mastercard
          sig { returns(T.nilable(Mastercard)) }
          def mastercard; end
          # The card network for this token.
          sig { returns(String) }
          def type; end
          # Attribute for field visa
          sig { returns(T.nilable(Visa)) }
          def visa; end
          # Attribute for field wallet_provider
          sig { returns(T.nilable(WalletProvider)) }
          def wallet_provider; end
          def self.inner_class_types
            @inner_class_types = {
              device: Device,
              mastercard: Mastercard,
              visa: Visa,
              wallet_provider: WalletProvider,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The card associated with this token.
        sig { returns(String) }
        def card; end
        # Time at which the object was created. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        def created; end
        # The hashed ID derived from the device ID from the card network associated with the token.
        sig { returns(T.nilable(String)) }
        def device_fingerprint; end
        # Attribute for field network_data
        sig { returns(T.nilable(NetworkData)) }
        def network_data; end
        def self.inner_class_types
          @inner_class_types = {network_data: NetworkData}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Treasury < ::Stripe::StripeObject
        # The array of [ReceivedCredits](https://docs.stripe.com/api/treasury/received_credits) associated with this authorization
        sig { returns(T::Array[String]) }
        def received_credits; end
        # The array of [ReceivedDebits](https://docs.stripe.com/api/treasury/received_debits) associated with this authorization
        sig { returns(T::Array[String]) }
        def received_debits; end
        # The Treasury [Transaction](https://docs.stripe.com/api/treasury/transactions) associated with this authorization
        sig { returns(T.nilable(String)) }
        def transaction; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class VerificationData < ::Stripe::StripeObject
        class AuthenticationExemption < ::Stripe::StripeObject
          # The entity that requested the exemption, either the acquiring merchant or the Issuing user.
          sig { returns(String) }
          def claimed_by; end
          # The specific exemption claimed for this authorization.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class ThreeDSecure < ::Stripe::StripeObject
          # The outcome of the 3D Secure authentication request.
          sig { returns(String) }
          def result; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
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
        def self.inner_class_types
          @inner_class_types = {
            authentication_exemption: AuthenticationExemption,
            three_d_secure: ThreeDSecure,
          }
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The total amount that was authorized or rejected. This amount is in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). `amount` should be the same as `merchant_amount`, unless `currency` and `merchant_currency` are different.
      sig { returns(Integer) }
      def amount; end
      # Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
      sig { returns(T.nilable(AmountDetails)) }
      def amount_details; end
      # Whether the authorization has been approved.
      sig { returns(T::Boolean) }
      def approved; end
      # How the card details were provided.
      sig { returns(String) }
      def authorization_method; end
      # List of balance transactions associated with this authorization.
      sig { returns(T::Array[::Stripe::BalanceTransaction]) }
      def balance_transactions; end
      # You can [create physical or virtual cards](https://docs.stripe.com/issuing) that are issued to cardholders.
      sig { returns(::Stripe::Issuing::Card) }
      def card; end
      # The cardholder to whom this authorization belongs.
      sig { returns(T.nilable(T.any(String, ::Stripe::Issuing::Cardholder))) }
      def cardholder; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Array of onchain crypto transactions linked to this resource.
      sig { returns(T.nilable(T::Array[CryptoTransaction])) }
      def crypto_transactions; end
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
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
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
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
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
      # [Token](https://docs.stripe.com/api/issuing/tokens/object) object used for this authorization. If a network token was not used for this authorization, this field will be null.
      sig { returns(T.nilable(T.any(String, ::Stripe::Issuing::Token))) }
      def token; end
      # Attribute for field token_details
      sig { returns(T.nilable(TokenDetails)) }
      def token_details; end
      # List of [transactions](https://docs.stripe.com/api/issuing/transactions) associated with this authorization.
      sig { returns(T::Array[::Stripe::Issuing::Transaction]) }
      def transactions; end
      # [Treasury](https://docs.stripe.com/api/treasury) details related to this authorization if it was created on a [FinancialAccount](https://docs.stripe.com/api/treasury/financial_accounts).
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
      # [Deprecated] Approves a pending Issuing Authorization object. This request should be made within the timeout window of the [real-time authorization](https://docs.stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to approve an authorization](https://docs.stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      sig {
        params(params: T.any(::Stripe::Issuing::AuthorizationApproveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::Authorization)
       }
      def approve(params = {}, opts = {}); end

      # [Deprecated] Approves a pending Issuing Authorization object. This request should be made within the timeout window of the [real-time authorization](https://docs.stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to approve an authorization](https://docs.stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      sig {
        params(authorization: String, params: T.any(::Stripe::Issuing::AuthorizationApproveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::Authorization)
       }
      def self.approve(authorization, params = {}, opts = {}); end

      # [Deprecated] Declines a pending Issuing Authorization object. This request should be made within the timeout window of the [real time authorization](https://docs.stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to decline an authorization](https://docs.stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      sig {
        params(params: T.any(::Stripe::Issuing::AuthorizationDeclineParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::Authorization)
       }
      def decline(params = {}, opts = {}); end

      # [Deprecated] Declines a pending Issuing Authorization object. This request should be made within the timeout window of the [real time authorization](https://docs.stripe.com/docs/issuing/controls/real-time-authorizations) flow.
      # This method is deprecated. Instead, [respond directly to the webhook request to decline an authorization](https://docs.stripe.com/docs/issuing/controls/real-time-authorizations#authorization-handling).
      sig {
        params(authorization: String, params: T.any(::Stripe::Issuing::AuthorizationDeclineParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::Authorization)
       }
      def self.decline(authorization, params = {}, opts = {}); end

      # Returns a list of Issuing Authorization objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::AuthorizationListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Updates the specified Issuing Authorization object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      sig {
        params(authorization: String, params: T.any(::Stripe::Issuing::AuthorizationUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::Authorization)
       }
      def self.update(authorization, params = {}, opts = {}); end
    end
  end
end