# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a previously earned reward is reversed, for example because the card transaction was
    # refunded or disputed. Debit `reward.amount` from the connected account. Use the event ID as the
    # idempotency key.
    class V2MoneyManagementRewardProgramRewardReversedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.money_management.reward_program.reward_reversed"
      end

      class V2MoneyManagementRewardProgramRewardReversedEventData < ::Stripe::StripeObject
        class CardSpend < ::Stripe::StripeObject
          # The Issuing cardholder whose spend earned the original reward.
          attr_reader :cardholder
          # The Issuing transaction that reversed the reward. Present when the reversal is calculated from a
          # single Issuing transaction.
          attr_reader :issuing_transaction
          # The Issuing transaction that earned the original reward. Present when the reversal is calculated
          # from a single Issuing transaction and Stripe can associate it with the original transaction.
          attr_reader :original_transaction

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Reward < ::Stripe::StripeObject
          class EarningPeriod < ::Stripe::StripeObject
            # End of the earning period, exclusive.
            attr_reader :end
            # Start of the earning period, inclusive.
            attr_reader :start

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The reward amount. Always positive; the event type determines whether to credit or debit the
          # connected account.
          attr_reader :amount
          # The period over which the reward was earned. Present when the reward is calculated over an
          # earning period rather than from a single Issuing transaction.
          attr_reader :earning_period

          def self.inner_class_types
            @inner_class_types = { earning_period: EarningPeriod }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The connected account whose reward is reversed.
        attr_reader :account
        # Issuing card spend details for the reversal.
        attr_reader :card_spend
        # The reward to debit from the connected account.
        attr_reader :reward

        def self.inner_class_types
          @inner_class_types = { card_spend: CardSpend, reward: Reward }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2MoneyManagementRewardProgramRewardReversedEventData }
      end
      attr_reader :data, :related_object

      # Retrieves the related object from the API. Makes an API request on every call.
      def fetch_related_object
        _request(
          method: :get,
          path: related_object.url,
          base_address: :api,
          opts: { stripe_context: context, "Stripe-Request-Trigger": "event=#{id}" }
        )
      end
    end

    # Occurs when a previously earned reward is reversed, for example because the card transaction was
    # refunded or disputed. Debit `reward.amount` from the connected account. Use the event ID as the
    # idempotency key.
    class V2MoneyManagementRewardProgramRewardReversedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.money_management.reward_program.reward_reversed"
      end

      attr_reader :related_object

      # Retrieves the RewardProgram related to this EventNotification from the Stripe API. Makes an API request on every call.
      def fetch_related_object
        resp = @client.raw_request(
          :get,
          related_object.url,
          opts: { stripe_context: context, "Stripe-Request-Trigger": "event=#{id}" },
          usage: ["fetch_related_object"]
        )
        @client.deserialize(resp.http_body, api_mode: Util.get_api_mode(related_object.url))
      end
    end
  end
end
