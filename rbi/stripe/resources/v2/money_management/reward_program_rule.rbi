# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # A RewardProgramRule defines the matching conditions and cashback reward outcome shared across all
      # active enrollments in a RewardProgram. At most one RewardProgramRule may be active per RewardProgram
      # at a time.
      class RewardProgramRule < APIResource
        class Condition < ::Stripe::StripeObject
          class CardSpend < ::Stripe::StripeObject
            class MerchantCategoryCodes < ::Stripe::StripeObject
              # Four-digit Merchant Category Codes to explicitly exclude. Takes precedence over `included`.
              sig { returns(T::Array[String]) }
              def excluded; end
              # Four-digit Merchant Category Codes to include. An empty list matches all MCCs.
              sig { returns(T::Array[String]) }
              def included; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Merchant Category Code include/exclude configuration. Omitted means the rule matches all MCCs.
            sig { returns(T.nilable(MerchantCategoryCodes)) }
            def merchant_category_codes; end
            def self.inner_class_types
              @inner_class_types = {merchant_category_codes: MerchantCategoryCodes}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Card-spend specific matching condition.
          sig { returns(T.nilable(CardSpend)) }
          def card_spend; end
          def self.inner_class_types
            @inner_class_types = {card_spend: CardSpend}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Reward < ::Stripe::StripeObject
          class Cashback < ::Stripe::StripeObject
            # Cashback rate as a percentage, represented as a decimal string. For example, `"2"` represents 2% and
            # `"1.5"` represents 1.5%. Must be greater than `"0"` and less than or equal to `"100"`.
            sig { returns(BigDecimal) }
            def rate; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {rate: :decimal_string}
            end
          end
          # Cashback reward configuration.
          sig { returns(Cashback) }
          def cashback; end
          def self.inner_class_types
            @inner_class_types = {cashback: Cashback}
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {cashback: {kind: :object, fields: {rate: :decimal_string}}}
          end
        end
        # Conditions that must be true for this rule to match a card transaction. Empty means the rule matches
        # all transactions.
        sig { returns(Condition) }
        def condition; end
        # Time at which the RewardProgramRule was created.
        sig { returns(String) }
        def created; end
        # Unique identifier for the RewardProgramRule.
        sig { returns(String) }
        def id; end
        # Whether this object exists in livemode or testmode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Human-readable name for this rule. Max 250 characters.
        sig { returns(String) }
        def name; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The reward to grant when this rule matches.
        sig { returns(Reward) }
        def reward; end
        # The ID of the RewardProgram this rule belongs to. Immutable after creation.
        sig { returns(String) }
        def reward_program; end
        # The status of the RewardProgramRule. Inactive by default on creation; use activate/deactivate to
        # change.
        sig { returns(String) }
        def status; end
      end
    end
  end
end