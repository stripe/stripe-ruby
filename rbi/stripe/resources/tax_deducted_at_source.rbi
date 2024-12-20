# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class TaxDeductedAtSource < APIResource
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # The end of the invoicing period. This TDS applies to Stripe fees collected during this invoicing period.
    sig { returns(Integer) }
    attr_reader :period_end
    # The start of the invoicing period. This TDS applies to Stripe fees collected during this invoicing period.
    sig { returns(Integer) }
    attr_reader :period_start
    # The TAN that was supplied to Stripe when TDS was assessed
    sig { returns(String) }
    attr_reader :tax_deduction_account_number
  end
end