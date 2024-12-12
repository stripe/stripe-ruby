# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # You can store multiple cards on a customer in order to charge the customer
  # later. You can also store multiple debit cards on a recipient in order to
  # transfer to those cards later.
  #
  # Related guide: [Card payments with Sources](https://stripe.com/docs/sources/cards)
  class Card < APIResource
    class Networks < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :preferred
    end
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    # The account this card belongs to. This attribute will not be in the card object if the card belongs to a customer or recipient instead. This property is only available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
    attr_reader :account
    sig { returns(T.nilable(String)) }
    # City/District/Suburb/Town/Village.
    attr_reader :address_city
    sig { returns(T.nilable(String)) }
    # Billing address country, if provided when creating card.
    attr_reader :address_country
    sig { returns(T.nilable(String)) }
    # Address line 1 (Street address/PO Box/Company name).
    attr_reader :address_line1
    sig { returns(T.nilable(String)) }
    # If `address_line1` was provided, results of the check: `pass`, `fail`, `unavailable`, or `unchecked`.
    attr_reader :address_line1_check
    sig { returns(T.nilable(String)) }
    # Address line 2 (Apartment/Suite/Unit/Building).
    attr_reader :address_line2
    sig { returns(T.nilable(String)) }
    # State/County/Province/Region.
    attr_reader :address_state
    sig { returns(T.nilable(String)) }
    # ZIP or postal code.
    attr_reader :address_zip
    sig { returns(T.nilable(String)) }
    # If `address_zip` was provided, results of the check: `pass`, `fail`, `unavailable`, or `unchecked`.
    attr_reader :address_zip_check
    sig { returns(T.nilable(String)) }
    # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
    attr_reader :allow_redisplay
    sig { returns(T.nilable(T::Array[String])) }
    # A set of available payout methods for this card. Only values from this set should be passed as the `method` when creating a payout.
    attr_reader :available_payout_methods
    sig { returns(String) }
    # Card brand. Can be `American Express`, `Diners Club`, `Discover`, `Eftpos Australia`, `Girocard`, `JCB`, `MasterCard`, `UnionPay`, `Visa`, or `Unknown`.
    attr_reader :brand
    sig { returns(T.nilable(String)) }
    # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
    attr_reader :country
    sig { returns(T.nilable(String)) }
    # Three-letter [ISO code for currency](https://www.iso.org/iso-4217-currency-codes.html) in lowercase. Must be a [supported currency](https://docs.stripe.com/currencies). Only applicable on accounts (not customers or recipients). The card can be used as a transfer destination for funds in this currency. This property is only available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
    attr_reader :currency
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    # The customer that this card belongs to. This attribute will not be in the card object if the card belongs to an account or recipient instead.
    attr_reader :customer
    sig { returns(T.nilable(String)) }
    # If a CVC was provided, results of the check: `pass`, `fail`, `unavailable`, or `unchecked`. A result of unchecked indicates that CVC was provided but hasn't been checked yet. Checks are typically performed when attaching a card to a Customer object, or when creating a charge. For more details, see [Check if a card is valid without a charge](https://support.stripe.com/questions/check-if-a-card-is-valid-without-a-charge).
    attr_reader :cvc_check
    sig { returns(T.nilable(T::Boolean)) }
    # Whether this card is the default external account for its currency. This property is only available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
    attr_reader :default_for_currency
    sig { returns(String) }
    # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
    attr_reader :description
    sig { returns(T.nilable(String)) }
    # (For tokenized numbers only.) The last four digits of the device account number.
    attr_reader :dynamic_last4
    sig { returns(Integer) }
    # Two-digit number representing the card's expiration month.
    attr_reader :exp_month
    sig { returns(Integer) }
    # Four-digit number representing the card's expiration year.
    attr_reader :exp_year
    sig { returns(T.nilable(String)) }
    # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
    #
    # *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
    attr_reader :fingerprint
    sig { returns(String) }
    # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
    attr_reader :funding
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(String) }
    # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
    attr_reader :iin
    sig { returns(String) }
    # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
    attr_reader :issuer
    sig { returns(String) }
    # The last four digits of the card.
    attr_reader :last4
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(T.nilable(String)) }
    # Cardholder name.
    attr_reader :name
    sig { returns(Networks) }
    # Attribute for field networks
    attr_reader :networks
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(String)) }
    # Status of a card based on the card issuer.
    attr_reader :regulated_status
    sig { returns(T.nilable(String)) }
    # For external accounts that are cards, possible values are `new` and `errored`. If a payout fails, the status is set to `errored` and [scheduled payouts](https://stripe.com/docs/payouts#payout-schedule) are stopped until account details are updated.
    attr_reader :status
    sig { returns(T.nilable(String)) }
    # If the card number is tokenized, this is the method that was used. Can be `android_pay` (includes Google Pay), `apple_pay`, `masterpass`, `visa_checkout`, or null.
    attr_reader :tokenization_method
    sig { returns(T::Boolean) }
    # Always true for a deleted object
    attr_reader :deleted
  end
end