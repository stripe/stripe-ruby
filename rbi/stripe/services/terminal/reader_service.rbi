# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Terminal
    class ReaderService < StripeService
      class DeleteParams < Stripe::RequestParams; end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The new label of the reader.
        sig { returns(T.nilable(String)) }
        def label; end
        sig { params(_label: T.nilable(String)).returns(T.nilable(String)) }
        def label=(_label); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
         }
        def metadata=(_metadata); end
        sig {
          params(expand: T.nilable(T::Array[String]), label: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
         }
        def initialize(expand: nil, label: nil, metadata: nil); end
      end
      class ListParams < Stripe::RequestParams
        # Filters readers by device type
        sig { returns(T.nilable(String)) }
        def device_type; end
        sig { params(_device_type: T.nilable(String)).returns(T.nilable(String)) }
        def device_type=(_device_type); end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # A location ID to filter the response list to only readers at the specific location
        sig { returns(T.nilable(String)) }
        def location; end
        sig { params(_location: T.nilable(String)).returns(T.nilable(String)) }
        def location=(_location); end
        # Filters readers by serial number
        sig { returns(T.nilable(String)) }
        def serial_number; end
        sig { params(_serial_number: T.nilable(String)).returns(T.nilable(String)) }
        def serial_number=(_serial_number); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # A status filter to filter readers to only offline or online readers
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        sig {
          params(device_type: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), location: T.nilable(String), serial_number: T.nilable(String), starting_after: T.nilable(String), status: T.nilable(String)).void
         }
        def initialize(
          device_type: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          location: nil,
          serial_number: nil,
          starting_after: nil,
          status: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Custom label given to the reader for easier identification. If no label is specified, the registration code will be used.
        sig { returns(T.nilable(String)) }
        def label; end
        sig { params(_label: T.nilable(String)).returns(T.nilable(String)) }
        def label=(_label); end
        # The location to assign the reader to.
        sig { returns(T.nilable(String)) }
        def location; end
        sig { params(_location: T.nilable(String)).returns(T.nilable(String)) }
        def location=(_location); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
         }
        def metadata=(_metadata); end
        # A code generated by the reader used for registering to an account.
        sig { returns(String) }
        def registration_code; end
        sig { params(_registration_code: String).returns(String) }
        def registration_code=(_registration_code); end
        sig {
          params(expand: T.nilable(T::Array[String]), label: T.nilable(String), location: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), registration_code: String).void
         }
        def initialize(
          expand: nil,
          label: nil,
          location: nil,
          metadata: nil,
          registration_code: nil
        ); end
      end
      class CancelActionParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class CollectInputsParams < Stripe::RequestParams
        class Input < Stripe::RequestParams
          class CustomText < Stripe::RequestParams
            # The description which will be displayed when collecting this input
            sig { returns(T.nilable(String)) }
            def description; end
            sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_description); end
            # The skip button text
            sig { returns(T.nilable(String)) }
            def skip_button; end
            sig { params(_skip_button: T.nilable(String)).returns(T.nilable(String)) }
            def skip_button=(_skip_button); end
            # The submit button text
            sig { returns(T.nilable(String)) }
            def submit_button; end
            sig { params(_submit_button: T.nilable(String)).returns(T.nilable(String)) }
            def submit_button=(_submit_button); end
            # The title which will be displayed when collecting this input
            sig { returns(String) }
            def title; end
            sig { params(_title: String).returns(String) }
            def title=(_title); end
            sig {
              params(description: T.nilable(String), skip_button: T.nilable(String), submit_button: T.nilable(String), title: String).void
             }
            def initialize(description: nil, skip_button: nil, submit_button: nil, title: nil); end
          end
          class Selection < Stripe::RequestParams
            class Choice < Stripe::RequestParams
              # The unique identifier for this choice
              sig { returns(String) }
              def id; end
              sig { params(_id: String).returns(String) }
              def id=(_id); end
              # The style of the button which will be shown for this choice
              sig { returns(T.nilable(String)) }
              def style; end
              sig { params(_style: T.nilable(String)).returns(T.nilable(String)) }
              def style=(_style); end
              # The text which will be shown on the button for this choice
              sig { returns(String) }
              def text; end
              sig { params(_text: String).returns(String) }
              def text=(_text); end
              sig { params(id: String, style: T.nilable(String), text: String).void }
              def initialize(id: nil, style: nil, text: nil); end
            end
            # List of choices for the `selection` input
            sig {
              returns(T::Array[::Stripe::Terminal::ReaderService::CollectInputsParams::Input::Selection::Choice])
             }
            def choices; end
            sig {
              params(_choices: T::Array[::Stripe::Terminal::ReaderService::CollectInputsParams::Input::Selection::Choice]).returns(T::Array[::Stripe::Terminal::ReaderService::CollectInputsParams::Input::Selection::Choice])
             }
            def choices=(_choices); end
            sig {
              params(choices: T::Array[::Stripe::Terminal::ReaderService::CollectInputsParams::Input::Selection::Choice]).void
             }
            def initialize(choices: nil); end
          end
          class Toggle < Stripe::RequestParams
            # The default value of the toggle
            sig { returns(T.nilable(String)) }
            def default_value; end
            sig { params(_default_value: T.nilable(String)).returns(T.nilable(String)) }
            def default_value=(_default_value); end
            # The description which will be displayed for the toggle
            sig { returns(T.nilable(String)) }
            def description; end
            sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_description); end
            # The title which will be displayed for the toggle
            sig { returns(T.nilable(String)) }
            def title; end
            sig { params(_title: T.nilable(String)).returns(T.nilable(String)) }
            def title=(_title); end
            sig {
              params(default_value: T.nilable(String), description: T.nilable(String), title: T.nilable(String)).void
             }
            def initialize(default_value: nil, description: nil, title: nil); end
          end
          # Customize the text which will be displayed while collecting this input
          sig { returns(::Stripe::Terminal::ReaderService::CollectInputsParams::Input::CustomText) }
          def custom_text; end
          sig {
            params(_custom_text: ::Stripe::Terminal::ReaderService::CollectInputsParams::Input::CustomText).returns(::Stripe::Terminal::ReaderService::CollectInputsParams::Input::CustomText)
           }
          def custom_text=(_custom_text); end
          # Indicate that this input is required, disabling the skip button
          sig { returns(T.nilable(T::Boolean)) }
          def required; end
          sig { params(_required: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def required=(_required); end
          # Options for the `selection` input
          sig {
            returns(T.nilable(::Stripe::Terminal::ReaderService::CollectInputsParams::Input::Selection))
           }
          def selection; end
          sig {
            params(_selection: T.nilable(::Stripe::Terminal::ReaderService::CollectInputsParams::Input::Selection)).returns(T.nilable(::Stripe::Terminal::ReaderService::CollectInputsParams::Input::Selection))
           }
          def selection=(_selection); end
          # List of toggles to be displayed and customization for the toggles
          sig {
            returns(T.nilable(T::Array[::Stripe::Terminal::ReaderService::CollectInputsParams::Input::Toggle]))
           }
          def toggles; end
          sig {
            params(_toggles: T.nilable(T::Array[::Stripe::Terminal::ReaderService::CollectInputsParams::Input::Toggle])).returns(T.nilable(T::Array[::Stripe::Terminal::ReaderService::CollectInputsParams::Input::Toggle]))
           }
          def toggles=(_toggles); end
          # The type of input to collect
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(custom_text: ::Stripe::Terminal::ReaderService::CollectInputsParams::Input::CustomText, required: T.nilable(T::Boolean), selection: T.nilable(::Stripe::Terminal::ReaderService::CollectInputsParams::Input::Selection), toggles: T.nilable(T::Array[::Stripe::Terminal::ReaderService::CollectInputsParams::Input::Toggle]), type: String).void
           }
          def initialize(
            custom_text: nil,
            required: nil,
            selection: nil,
            toggles: nil,
            type: nil
          ); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # List of inputs to be collected using the Reader
        sig { returns(T::Array[::Stripe::Terminal::ReaderService::CollectInputsParams::Input]) }
        def inputs; end
        sig {
          params(_inputs: T::Array[::Stripe::Terminal::ReaderService::CollectInputsParams::Input]).returns(T::Array[::Stripe::Terminal::ReaderService::CollectInputsParams::Input])
         }
        def inputs=(_inputs); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        sig {
          params(expand: T.nilable(T::Array[String]), inputs: T::Array[::Stripe::Terminal::ReaderService::CollectInputsParams::Input], metadata: T.nilable(T::Hash[String, String])).void
         }
        def initialize(expand: nil, inputs: nil, metadata: nil); end
      end
      class CollectPaymentMethodParams < Stripe::RequestParams
        class CollectConfig < Stripe::RequestParams
          class Tipping < Stripe::RequestParams
            # Amount used to calculate tip suggestions on tipping selection screen for this transaction. Must be a positive integer in the smallest currency unit (e.g., 100 cents to represent $1.00 or 100 to represent ¥100, a zero-decimal currency).
            sig { returns(T.nilable(Integer)) }
            def amount_eligible; end
            sig { params(_amount_eligible: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount_eligible=(_amount_eligible); end
            sig { params(amount_eligible: T.nilable(Integer)).void }
            def initialize(amount_eligible: nil); end
          end
          # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow.
          sig { returns(T.nilable(String)) }
          def allow_redisplay; end
          sig { params(_allow_redisplay: T.nilable(String)).returns(T.nilable(String)) }
          def allow_redisplay=(_allow_redisplay); end
          # Enables cancel button on transaction screens.
          sig { returns(T.nilable(T::Boolean)) }
          def enable_customer_cancellation; end
          sig {
            params(_enable_customer_cancellation: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def enable_customer_cancellation=(_enable_customer_cancellation); end
          # Override showing a tipping selection screen on this transaction.
          sig { returns(T.nilable(T::Boolean)) }
          def skip_tipping; end
          sig { params(_skip_tipping: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def skip_tipping=(_skip_tipping); end
          # Tipping configuration for this transaction.
          sig {
            returns(T.nilable(::Stripe::Terminal::ReaderService::CollectPaymentMethodParams::CollectConfig::Tipping))
           }
          def tipping; end
          sig {
            params(_tipping: T.nilable(::Stripe::Terminal::ReaderService::CollectPaymentMethodParams::CollectConfig::Tipping)).returns(T.nilable(::Stripe::Terminal::ReaderService::CollectPaymentMethodParams::CollectConfig::Tipping))
           }
          def tipping=(_tipping); end
          sig {
            params(allow_redisplay: T.nilable(String), enable_customer_cancellation: T.nilable(T::Boolean), skip_tipping: T.nilable(T::Boolean), tipping: T.nilable(::Stripe::Terminal::ReaderService::CollectPaymentMethodParams::CollectConfig::Tipping)).void
           }
          def initialize(
            allow_redisplay: nil,
            enable_customer_cancellation: nil,
            skip_tipping: nil,
            tipping: nil
          ); end
        end
        # Configuration overrides.
        sig {
          returns(T.nilable(::Stripe::Terminal::ReaderService::CollectPaymentMethodParams::CollectConfig))
         }
        def collect_config; end
        sig {
          params(_collect_config: T.nilable(::Stripe::Terminal::ReaderService::CollectPaymentMethodParams::CollectConfig)).returns(T.nilable(::Stripe::Terminal::ReaderService::CollectPaymentMethodParams::CollectConfig))
         }
        def collect_config=(_collect_config); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # PaymentIntent ID.
        sig { returns(String) }
        def payment_intent; end
        sig { params(_payment_intent: String).returns(String) }
        def payment_intent=(_payment_intent); end
        sig {
          params(collect_config: T.nilable(::Stripe::Terminal::ReaderService::CollectPaymentMethodParams::CollectConfig), expand: T.nilable(T::Array[String]), payment_intent: String).void
         }
        def initialize(collect_config: nil, expand: nil, payment_intent: nil); end
      end
      class ConfirmPaymentIntentParams < Stripe::RequestParams
        class ConfirmConfig < Stripe::RequestParams
          # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.
          sig { returns(T.nilable(String)) }
          def return_url; end
          sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
          def return_url=(_return_url); end
          sig { params(return_url: T.nilable(String)).void }
          def initialize(return_url: nil); end
        end
        # Configuration overrides.
        sig {
          returns(T.nilable(::Stripe::Terminal::ReaderService::ConfirmPaymentIntentParams::ConfirmConfig))
         }
        def confirm_config; end
        sig {
          params(_confirm_config: T.nilable(::Stripe::Terminal::ReaderService::ConfirmPaymentIntentParams::ConfirmConfig)).returns(T.nilable(::Stripe::Terminal::ReaderService::ConfirmPaymentIntentParams::ConfirmConfig))
         }
        def confirm_config=(_confirm_config); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # PaymentIntent ID.
        sig { returns(String) }
        def payment_intent; end
        sig { params(_payment_intent: String).returns(String) }
        def payment_intent=(_payment_intent); end
        sig {
          params(confirm_config: T.nilable(::Stripe::Terminal::ReaderService::ConfirmPaymentIntentParams::ConfirmConfig), expand: T.nilable(T::Array[String]), payment_intent: String).void
         }
        def initialize(confirm_config: nil, expand: nil, payment_intent: nil); end
      end
      class ProcessPaymentIntentParams < Stripe::RequestParams
        class ProcessConfig < Stripe::RequestParams
          class Tipping < Stripe::RequestParams
            # Amount used to calculate tip suggestions on tipping selection screen for this transaction. Must be a positive integer in the smallest currency unit (e.g., 100 cents to represent $1.00 or 100 to represent ¥100, a zero-decimal currency).
            sig { returns(T.nilable(Integer)) }
            def amount_eligible; end
            sig { params(_amount_eligible: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount_eligible=(_amount_eligible); end
            sig { params(amount_eligible: T.nilable(Integer)).void }
            def initialize(amount_eligible: nil); end
          end
          # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow.
          sig { returns(T.nilable(String)) }
          def allow_redisplay; end
          sig { params(_allow_redisplay: T.nilable(String)).returns(T.nilable(String)) }
          def allow_redisplay=(_allow_redisplay); end
          # Enables cancel button on transaction screens.
          sig { returns(T.nilable(T::Boolean)) }
          def enable_customer_cancellation; end
          sig {
            params(_enable_customer_cancellation: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def enable_customer_cancellation=(_enable_customer_cancellation); end
          # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.
          sig { returns(T.nilable(String)) }
          def return_url; end
          sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
          def return_url=(_return_url); end
          # Override showing a tipping selection screen on this transaction.
          sig { returns(T.nilable(T::Boolean)) }
          def skip_tipping; end
          sig { params(_skip_tipping: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def skip_tipping=(_skip_tipping); end
          # Tipping configuration for this transaction.
          sig {
            returns(T.nilable(::Stripe::Terminal::ReaderService::ProcessPaymentIntentParams::ProcessConfig::Tipping))
           }
          def tipping; end
          sig {
            params(_tipping: T.nilable(::Stripe::Terminal::ReaderService::ProcessPaymentIntentParams::ProcessConfig::Tipping)).returns(T.nilable(::Stripe::Terminal::ReaderService::ProcessPaymentIntentParams::ProcessConfig::Tipping))
           }
          def tipping=(_tipping); end
          sig {
            params(allow_redisplay: T.nilable(String), enable_customer_cancellation: T.nilable(T::Boolean), return_url: T.nilable(String), skip_tipping: T.nilable(T::Boolean), tipping: T.nilable(::Stripe::Terminal::ReaderService::ProcessPaymentIntentParams::ProcessConfig::Tipping)).void
           }
          def initialize(
            allow_redisplay: nil,
            enable_customer_cancellation: nil,
            return_url: nil,
            skip_tipping: nil,
            tipping: nil
          ); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # PaymentIntent ID
        sig { returns(String) }
        def payment_intent; end
        sig { params(_payment_intent: String).returns(String) }
        def payment_intent=(_payment_intent); end
        # Configuration overrides
        sig {
          returns(T.nilable(::Stripe::Terminal::ReaderService::ProcessPaymentIntentParams::ProcessConfig))
         }
        def process_config; end
        sig {
          params(_process_config: T.nilable(::Stripe::Terminal::ReaderService::ProcessPaymentIntentParams::ProcessConfig)).returns(T.nilable(::Stripe::Terminal::ReaderService::ProcessPaymentIntentParams::ProcessConfig))
         }
        def process_config=(_process_config); end
        sig {
          params(expand: T.nilable(T::Array[String]), payment_intent: String, process_config: T.nilable(::Stripe::Terminal::ReaderService::ProcessPaymentIntentParams::ProcessConfig)).void
         }
        def initialize(expand: nil, payment_intent: nil, process_config: nil); end
      end
      class ProcessSetupIntentParams < Stripe::RequestParams
        class ProcessConfig < Stripe::RequestParams
          # Enables cancel button on transaction screens.
          sig { returns(T.nilable(T::Boolean)) }
          def enable_customer_cancellation; end
          sig {
            params(_enable_customer_cancellation: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def enable_customer_cancellation=(_enable_customer_cancellation); end
          sig { params(enable_customer_cancellation: T.nilable(T::Boolean)).void }
          def initialize(enable_customer_cancellation: nil); end
        end
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow.
        sig { returns(String) }
        def allow_redisplay; end
        sig { params(_allow_redisplay: String).returns(String) }
        def allow_redisplay=(_allow_redisplay); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Configuration overrides
        sig {
          returns(T.nilable(::Stripe::Terminal::ReaderService::ProcessSetupIntentParams::ProcessConfig))
         }
        def process_config; end
        sig {
          params(_process_config: T.nilable(::Stripe::Terminal::ReaderService::ProcessSetupIntentParams::ProcessConfig)).returns(T.nilable(::Stripe::Terminal::ReaderService::ProcessSetupIntentParams::ProcessConfig))
         }
        def process_config=(_process_config); end
        # SetupIntent ID
        sig { returns(String) }
        def setup_intent; end
        sig { params(_setup_intent: String).returns(String) }
        def setup_intent=(_setup_intent); end
        sig {
          params(allow_redisplay: String, expand: T.nilable(T::Array[String]), process_config: T.nilable(::Stripe::Terminal::ReaderService::ProcessSetupIntentParams::ProcessConfig), setup_intent: String).void
         }
        def initialize(
          allow_redisplay: nil,
          expand: nil,
          process_config: nil,
          setup_intent: nil
        ); end
      end
      class RefundPaymentParams < Stripe::RequestParams
        class RefundPaymentConfig < Stripe::RequestParams
          # Enables cancel button on transaction screens.
          sig { returns(T.nilable(T::Boolean)) }
          def enable_customer_cancellation; end
          sig {
            params(_enable_customer_cancellation: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def enable_customer_cancellation=(_enable_customer_cancellation); end
          sig { params(enable_customer_cancellation: T.nilable(T::Boolean)).void }
          def initialize(enable_customer_cancellation: nil); end
        end
        # A positive integer in __cents__ representing how much of this charge to refund.
        sig { returns(T.nilable(Integer)) }
        def amount; end
        sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_amount); end
        # ID of the Charge to refund.
        sig { returns(T.nilable(String)) }
        def charge; end
        sig { params(_charge: T.nilable(String)).returns(T.nilable(String)) }
        def charge=(_charge); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # ID of the PaymentIntent to refund.
        sig { returns(T.nilable(String)) }
        def payment_intent; end
        sig { params(_payment_intent: T.nilable(String)).returns(T.nilable(String)) }
        def payment_intent=(_payment_intent); end
        # Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
        sig { returns(T.nilable(T::Boolean)) }
        def refund_application_fee; end
        sig {
          params(_refund_application_fee: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
         }
        def refund_application_fee=(_refund_application_fee); end
        # Configuration overrides
        sig {
          returns(T.nilable(::Stripe::Terminal::ReaderService::RefundPaymentParams::RefundPaymentConfig))
         }
        def refund_payment_config; end
        sig {
          params(_refund_payment_config: T.nilable(::Stripe::Terminal::ReaderService::RefundPaymentParams::RefundPaymentConfig)).returns(T.nilable(::Stripe::Terminal::ReaderService::RefundPaymentParams::RefundPaymentConfig))
         }
        def refund_payment_config=(_refund_payment_config); end
        # Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount). A transfer can be reversed only by the application that created the charge.
        sig { returns(T.nilable(T::Boolean)) }
        def reverse_transfer; end
        sig { params(_reverse_transfer: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def reverse_transfer=(_reverse_transfer); end
        sig {
          params(amount: T.nilable(Integer), charge: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), payment_intent: T.nilable(String), refund_application_fee: T.nilable(T::Boolean), refund_payment_config: T.nilable(::Stripe::Terminal::ReaderService::RefundPaymentParams::RefundPaymentConfig), reverse_transfer: T.nilable(T::Boolean)).void
         }
        def initialize(
          amount: nil,
          charge: nil,
          expand: nil,
          metadata: nil,
          payment_intent: nil,
          refund_application_fee: nil,
          refund_payment_config: nil,
          reverse_transfer: nil
        ); end
      end
      class SetReaderDisplayParams < Stripe::RequestParams
        class Cart < Stripe::RequestParams
          class LineItem < Stripe::RequestParams
            # The price of the item in cents.
            sig { returns(Integer) }
            def amount; end
            sig { params(_amount: Integer).returns(Integer) }
            def amount=(_amount); end
            # The description or name of the item.
            sig { returns(String) }
            def description; end
            sig { params(_description: String).returns(String) }
            def description=(_description); end
            # The quantity of the line item being purchased.
            sig { returns(Integer) }
            def quantity; end
            sig { params(_quantity: Integer).returns(Integer) }
            def quantity=(_quantity); end
            sig { params(amount: Integer, description: String, quantity: Integer).void }
            def initialize(amount: nil, description: nil, quantity: nil); end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          # Array of line items that were purchased.
          sig {
            returns(T::Array[::Stripe::Terminal::ReaderService::SetReaderDisplayParams::Cart::LineItem])
           }
          def line_items; end
          sig {
            params(_line_items: T::Array[::Stripe::Terminal::ReaderService::SetReaderDisplayParams::Cart::LineItem]).returns(T::Array[::Stripe::Terminal::ReaderService::SetReaderDisplayParams::Cart::LineItem])
           }
          def line_items=(_line_items); end
          # The amount of tax in cents.
          sig { returns(T.nilable(Integer)) }
          def tax; end
          sig { params(_tax: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def tax=(_tax); end
          # Total balance of cart due in cents.
          sig { returns(Integer) }
          def total; end
          sig { params(_total: Integer).returns(Integer) }
          def total=(_total); end
          sig {
            params(currency: String, line_items: T::Array[::Stripe::Terminal::ReaderService::SetReaderDisplayParams::Cart::LineItem], tax: T.nilable(Integer), total: Integer).void
           }
          def initialize(currency: nil, line_items: nil, tax: nil, total: nil); end
        end
        # Cart
        sig { returns(T.nilable(::Stripe::Terminal::ReaderService::SetReaderDisplayParams::Cart)) }
        def cart; end
        sig {
          params(_cart: T.nilable(::Stripe::Terminal::ReaderService::SetReaderDisplayParams::Cart)).returns(T.nilable(::Stripe::Terminal::ReaderService::SetReaderDisplayParams::Cart))
         }
        def cart=(_cart); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Type
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(cart: T.nilable(::Stripe::Terminal::ReaderService::SetReaderDisplayParams::Cart), expand: T.nilable(T::Array[String]), type: String).void
         }
        def initialize(cart: nil, expand: nil, type: nil); end
      end
      # Cancels the current reader action.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderService::CancelActionParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def cancel_action(reader, params = {}, opts = {}); end

      # Initiates an input collection flow on a Reader.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderService::CollectInputsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def collect_inputs(reader, params = {}, opts = {}); end

      # Initiates a payment flow on a Reader and updates the PaymentIntent with card details before manual confirmation.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderService::CollectPaymentMethodParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def collect_payment_method(reader, params = {}, opts = {}); end

      # Finalizes a payment on a Reader.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderService::ConfirmPaymentIntentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def confirm_payment_intent(reader, params = {}, opts = {}); end

      # Creates a new Reader object.
      sig {
        params(params: T.any(::Stripe::Terminal::ReaderService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def create(params = {}, opts = {}); end

      # Deletes a Reader object.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def delete(reader, params = {}, opts = {}); end

      # Returns a list of Reader objects.
      sig {
        params(params: T.any(::Stripe::Terminal::ReaderService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Initiates a payment flow on a Reader.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderService::ProcessPaymentIntentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def process_payment_intent(reader, params = {}, opts = {}); end

      # Initiates a setup intent flow on a Reader.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderService::ProcessSetupIntentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def process_setup_intent(reader, params = {}, opts = {}); end

      # Initiates a refund on a Reader
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderService::RefundPaymentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def refund_payment(reader, params = {}, opts = {}); end

      # Retrieves a Reader object.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def retrieve(reader, params = {}, opts = {}); end

      # Sets reader display to show cart details.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderService::SetReaderDisplayParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def set_reader_display(reader, params = {}, opts = {}); end

      # Updates a Reader object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::ReaderService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def update(reader, params = {}, opts = {}); end
    end
  end
end