# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    # A Reader represents a physical device for accepting payment details.
    #
    # Related guide: [Connecting to a reader](https://stripe.com/docs/terminal/payments/connect-reader)
    class Reader < APIResource
      class Action < Stripe::StripeObject
        class CollectInputs < Stripe::StripeObject
          class Input < Stripe::StripeObject
            class CustomText < Stripe::StripeObject
              sig { returns(T.nilable(String)) }
              attr_reader :description
              sig { returns(T.nilable(String)) }
              attr_reader :skip_button
              sig { returns(T.nilable(String)) }
              attr_reader :submit_button
              sig { returns(T.nilable(String)) }
              attr_reader :title
            end
            class Email < Stripe::StripeObject
              sig { returns(T.nilable(String)) }
              attr_reader :value
            end
            class Numeric < Stripe::StripeObject
              sig { returns(T.nilable(String)) }
              attr_reader :value
            end
            class Phone < Stripe::StripeObject
              sig { returns(T.nilable(String)) }
              attr_reader :value
            end
            class Selection < Stripe::StripeObject
              class Choice < Stripe::StripeObject
                sig { returns(T.nilable(String)) }
                attr_reader :style
                sig { returns(String) }
                attr_reader :value
              end
              sig { returns(T::Array[Choice]) }
              attr_reader :choices
              sig { returns(T.nilable(String)) }
              attr_reader :value
            end
            class Signature < Stripe::StripeObject
              sig { returns(T.nilable(String)) }
              attr_reader :value
            end
            class Text < Stripe::StripeObject
              sig { returns(T.nilable(String)) }
              attr_reader :value
            end
            class Toggle < Stripe::StripeObject
              sig { returns(T.nilable(String)) }
              attr_reader :default_value
              sig { returns(T.nilable(String)) }
              attr_reader :description
              sig { returns(T.nilable(String)) }
              attr_reader :title
              sig { returns(T.nilable(String)) }
              attr_reader :value
            end
            sig { returns(T.nilable(CustomText)) }
            attr_reader :custom_text
            sig { returns(Email) }
            attr_reader :email
            sig { returns(Numeric) }
            attr_reader :numeric
            sig { returns(Phone) }
            attr_reader :phone
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required
            sig { returns(Selection) }
            attr_reader :selection
            sig { returns(Signature) }
            attr_reader :signature
            sig { returns(T::Boolean) }
            attr_reader :skipped
            sig { returns(Text) }
            attr_reader :text
            sig { returns(T.nilable(T::Array[Toggle])) }
            attr_reader :toggles
            sig { returns(String) }
            attr_reader :type
          end
          sig { returns(T::Array[Input]) }
          attr_reader :inputs
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_reader :metadata
        end
        class CollectPaymentMethod < Stripe::StripeObject
          class CollectConfig < Stripe::StripeObject
            class Tipping < Stripe::StripeObject
              sig { returns(Integer) }
              attr_reader :amount_eligible
            end
            sig { returns(T::Boolean) }
            attr_reader :enable_customer_cancellation
            sig { returns(T::Boolean) }
            attr_reader :skip_tipping
            sig { returns(Tipping) }
            attr_reader :tipping
          end
          sig { returns(CollectConfig) }
          attr_reader :collect_config
          sig { returns(T.any(String, Stripe::PaymentIntent)) }
          attr_reader :payment_intent
          sig { returns(Stripe::PaymentMethod) }
          attr_reader :payment_method
          sig { returns(String) }
          attr_reader :stripe_account
        end
        class ConfirmPaymentIntent < Stripe::StripeObject
          sig { returns(T.any(String, Stripe::PaymentIntent)) }
          attr_reader :payment_intent
          sig { returns(String) }
          attr_reader :stripe_account
        end
        class ProcessPaymentIntent < Stripe::StripeObject
          class ProcessConfig < Stripe::StripeObject
            class Tipping < Stripe::StripeObject
              sig { returns(Integer) }
              attr_reader :amount_eligible
            end
            sig { returns(T::Boolean) }
            attr_reader :enable_customer_cancellation
            sig { returns(T::Boolean) }
            attr_reader :skip_tipping
            sig { returns(Tipping) }
            attr_reader :tipping
          end
          sig { returns(T.any(String, Stripe::PaymentIntent)) }
          attr_reader :payment_intent
          sig { returns(ProcessConfig) }
          attr_reader :process_config
          sig { returns(String) }
          attr_reader :stripe_account
        end
        class ProcessSetupIntent < Stripe::StripeObject
          class ProcessConfig < Stripe::StripeObject
            sig { returns(T::Boolean) }
            attr_reader :enable_customer_cancellation
          end
          sig { returns(String) }
          attr_reader :generated_card
          sig { returns(ProcessConfig) }
          attr_reader :process_config
          sig { returns(T.any(String, Stripe::SetupIntent)) }
          attr_reader :setup_intent
        end
        class RefundPayment < Stripe::StripeObject
          class RefundPaymentConfig < Stripe::StripeObject
            sig { returns(T::Boolean) }
            attr_reader :enable_customer_cancellation
          end
          sig { returns(Integer) }
          attr_reader :amount
          sig { returns(T.any(String, Stripe::Charge)) }
          attr_reader :charge
          sig { returns(T::Hash[String, String]) }
          attr_reader :metadata
          sig { returns(T.any(String, Stripe::PaymentIntent)) }
          attr_reader :payment_intent
          sig { returns(String) }
          attr_reader :reason
          sig { returns(T.any(String, Stripe::Refund)) }
          attr_reader :refund
          sig { returns(T::Boolean) }
          attr_reader :refund_application_fee
          sig { returns(RefundPaymentConfig) }
          attr_reader :refund_payment_config
          sig { returns(T::Boolean) }
          attr_reader :reverse_transfer
          sig { returns(String) }
          attr_reader :stripe_account
        end
        class SetReaderDisplay < Stripe::StripeObject
          class Cart < Stripe::StripeObject
            class LineItem < Stripe::StripeObject
              sig { returns(Integer) }
              attr_reader :amount
              sig { returns(String) }
              attr_reader :description
              sig { returns(Integer) }
              attr_reader :quantity
            end
            sig { returns(String) }
            attr_reader :currency
            sig { returns(T::Array[LineItem]) }
            attr_reader :line_items
            sig { returns(T.nilable(Integer)) }
            attr_reader :tax
            sig { returns(Integer) }
            attr_reader :total
          end
          sig { returns(T.nilable(Cart)) }
          attr_reader :cart
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(CollectInputs) }
        attr_reader :collect_inputs
        sig { returns(CollectPaymentMethod) }
        attr_reader :collect_payment_method
        sig { returns(ConfirmPaymentIntent) }
        attr_reader :confirm_payment_intent
        sig { returns(T.nilable(String)) }
        attr_reader :failure_code
        sig { returns(T.nilable(String)) }
        attr_reader :failure_message
        sig { returns(ProcessPaymentIntent) }
        attr_reader :process_payment_intent
        sig { returns(ProcessSetupIntent) }
        attr_reader :process_setup_intent
        sig { returns(RefundPayment) }
        attr_reader :refund_payment
        sig { returns(SetReaderDisplay) }
        attr_reader :set_reader_display
        sig { returns(String) }
        attr_reader :status
        sig { returns(String) }
        attr_reader :type
      end
      sig { returns(T.nilable(Action)) }
      # The most recent action performed by the reader.
      attr_reader :action
      sig { returns(T.nilable(String)) }
      # The current software version of the reader.
      attr_reader :device_sw_version
      sig { returns(String) }
      # Type of reader, one of `bbpos_wisepad3`, `stripe_m2`, `stripe_s700`, `bbpos_chipper2x`, `bbpos_wisepos_e`, `verifone_P400`, `simulated_wisepos_e`, or `mobile_phone_reader`.
      attr_reader :device_type
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T.nilable(String)) }
      # The local IP address of the reader.
      attr_reader :ip_address
      sig { returns(String) }
      # Custom label given to the reader for easier identification.
      attr_reader :label
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T.nilable(T.any(String, Stripe::Terminal::Location))) }
      # The location identifier of the reader.
      attr_reader :location
      sig { returns(T::Hash[String, String]) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # Serial number of the reader.
      attr_reader :serial_number
      sig { returns(T.nilable(String)) }
      # The networking status of the reader. We do not recommend using this field in flows that may block taking payments.
      attr_reader :status
      sig { returns(T::Boolean) }
      # Always true for a deleted object
      attr_reader :deleted
    end
  end
end