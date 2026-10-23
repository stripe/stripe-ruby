# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # A RewardProgramRule defines the matching conditions and cashback reward outcome shared across all
      # active enrollments in a RewardProgram. At most one RewardProgramRule may be active per RewardProgram
      # at a time.
      class RewardProgramRule < APIResource
        OBJECT_NAME = "v2.money_management.reward_program_rule"
        def self.object_name
          "v2.money_management.reward_program_rule"
        end

        class Condition < ::Stripe::StripeObject
          class CardSpend < ::Stripe::StripeObject
            class MerchantCategoryCodes < ::Stripe::StripeObject
              # Four-digit Merchant Category Codes to explicitly exclude. Takes precedence over `included`.
              attr_reader :excluded
              # Four-digit Merchant Category Codes to include. An empty list matches all MCCs.
              attr_reader :included

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Merchant Category Code include/exclude configuration. Omitted means the rule matches all MCCs.
            attr_reader :merchant_category_codes

            def self.inner_class_types
              @inner_class_types = { merchant_category_codes: MerchantCategoryCodes }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Card-spend specific matching condition.
          attr_reader :card_spend

          def self.inner_class_types
            @inner_class_types = { card_spend: CardSpend }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Reward < ::Stripe::StripeObject
          class Cashback < ::Stripe::StripeObject
            # Cashback rate as a percentage, represented as a decimal string. For example, `"2"` represents 2% and
            # `"1.5"` represents 1.5%. Must be greater than `"0"` and less than or equal to `"100"`.
            attr_reader :rate

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = { rate: :decimal_string }
            end
          end
          # Cashback reward configuration.
          attr_reader :cashback

          def self.inner_class_types
            @inner_class_types = { cashback: Cashback }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = { cashback: { kind: :object, fields: { rate: :decimal_string } } }
          end
        end
        # Conditions that must be true for this rule to match a card transaction. Empty means the rule matches
        # all transactions.
        attr_reader :condition
        # Time at which the RewardProgramRule was created.
        attr_reader :created
        # Unique identifier for the RewardProgramRule.
        attr_reader :id
        # Whether this object exists in livemode or testmode.
        attr_reader :livemode
        # Human-readable name for this rule. Max 250 characters.
        attr_reader :name
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The reward to grant when this rule matches.
        attr_reader :reward
        # The ID of the RewardProgram this rule belongs to. Immutable after creation.
        attr_reader :reward_program
        # The status of the RewardProgramRule. Inactive by default on creation; use activate/deactivate to
        # change.
        attr_reader :status

        def self.inner_class_types
          @inner_class_types = { condition: Condition, reward: Reward }
        end

        def self.field_remappings
          @field_remappings = {}
        end

        def self.field_encodings
          @field_encodings = {
            reward: {
              kind: :object,
              fields: { cashback: { kind: :object, fields: { rate: :decimal_string } } },
            },
          }
        end
      end
    end
  end
end
