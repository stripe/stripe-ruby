# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # To top up your Stripe balance, you create a top-up object. You can retrieve
  # individual top-ups, as well as list all top-ups. Top-ups are identified by a
  # unique, random ID.
  #
  # Related guide: [Topping up your platform account](https://stripe.com/docs/connect/top-ups)
  class Topup < APIResource
    # Amount transferred.
    sig { returns(Integer) }
    attr_reader :amount

    # ID of the balance transaction that describes the impact of this top-up on your account balance. May not be specified depending on status of top-up.
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :balance_transaction

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency

    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    attr_reader :description

    # Date the funds are expected to arrive in your Stripe account for payouts. This factors in delays like weekends or bank holidays. May not be specified depending on status of top-up.
    sig { returns(T.nilable(Integer)) }
    attr_reader :expected_availability_date

    # Error code explaining reason for top-up failure if available (see [the errors section](https://stripe.com/docs/api#errors) for a list of codes).
    sig { returns(T.nilable(String)) }
    attr_reader :failure_code

    # Message to user further explaining reason for top-up failure if available.
    sig { returns(T.nilable(String)) }
    attr_reader :failure_message

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # The source field is deprecated. It might not always be present in the API response.
    sig { returns(T.nilable(Stripe::Source)) }
    attr_reader :source

    # Extra information about a top-up. This will appear on your source's bank statement. It must contain at least one letter.
    sig { returns(T.nilable(String)) }
    attr_reader :statement_descriptor

    # The status of the top-up is either `canceled`, `failed`, `pending`, `reversed`, or `succeeded`.
    sig { returns(String) }
    attr_reader :status

    # A string that identifies this top-up as part of a group.
    sig { returns(T.nilable(String)) }
    attr_reader :transfer_group
  end
end