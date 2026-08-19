# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class OutboundPaymentQuoteCreateParams < ::Stripe::RequestParams
        class DeliveryOptions < ::Stripe::RequestParams
          # Open Enum. Method for bank account.
          attr_accessor :bank_account
          # Open Enum. Speed of the payout.
          attr_accessor :speed

          def initialize(bank_account: nil, speed: nil)
            @bank_account = bank_account
            @speed = speed
          end
        end

        class From < ::Stripe::RequestParams
          # Describes the FinancialAccount's currency drawn from.
          attr_accessor :currency
          # The FinancialAccount that funds were pulled from.
          attr_accessor :financial_account

          def initialize(currency: nil, financial_account: nil)
            @currency = currency
            @financial_account = financial_account
          end
        end

        class To < ::Stripe::RequestParams
          class PayoutMethodOptions < ::Stripe::RequestParams
            class BankAccount < ::Stripe::RequestParams
              class PreferredNetworkOptions < ::Stripe::RequestParams
                class Ach < ::Stripe::RequestParams
                  # Open Enum. ACH submission timing.
                  attr_accessor :submission
                  # The transaction purpose for this ACH payment.
                  attr_accessor :transaction_purpose

                  def initialize(submission: nil, transaction_purpose: nil)
                    @submission = submission
                    @transaction_purpose = transaction_purpose
                  end
                end
                # ACH-specific network options.
                attr_accessor :ach

                def initialize(ach: nil)
                  @ach = ach
                end
              end
              # Per-network configuration options.
              attr_accessor :preferred_network_options
              # The preferred networks to use for this OutboundPayment.
              attr_accessor :preferred_networks

              def initialize(preferred_network_options: nil, preferred_networks: nil)
                @preferred_network_options = preferred_network_options
                @preferred_networks = preferred_networks
              end
            end
            # Options for bank account payout methods.
            attr_accessor :bank_account

            def initialize(bank_account: nil)
              @bank_account = bank_account
            end
          end
          # Describes the currency to send to the recipient.
          # If included, this currency must match a currency supported by the destination.
          # Can be omitted in the following cases:
          # - destination only supports one currency
          # - destination supports multiple currencies and one of the currencies matches the FA currency
          # - destination supports multiple currencies and one of the currencies matches the presentment currency
          # Note - when both FA currency and presentment currency are supported, we pick the FA currency to minimize FX.
          attr_accessor :currency
          # The payout method which the OutboundPayment uses to send payout.
          attr_accessor :payout_method
          # Payout method options for the OutboundPaymentQuote.
          attr_accessor :payout_method_options
          # To which account the OutboundPayment is sent.
          attr_accessor :recipient

          def initialize(
            currency: nil,
            payout_method: nil,
            payout_method_options: nil,
            recipient: nil
          )
            @currency = currency
            @payout_method = payout_method
            @payout_method_options = payout_method_options
            @recipient = recipient
          end
        end
        # The "presentment amount" to be sent to the recipient.
        attr_accessor :amount
        # Method to be used to send the OutboundPayment.
        attr_accessor :delivery_options
        # Request details about the sender of an OutboundPaymentQuote.
        attr_accessor :from
        # Request details about the recipient of an OutboundPaymentQuote.
        attr_accessor :to

        def initialize(amount: nil, delivery_options: nil, from: nil, to: nil)
          @amount = amount
          @delivery_options = delivery_options
          @from = from
          @to = to
        end
      end
    end
  end
end
