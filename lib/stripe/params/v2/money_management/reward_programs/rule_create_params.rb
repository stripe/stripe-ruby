# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      module RewardPrograms
        class RuleCreateParams < ::Stripe::RequestParams
          class Condition < ::Stripe::RequestParams
            class CardSpend < ::Stripe::RequestParams
              class MerchantCategoryCodes < ::Stripe::RequestParams
                # Four-digit Merchant Category Codes to explicitly exclude. Takes precedence over `included`.
                attr_accessor :excluded
                # Four-digit Merchant Category Codes to include. An empty list matches all MCCs.
                attr_accessor :included

                def initialize(excluded: nil, included: nil)
                  @excluded = excluded
                  @included = included
                end
              end
              # Merchant Category Code include/exclude configuration. Omitted means the rule matches all MCCs.
              attr_accessor :merchant_category_codes

              def initialize(merchant_category_codes: nil)
                @merchant_category_codes = merchant_category_codes
              end
            end
            # Card-spend specific matching condition.
            attr_accessor :card_spend

            def initialize(card_spend: nil)
              @card_spend = card_spend
            end
          end

          class Reward < ::Stripe::RequestParams
            class Cashback < ::Stripe::RequestParams
              # Cashback rate as a percentage, represented as a decimal string. For example, `"2"` represents 2% and
              # `"1.5"` represents 1.5%. Must be greater than `"0"` and less than or equal to `"100"`.
              attr_accessor :rate

              def initialize(rate: nil)
                @rate = rate
              end

              def self.field_encodings
                @field_encodings = { rate: :decimal_string }
              end
            end
            # Cashback reward configuration.
            attr_accessor :cashback

            def initialize(cashback: nil)
              @cashback = cashback
            end

            def self.field_encodings
              @field_encodings = { cashback: { kind: :object, fields: { rate: :decimal_string } } }
            end
          end
          # Conditions that must be true for this rule to match a card transaction. Omitting this field, or
          # providing an empty condition, means the rule matches all transactions.
          attr_accessor :condition
          # Human-readable name for this rule. Max 250 characters.
          attr_accessor :name
          # The reward to grant when this rule matches.
          attr_accessor :reward

          def initialize(condition: nil, name: nil, reward: nil)
            @condition = condition
            @name = name
            @reward = reward
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
end
