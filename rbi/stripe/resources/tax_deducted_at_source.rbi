# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class TaxDeductedAtSource < APIResource
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(Integer) }
    # The end of the invoicing period. This TDS applies to Stripe fees collected during this invoicing period.
    attr_reader :period_end
    sig { returns(Integer) }
    # The start of the invoicing period. This TDS applies to Stripe fees collected during this invoicing period.
    attr_reader :period_start
    sig { returns(String) }
    # The TAN that was supplied to Stripe when TDS was assessed
    attr_reader :tax_deduction_account_number
  end
end