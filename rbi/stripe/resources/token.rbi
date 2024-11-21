# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Tokenization is the process Stripe uses to collect sensitive card or bank
  # account details, or personally identifiable information (PII), directly from
  # your customers in a secure manner. A token representing this information is
  # returned to your server to use. Use our
  # [recommended payments integrations](https://stripe.com/docs/payments) to perform this process
  # on the client-side. This guarantees that no sensitive card data touches your server,
  # and allows your integration to operate in a PCI-compliant way.
  #
  # If you can't use client-side tokenization, you can also create tokens using
  # the API with either your publishable or secret API key. If
  # your integration uses this method, you're responsible for any PCI compliance
  # that it might require, and you must keep your secret API key safe. Unlike with
  # client-side tokenization, your customer's information isn't sent directly to
  # Stripe, so we can't determine how it's handled or stored.
  #
  # You can't store or use tokens more than once. To store card or bank account
  # information for later use, create [Customer](https://stripe.com/docs/api#customers)
  # objects or [External accounts](https://stripe.com/api#external_accounts).
  # [Radar](https://stripe.com/docs/radar), our integrated solution for automatic fraud protection,
  # performs best with integrations that use client-side tokenization.
  class Token < APIResource
    # These bank accounts are payment methods on `Customer` objects.
    #
    # On the other hand [External Accounts](/api#external_accounts) are transfer
    # destinations on `Account` objects for connected accounts.
    # They can be bank accounts or debit cards as well, and are documented in the links above.
    #
    # Related guide: [Bank debits and transfers](/payments/bank-debits-transfers)
    sig { returns(Stripe::BankAccount) }
    attr_reader :bank_account

    # You can store multiple cards on a customer in order to charge the customer
    # later. You can also store multiple debit cards on a recipient in order to
    # transfer to those cards later.
    #
    # Related guide: [Card payments with Sources](https://stripe.com/docs/sources/cards)
    sig { returns(Stripe::Card) }
    attr_reader :card

    # IP address of the client that generates the token.
    sig { returns(T.nilable(String)) }
    attr_reader :client_ip

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # Type of the token: `account`, `bank_account`, `card`, or `pii`.
    sig { returns(String) }
    attr_reader :type

    # Determines if you have already used this token (you can only use tokens once).
    sig { returns(T::Boolean) }
    attr_reader :used
  end
end