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
      # The preferred network for co-branded cards. Can be `cartes_bancaires`, `mastercard`, `visa` or `invalid_preference` if requested network is not valid for the card.
      sig { returns(T.nilable(String)) }
      attr_reader :preferred
    end
    # Attribute for field account
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :account
    # City/District/Suburb/Town/Village.
    sig { returns(T.nilable(String)) }
    attr_reader :address_city
    # Billing address country, if provided when creating card.
    sig { returns(T.nilable(String)) }
    attr_reader :address_country
    # Address line 1 (Street address/PO Box/Company name).
    sig { returns(T.nilable(String)) }
    attr_reader :address_line1
    # If `address_line1` was provided, results of the check: `pass`, `fail`, `unavailable`, or `unchecked`.
    sig { returns(T.nilable(String)) }
    attr_reader :address_line1_check
    # Address line 2 (Apartment/Suite/Unit/Building).
    sig { returns(T.nilable(String)) }
    attr_reader :address_line2
    # State/County/Province/Region.
    sig { returns(T.nilable(String)) }
    attr_reader :address_state
    # ZIP or postal code.
    sig { returns(T.nilable(String)) }
    attr_reader :address_zip
    # If `address_zip` was provided, results of the check: `pass`, `fail`, `unavailable`, or `unchecked`.
    sig { returns(T.nilable(String)) }
    attr_reader :address_zip_check
    # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
    sig { returns(T.nilable(String)) }
    attr_reader :allow_redisplay
    # A set of available payout methods for this card. Only values from this set should be passed as the `method` when creating a payout.
    sig { returns(T.nilable(T::Array[String])) }
    attr_reader :available_payout_methods
    # Card brand. Can be `American Express`, `Diners Club`, `Discover`, `Eftpos Australia`, `Girocard`, `JCB`, `MasterCard`, `UnionPay`, `Visa`, or `Unknown`.
    sig { returns(String) }
    attr_reader :brand
    # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
    sig { returns(T.nilable(String)) }
    attr_reader :country
    # Three-letter [ISO code for currency](https://www.iso.org/iso-4217-currency-codes.html) in lowercase. Must be a [supported currency](https://docs.stripe.com/currencies). Only applicable on accounts (not customers or recipients). The card can be used as a transfer destination for funds in this currency. This property is only available when returned as an [External Account](/api/external_account_cards/object) where [controller.is_controller](/api/accounts/object#account_object-controller-is_controller) is `true`.
    sig { returns(T.nilable(String)) }
    attr_reader :currency
    # The customer that this card belongs to. This attribute will not be in the card object if the card belongs to an account or recipient instead.
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer
    # If a CVC was provided, results of the check: `pass`, `fail`, `unavailable`, or `unchecked`. A result of unchecked indicates that CVC was provided but hasn't been checked yet. Checks are typically performed when attaching a card to a Customer object, or when creating a charge. For more details, see [Check if a card is valid without a charge](https://support.stripe.com/questions/check-if-a-card-is-valid-without-a-charge).
    sig { returns(T.nilable(String)) }
    attr_reader :cvc_check
    # Whether this card is the default external account for its currency. This property is only available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts.
    sig { returns(T.nilable(T::Boolean)) }
    attr_reader :default_for_currency
    # A high-level description of the type of cards issued in this range. (For internal use only and not typically available in standard API requests.)
    sig { returns(String) }
    attr_reader :description
    # (For tokenized numbers only.) The last four digits of the device account number.
    sig { returns(T.nilable(String)) }
    attr_reader :dynamic_last4
    # Two-digit number representing the card's expiration month.
    sig { returns(Integer) }
    attr_reader :exp_month
    # Four-digit number representing the card's expiration year.
    sig { returns(Integer) }
    attr_reader :exp_year
    # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
    #
    # *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
    sig { returns(T.nilable(String)) }
    attr_reader :fingerprint
    # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
    sig { returns(String) }
    attr_reader :funding
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Issuer identification number of the card. (For internal use only and not typically available in standard API requests.)
    sig { returns(String) }
    attr_reader :iin
    # The name of the card's issuing bank. (For internal use only and not typically available in standard API requests.)
    sig { returns(String) }
    attr_reader :issuer
    # The last four digits of the card.
    sig { returns(String) }
    attr_reader :last4
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata
    # Cardholder name.
    sig { returns(T.nilable(String)) }
    attr_reader :name
    # Attribute for field networks
    sig { returns(Networks) }
    attr_reader :networks
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Status of a card based on the card issuer.
    sig { returns(T.nilable(String)) }
    attr_reader :regulated_status
    # For external accounts that are cards, possible values are `new` and `errored`. If a payout fails, the status is set to `errored` and [scheduled payouts](https://stripe.com/docs/payouts#payout-schedule) are stopped until account details are updated.
    sig { returns(T.nilable(String)) }
    attr_reader :status
    # If the card number is tokenized, this is the method that was used. Can be `android_pay` (includes Google Pay), `apple_pay`, `masterpass`, `visa_checkout`, or null.
    sig { returns(T.nilable(String)) }
    attr_reader :tokenization_method
    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end