# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # To top up your Stripe balance, you create a top-up object. You can retrieve
  # individual top-ups, as well as list all top-ups. Top-ups are identified by a
  # unique, random ID.
  #
  # Related guide: [Topping up your platform account](https://stripe.com/docs/connect/top-ups)
  class Topup < APIResource
    sig { returns(Integer) }
    # Amount transferred.
    attr_reader :amount
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    # ID of the balance transaction that describes the impact of this top-up on your account balance. May not be specified depending on status of top-up.
    attr_reader :balance_transaction
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T.nilable(String)) }
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    sig { returns(T.nilable(Integer)) }
    # Date the funds are expected to arrive in your Stripe account for payouts. This factors in delays like weekends or bank holidays. May not be specified depending on status of top-up.
    attr_reader :expected_availability_date
    sig { returns(T.nilable(String)) }
    # Error code explaining reason for top-up failure if available (see [the errors section](https://stripe.com/docs/api#errors) for a list of codes).
    attr_reader :failure_code
    sig { returns(T.nilable(String)) }
    # Message to user further explaining reason for top-up failure if available.
    attr_reader :failure_message
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T::Hash[String, String]) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(Stripe::Source)) }
    # The source field is deprecated. It might not always be present in the API response.
    attr_reader :source
    sig { returns(T.nilable(String)) }
    # Extra information about a top-up. This will appear on your source's bank statement. It must contain at least one letter.
    attr_reader :statement_descriptor
    sig { returns(String) }
    # The status of the top-up is either `canceled`, `failed`, `pending`, `reversed`, or `succeeded`.
    attr_reader :status
    sig { returns(T.nilable(String)) }
    # A string that identifies this top-up as part of a group.
    attr_reader :transfer_group
  end
end