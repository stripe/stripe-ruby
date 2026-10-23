# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      module RewardPrograms
        class RuleCreateParams < ::Stripe::RequestParams
          class Condition < ::Stripe::RequestParams
            class CardSpend < ::Stripe::RequestParams
              class MerchantCategoryCodes < ::Stripe::RequestParams
                # Four-digit Merchant Category Codes to explicitly exclude. Takes precedence over `included`.
                sig { returns(T::Array[String]) }
                def excluded; end
                sig { params(_excluded: T::Array[String]).returns(T::Array[String]) }
                def excluded=(_excluded); end
                # Four-digit Merchant Category Codes to include. An empty list matches all MCCs.
                sig { returns(T::Array[String]) }
                def included; end
                sig { params(_included: T::Array[String]).returns(T::Array[String]) }
                def included=(_included); end
                sig { params(excluded: T::Array[String], included: T::Array[String]).void }
                def initialize(excluded: nil, included: nil); end
              end
              # Merchant Category Code include/exclude configuration. Omitted means the rule matches all MCCs.
              sig {
                returns(T.nilable(::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Condition::CardSpend::MerchantCategoryCodes))
               }
              def merchant_category_codes; end
              sig {
                params(_merchant_category_codes: T.nilable(::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Condition::CardSpend::MerchantCategoryCodes)).returns(T.nilable(::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Condition::CardSpend::MerchantCategoryCodes))
               }
              def merchant_category_codes=(_merchant_category_codes); end
              sig {
                params(merchant_category_codes: T.nilable(::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Condition::CardSpend::MerchantCategoryCodes)).void
               }
              def initialize(merchant_category_codes: nil); end
            end
            # Card-spend specific matching condition.
            sig {
              returns(T.nilable(::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Condition::CardSpend))
             }
            def card_spend; end
            sig {
              params(_card_spend: T.nilable(::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Condition::CardSpend)).returns(T.nilable(::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Condition::CardSpend))
             }
            def card_spend=(_card_spend); end
            sig {
              params(card_spend: T.nilable(::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Condition::CardSpend)).void
             }
            def initialize(card_spend: nil); end
          end
          class Reward < ::Stripe::RequestParams
            class Cashback < ::Stripe::RequestParams
              # Cashback rate as a percentage, represented as a decimal string. For example, `"2"` represents 2% and
              # `"1.5"` represents 1.5%. Must be greater than `"0"` and less than or equal to `"100"`.
              sig { returns(BigDecimal) }
              def rate; end
              sig { params(_rate: BigDecimal).returns(BigDecimal) }
              def rate=(_rate); end
              sig { params(rate: BigDecimal).void }
              def initialize(rate: nil); end
              def self.field_encodings
                @field_encodings = {rate: :decimal_string}
              end
            end
            # Cashback reward configuration.
            sig {
              returns(::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Reward::Cashback)
             }
            def cashback; end
            sig {
              params(_cashback: ::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Reward::Cashback).returns(::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Reward::Cashback)
             }
            def cashback=(_cashback); end
            sig {
              params(cashback: ::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Reward::Cashback).void
             }
            def initialize(cashback: nil); end
            def self.field_encodings
              @field_encodings = {cashback: {kind: :object, fields: {rate: :decimal_string}}}
            end
          end
          # Conditions that must be true for this rule to match a card transaction. Omitting this field, or
          # providing an empty condition, means the rule matches all transactions.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Condition))
           }
          def condition; end
          sig {
            params(_condition: T.nilable(::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Condition)).returns(T.nilable(::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Condition))
           }
          def condition=(_condition); end
          # Human-readable name for this rule. Max 250 characters.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          # The reward to grant when this rule matches.
          sig { returns(::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Reward) }
          def reward; end
          sig {
            params(_reward: ::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Reward).returns(::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Reward)
           }
          def reward=(_reward); end
          sig {
            params(condition: T.nilable(::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Condition), name: String, reward: ::Stripe::V2::MoneyManagement::RewardPrograms::RuleCreateParams::Reward).void
           }
          def initialize(condition: nil, name: nil, reward: nil); end
          def self.field_encodings
            @field_encodings = {
              reward: {
                kind: :object,
                fields: {cashback: {kind: :object, fields: {rate: :decimal_string}}},
              },
            }
          end
        end
      end
    end
  end
end