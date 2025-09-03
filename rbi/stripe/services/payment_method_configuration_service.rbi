# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentMethodConfigurationService < StripeService
    class ListParams < Stripe::RequestParams
      # The Connect application to filter by.
      sig { returns(T.nilable(String)) }
      def application; end
      sig { params(_application: T.nilable(String)).returns(T.nilable(String)) }
      def application=(_application); end
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
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(application: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        application: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class AcssDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AcssDebit::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AcssDebit::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AcssDebit::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AcssDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Affirm < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Affirm::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Affirm::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Affirm::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Affirm::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AfterpayClearpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AfterpayClearpay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AfterpayClearpay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AfterpayClearpay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AfterpayClearpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Alipay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Alipay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Alipay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Alipay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Alipay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Alma < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Alma::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Alma::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Alma::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Alma::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AmazonPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AmazonPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AmazonPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AmazonPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AmazonPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePayLater < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePayLater::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePayLater::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePayLater::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePayLater::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AuBecsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AuBecsDebit::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AuBecsDebit::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AuBecsDebit::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AuBecsDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class BacsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::BacsDebit::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::BacsDebit::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::BacsDebit::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::BacsDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Bancontact < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Bancontact::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Bancontact::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Bancontact::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Bancontact::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Billie < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Billie::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Billie::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Billie::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Billie::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Blik < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Blik::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Blik::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Blik::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Blik::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Boleto < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Boleto::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Boleto::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Boleto::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Boleto::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Card < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Card::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Card::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Card::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Card::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class CartesBancaires < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::CartesBancaires::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::CartesBancaires::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::CartesBancaires::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::CartesBancaires::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Cashapp < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Cashapp::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Cashapp::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Cashapp::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Cashapp::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class CustomerBalance < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::CustomerBalance::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::CustomerBalance::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::CustomerBalance::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::CustomerBalance::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Eps < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Eps::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Eps::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Eps::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Eps::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Fpx < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Fpx::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Fpx::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Fpx::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Fpx::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Giropay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Giropay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Giropay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Giropay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Giropay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class GooglePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::GooglePay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::GooglePay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::GooglePay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::GooglePay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Grabpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Grabpay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Grabpay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Grabpay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Grabpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Ideal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Ideal::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Ideal::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Ideal::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Ideal::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Jcb < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Jcb::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Jcb::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Jcb::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Jcb::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class KakaoPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::KakaoPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::KakaoPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::KakaoPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::KakaoPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Klarna < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Klarna::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Klarna::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Klarna::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Klarna::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Konbini < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Konbini::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Konbini::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Konbini::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Konbini::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class KrCard < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::KrCard::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::KrCard::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::KrCard::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::KrCard::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Link < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Link::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Link::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Link::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Link::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Mobilepay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Mobilepay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Mobilepay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Mobilepay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Mobilepay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Multibanco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Multibanco::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Multibanco::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Multibanco::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Multibanco::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class NaverPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::NaverPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::NaverPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::NaverPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::NaverPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class NzBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::NzBankAccount::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::NzBankAccount::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::NzBankAccount::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::NzBankAccount::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Oxxo < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Oxxo::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Oxxo::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Oxxo::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Oxxo::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class P24 < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::P24::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::P24::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::P24::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::P24::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class PayByBank < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::PayByBank::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::PayByBank::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::PayByBank::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::PayByBank::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Payco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Payco::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Payco::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Payco::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Payco::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Paynow < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Paynow::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Paynow::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Paynow::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Paynow::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Paypal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Paypal::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Paypal::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Paypal::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Paypal::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Pix < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Pix::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Pix::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Pix::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Pix::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Promptpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Promptpay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Promptpay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Promptpay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Promptpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class RevolutPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::RevolutPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::RevolutPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::RevolutPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::RevolutPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class SamsungPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::SamsungPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::SamsungPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::SamsungPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::SamsungPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Satispay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Satispay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Satispay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Satispay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Satispay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class SepaDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::SepaDebit::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::SepaDebit::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::SepaDebit::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::SepaDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Sofort < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Sofort::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Sofort::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Sofort::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Sofort::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Swish < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Swish::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Swish::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Swish::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Swish::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Twint < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Twint::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Twint::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Twint::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Twint::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class UsBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::UsBankAccount::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::UsBankAccount::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::UsBankAccount::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::UsBankAccount::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class WechatPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::WechatPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::WechatPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::WechatPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::WechatPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Zip < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Zip::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Zip::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Zip::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Zip::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      # Canadian pre-authorized debit payments, check this [page](https://stripe.com/docs/payments/acss-debit) for more details like country availability.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AcssDebit))
       }
      def acss_debit; end
      sig {
        params(_acss_debit: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AcssDebit)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AcssDebit))
       }
      def acss_debit=(_acss_debit); end
      # [Affirm](https://www.affirm.com/) gives your customers a way to split purchases over a series of payments. Depending on the purchase, they can pay with four interest-free payments (Split Pay) or pay over a longer term (Installments), which might include interest. Check this [page](https://stripe.com/docs/payments/affirm) for more details like country availability.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Affirm)) }
      def affirm; end
      sig {
        params(_affirm: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Affirm)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Affirm))
       }
      def affirm=(_affirm); end
      # Afterpay gives your customers a way to pay for purchases in installments, check this [page](https://stripe.com/docs/payments/afterpay-clearpay) for more details like country availability. Afterpay is particularly popular among businesses selling fashion, beauty, and sports products.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AfterpayClearpay))
       }
      def afterpay_clearpay; end
      sig {
        params(_afterpay_clearpay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AfterpayClearpay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AfterpayClearpay))
       }
      def afterpay_clearpay=(_afterpay_clearpay); end
      # Alipay is a digital wallet in China that has more than a billion active users worldwide. Alipay users can pay on the web or on a mobile device using login credentials or their Alipay app. Alipay has a low dispute rate and reduces fraud by authenticating payments using the customer's login credentials. Check this [page](https://stripe.com/docs/payments/alipay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Alipay)) }
      def alipay; end
      sig {
        params(_alipay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Alipay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Alipay))
       }
      def alipay=(_alipay); end
      # Alma is a Buy Now, Pay Later payment method that offers customers the ability to pay in 2, 3, or 4 installments.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Alma)) }
      def alma; end
      sig {
        params(_alma: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Alma)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Alma))
       }
      def alma=(_alma); end
      # Amazon Pay is a wallet payment method that lets your customers check out the same way as on Amazon.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AmazonPay))
       }
      def amazon_pay; end
      sig {
        params(_amazon_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AmazonPay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AmazonPay))
       }
      def amazon_pay=(_amazon_pay); end
      # Stripe users can accept [Apple Pay](https://stripe.com/payments/apple-pay) in iOS applications in iOS 9 and later, and on the web in Safari starting with iOS 10 or macOS Sierra. There are no additional fees to process Apple Pay payments, and the [pricing](https://stripe.com/pricing) is the same as other card transactions. Check this [page](https://stripe.com/docs/apple-pay) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePay))
       }
      def apple_pay; end
      sig {
        params(_apple_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePay))
       }
      def apple_pay=(_apple_pay); end
      # Apple Pay Later, a payment method for customers to buy now and pay later, gives your customers a way to split purchases into four installments across six weeks.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePayLater))
       }
      def apple_pay_later; end
      sig {
        params(_apple_pay_later: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePayLater)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePayLater))
       }
      def apple_pay_later=(_apple_pay_later); end
      # Stripe users in Australia can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with an Australian bank account. Check this [page](https://stripe.com/docs/payments/au-becs-debit) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AuBecsDebit))
       }
      def au_becs_debit; end
      sig {
        params(_au_becs_debit: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AuBecsDebit)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AuBecsDebit))
       }
      def au_becs_debit=(_au_becs_debit); end
      # Stripe users in the UK can accept Bacs Direct Debit payments from customers with a UK bank account, check this [page](https://stripe.com/docs/payments/payment-methods/bacs-debit) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::BacsDebit))
       }
      def bacs_debit; end
      sig {
        params(_bacs_debit: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::BacsDebit)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::BacsDebit))
       }
      def bacs_debit=(_bacs_debit); end
      # Bancontact is the most popular online payment method in Belgium, with over 15 million cards in circulation. [Customers](https://stripe.com/docs/api/customers) use a Bancontact card or mobile app linked to a Belgian bank account to make online payments that are secure, guaranteed, and confirmed immediately. Check this [page](https://stripe.com/docs/payments/bancontact) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Bancontact))
       }
      def bancontact; end
      sig {
        params(_bancontact: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Bancontact)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Bancontact))
       }
      def bancontact=(_bancontact); end
      # Billie is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method that offers businesses Pay by Invoice where they offer payment terms ranging from 7-120 days. Customers are redirected from your website or app, authorize the payment with Billie, then return to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Billie)) }
      def billie; end
      sig {
        params(_billie: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Billie)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Billie))
       }
      def billie=(_billie); end
      # BLIK is a [single use](https://stripe.com/docs/payments/payment-methods#usage) payment method that requires customers to authenticate their payments. When customers want to pay online using BLIK, they request a six-digit code from their banking application and enter it into the payment collection form. Check this [page](https://stripe.com/docs/payments/blik) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Blik)) }
      def blik; end
      sig {
        params(_blik: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Blik)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Blik))
       }
      def blik=(_blik); end
      # Boleto is an official (regulated by the Central Bank of Brazil) payment method in Brazil. Check this [page](https://stripe.com/docs/payments/boleto) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Boleto)) }
      def boleto; end
      sig {
        params(_boleto: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Boleto)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Boleto))
       }
      def boleto=(_boleto); end
      # Cards are a popular way for consumers and businesses to pay online or in person. Stripe supports global and local card networks.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Card)) }
      def card; end
      sig {
        params(_card: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Card)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Card))
       }
      def card=(_card); end
      # Cartes Bancaires is France's local card network. More than 95% of these cards are co-branded with either Visa or Mastercard, meaning you can process these cards over either Cartes Bancaires or the Visa or Mastercard networks. Check this [page](https://stripe.com/docs/payments/cartes-bancaires) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::CartesBancaires))
       }
      def cartes_bancaires; end
      sig {
        params(_cartes_bancaires: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::CartesBancaires)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::CartesBancaires))
       }
      def cartes_bancaires=(_cartes_bancaires); end
      # Cash App is a popular consumer app in the US that allows customers to bank, invest, send, and receive money using their digital wallet. Check this [page](https://stripe.com/docs/payments/cash-app-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Cashapp)) }
      def cashapp; end
      sig {
        params(_cashapp: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Cashapp)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Cashapp))
       }
      def cashapp=(_cashapp); end
      # Uses a customer’s [cash balance](https://stripe.com/docs/payments/customer-balance) for the payment. The cash balance can be funded via a bank transfer. Check this [page](https://stripe.com/docs/payments/bank-transfers) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::CustomerBalance))
       }
      def customer_balance; end
      sig {
        params(_customer_balance: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::CustomerBalance)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::CustomerBalance))
       }
      def customer_balance=(_customer_balance); end
      # EPS is an Austria-based payment method that allows customers to complete transactions online using their bank credentials. EPS is supported by all Austrian banks and is accepted by over 80% of Austrian online retailers. Check this [page](https://stripe.com/docs/payments/eps) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Eps)) }
      def eps; end
      sig {
        params(_eps: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Eps)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Eps))
       }
      def eps=(_eps); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Financial Process Exchange (FPX) is a Malaysia-based payment method that allows customers to complete transactions online using their bank credentials. Bank Negara Malaysia (BNM), the Central Bank of Malaysia, and eleven other major Malaysian financial institutions are members of the PayNet Group, which owns and operates FPX. It is one of the most popular online payment methods in Malaysia, with nearly 90 million transactions in 2018 according to BNM. Check this [page](https://stripe.com/docs/payments/fpx) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Fpx)) }
      def fpx; end
      sig {
        params(_fpx: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Fpx)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Fpx))
       }
      def fpx=(_fpx); end
      # giropay is a German payment method based on online banking, introduced in 2006. It allows customers to complete transactions online using their online banking environment, with funds debited from their bank account. Depending on their bank, customers confirm payments on giropay using a second factor of authentication or a PIN. giropay accounts for 10% of online checkouts in Germany. Check this [page](https://stripe.com/docs/payments/giropay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Giropay)) }
      def giropay; end
      sig {
        params(_giropay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Giropay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Giropay))
       }
      def giropay=(_giropay); end
      # Google Pay allows customers to make payments in your app or website using any credit or debit card saved to their Google Account, including those from Google Play, YouTube, Chrome, or an Android device. Use the Google Pay API to request any credit or debit card stored in your customer's Google account. Check this [page](https://stripe.com/docs/google-pay) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::GooglePay))
       }
      def google_pay; end
      sig {
        params(_google_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::GooglePay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::GooglePay))
       }
      def google_pay=(_google_pay); end
      # GrabPay is a payment method developed by [Grab](https://www.grab.com/sg/consumer/finance/pay/). GrabPay is a digital wallet - customers maintain a balance in their wallets that they pay out with. Check this [page](https://stripe.com/docs/payments/grabpay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Grabpay)) }
      def grabpay; end
      sig {
        params(_grabpay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Grabpay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Grabpay))
       }
      def grabpay=(_grabpay); end
      # iDEAL is a Netherlands-based payment method that allows customers to complete transactions online using their bank credentials. All major Dutch banks are members of Currence, the scheme that operates iDEAL, making it the most popular online payment method in the Netherlands with a share of online transactions close to 55%. Check this [page](https://stripe.com/docs/payments/ideal) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Ideal)) }
      def ideal; end
      sig {
        params(_ideal: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Ideal)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Ideal))
       }
      def ideal=(_ideal); end
      # JCB is a credit card company based in Japan. JCB is currently available in Japan to businesses approved by JCB, and available to all businesses in Australia, Canada, Hong Kong, Japan, New Zealand, Singapore, Switzerland, United Kingdom, United States, and all countries in the European Economic Area except Iceland. Check this [page](https://support.stripe.com/questions/accepting-japan-credit-bureau-%28jcb%29-payments) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Jcb)) }
      def jcb; end
      sig {
        params(_jcb: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Jcb)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Jcb))
       }
      def jcb=(_jcb); end
      # Kakao Pay is a popular local wallet available in South Korea.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::KakaoPay))
       }
      def kakao_pay; end
      sig {
        params(_kakao_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::KakaoPay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::KakaoPay))
       }
      def kakao_pay=(_kakao_pay); end
      # Klarna gives customers a range of [payment options](https://stripe.com/docs/payments/klarna#payment-options) during checkout. Available payment options vary depending on the customer's billing address and the transaction amount. These payment options make it convenient for customers to purchase items in all price ranges. Check this [page](https://stripe.com/docs/payments/klarna) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Klarna)) }
      def klarna; end
      sig {
        params(_klarna: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Klarna)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Klarna))
       }
      def klarna=(_klarna); end
      # Konbini allows customers in Japan to pay for bills and online purchases at convenience stores with cash. Check this [page](https://stripe.com/docs/payments/konbini) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Konbini)) }
      def konbini; end
      sig {
        params(_konbini: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Konbini)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Konbini))
       }
      def konbini=(_konbini); end
      # Korean cards let users pay using locally issued cards from South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::KrCard)) }
      def kr_card; end
      sig {
        params(_kr_card: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::KrCard)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::KrCard))
       }
      def kr_card=(_kr_card); end
      # [Link](https://stripe.com/docs/payments/link) is a payment method network. With Link, users save their payment details once, then reuse that information to pay with one click for any business on the network.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Link)) }
      def link; end
      sig {
        params(_link: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Link)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Link))
       }
      def link=(_link); end
      # MobilePay is a [single-use](https://stripe.com/docs/payments/payment-methods#usage) card wallet payment method used in Denmark and Finland. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the MobilePay app. Check this [page](https://stripe.com/docs/payments/mobilepay) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Mobilepay))
       }
      def mobilepay; end
      sig {
        params(_mobilepay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Mobilepay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Mobilepay))
       }
      def mobilepay=(_mobilepay); end
      # Stripe users in Europe and the United States can accept Multibanco payments from customers in Portugal using [Sources](https://stripe.com/docs/sources)—a single integration path for creating payments using any supported method.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Multibanco))
       }
      def multibanco; end
      sig {
        params(_multibanco: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Multibanco)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Multibanco))
       }
      def multibanco=(_multibanco); end
      # Configuration name.
      sig { returns(T.nilable(String)) }
      def name; end
      sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_name); end
      # Naver Pay is a popular local wallet available in South Korea.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::NaverPay))
       }
      def naver_pay; end
      sig {
        params(_naver_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::NaverPay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::NaverPay))
       }
      def naver_pay=(_naver_pay); end
      # Stripe users in New Zealand can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with a New Zeland bank account. Check this [page](https://stripe.com/docs/payments/nz-bank-account) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::NzBankAccount))
       }
      def nz_bank_account; end
      sig {
        params(_nz_bank_account: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::NzBankAccount)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::NzBankAccount))
       }
      def nz_bank_account=(_nz_bank_account); end
      # OXXO is a Mexican chain of convenience stores with thousands of locations across Latin America and represents nearly 20% of online transactions in Mexico. OXXO allows customers to pay bills and online purchases in-store with cash. Check this [page](https://stripe.com/docs/payments/oxxo) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Oxxo)) }
      def oxxo; end
      sig {
        params(_oxxo: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Oxxo)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Oxxo))
       }
      def oxxo=(_oxxo); end
      # Przelewy24 is a Poland-based payment method aggregator that allows customers to complete transactions online using bank transfers and other methods. Bank transfers account for 30% of online payments in Poland and Przelewy24 provides a way for customers to pay with over 165 banks. Check this [page](https://stripe.com/docs/payments/p24) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::P24)) }
      def p24; end
      sig {
        params(_p24: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::P24)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::P24))
       }
      def p24=(_p24); end
      # Configuration's parent configuration. Specify to create a child configuration.
      sig { returns(T.nilable(String)) }
      def parent; end
      sig { params(_parent: T.nilable(String)).returns(T.nilable(String)) }
      def parent=(_parent); end
      # Pay by bank is a redirect payment method backed by bank transfers. A customer is redirected to their bank to authorize a bank transfer for a given amount. This removes a lot of the error risks inherent in waiting for the customer to initiate a transfer themselves, and is less expensive than card payments.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::PayByBank))
       }
      def pay_by_bank; end
      sig {
        params(_pay_by_bank: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::PayByBank)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::PayByBank))
       }
      def pay_by_bank=(_pay_by_bank); end
      # PAYCO is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Payco)) }
      def payco; end
      sig {
        params(_payco: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Payco)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Payco))
       }
      def payco=(_payco); end
      # PayNow is a Singapore-based payment method that allows customers to make a payment using their preferred app from participating banks and participating non-bank financial institutions. Check this [page](https://stripe.com/docs/payments/paynow) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Paynow)) }
      def paynow; end
      sig {
        params(_paynow: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Paynow)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Paynow))
       }
      def paynow=(_paynow); end
      # PayPal, a digital wallet popular with customers in Europe, allows your customers worldwide to pay using their PayPal account. Check this [page](https://stripe.com/docs/payments/paypal) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Paypal)) }
      def paypal; end
      sig {
        params(_paypal: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Paypal)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Paypal))
       }
      def paypal=(_paypal); end
      # Pix is a payment method popular in Brazil. When paying with Pix, customers authenticate and approve payments by scanning a QR code in their preferred banking app. Check this [page](https://docs.stripe.com/payments/pix) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Pix)) }
      def pix; end
      sig {
        params(_pix: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Pix)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Pix))
       }
      def pix=(_pix); end
      # PromptPay is a Thailand-based payment method that allows customers to make a payment using their preferred app from participating banks. Check this [page](https://stripe.com/docs/payments/promptpay) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Promptpay))
       }
      def promptpay; end
      sig {
        params(_promptpay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Promptpay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Promptpay))
       }
      def promptpay=(_promptpay); end
      # Revolut Pay, developed by Revolut, a global finance app, is a digital wallet payment method. Revolut Pay uses the customer’s stored balance or cards to fund the payment, and offers the option for non-Revolut customers to save their details after their first purchase.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::RevolutPay))
       }
      def revolut_pay; end
      sig {
        params(_revolut_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::RevolutPay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::RevolutPay))
       }
      def revolut_pay=(_revolut_pay); end
      # Samsung Pay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::SamsungPay))
       }
      def samsung_pay; end
      sig {
        params(_samsung_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::SamsungPay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::SamsungPay))
       }
      def samsung_pay=(_samsung_pay); end
      # Satispay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method where customers are required to [authenticate](/payments/payment-methods#customer-actions) their payment. Customers pay by being redirected from your website or app, authorizing the payment with Satispay, then returning to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Satispay))
       }
      def satispay; end
      sig {
        params(_satispay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Satispay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Satispay))
       }
      def satispay=(_satispay); end
      # The [Single Euro Payments Area (SEPA)](https://en.wikipedia.org/wiki/Single_Euro_Payments_Area) is an initiative of the European Union to simplify payments within and across member countries. SEPA established and enforced banking standards to allow for the direct debiting of every EUR-denominated bank account within the SEPA region, check this [page](https://stripe.com/docs/payments/sepa-debit) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::SepaDebit))
       }
      def sepa_debit; end
      sig {
        params(_sepa_debit: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::SepaDebit)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::SepaDebit))
       }
      def sepa_debit=(_sepa_debit); end
      # Stripe users in Europe and the United States can use the [Payment Intents API](https://stripe.com/docs/payments/payment-intents)—a single integration path for creating payments using any supported method—to accept [Sofort](https://www.sofort.com/) payments from customers. Check this [page](https://stripe.com/docs/payments/sofort) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Sofort)) }
      def sofort; end
      sig {
        params(_sofort: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Sofort)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Sofort))
       }
      def sofort=(_sofort); end
      # Swish is a [real-time](https://stripe.com/docs/payments/real-time) payment method popular in Sweden. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the Swish mobile app and the Swedish BankID mobile app. Check this [page](https://stripe.com/docs/payments/swish) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Swish)) }
      def swish; end
      sig {
        params(_swish: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Swish)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Swish))
       }
      def swish=(_swish); end
      # Twint is a payment method popular in Switzerland. It allows customers to pay using their mobile phone. Check this [page](https://docs.stripe.com/payments/twint) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Twint)) }
      def twint; end
      sig {
        params(_twint: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Twint)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Twint))
       }
      def twint=(_twint); end
      # Stripe users in the United States can accept ACH direct debit payments from customers with a US bank account using the Automated Clearing House (ACH) payments system operated by Nacha. Check this [page](https://stripe.com/docs/payments/ach-direct-debit) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::UsBankAccount))
       }
      def us_bank_account; end
      sig {
        params(_us_bank_account: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::UsBankAccount)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::UsBankAccount))
       }
      def us_bank_account=(_us_bank_account); end
      # WeChat, owned by Tencent, is China's leading mobile app with over 1 billion monthly active users. Chinese consumers can use WeChat Pay to pay for goods and services inside of businesses' apps and websites. WeChat Pay users buy most frequently in gaming, e-commerce, travel, online education, and food/nutrition. Check this [page](https://stripe.com/docs/payments/wechat-pay) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::WechatPay))
       }
      def wechat_pay; end
      sig {
        params(_wechat_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::WechatPay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::WechatPay))
       }
      def wechat_pay=(_wechat_pay); end
      # Zip gives your customers a way to split purchases over a series of payments. Check this [page](https://stripe.com/docs/payments/zip) for more details like country availability.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Zip)) }
      def zip; end
      sig {
        params(_zip: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Zip)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Zip))
       }
      def zip=(_zip); end
      sig {
        params(acss_debit: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AcssDebit), affirm: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Affirm), afterpay_clearpay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AfterpayClearpay), alipay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Alipay), alma: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Alma), amazon_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AmazonPay), apple_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePay), apple_pay_later: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePayLater), au_becs_debit: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::AuBecsDebit), bacs_debit: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::BacsDebit), bancontact: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Bancontact), billie: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Billie), blik: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Blik), boleto: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Boleto), card: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Card), cartes_bancaires: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::CartesBancaires), cashapp: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Cashapp), customer_balance: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::CustomerBalance), eps: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Eps), expand: T.nilable(T::Array[String]), fpx: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Fpx), giropay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Giropay), google_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::GooglePay), grabpay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Grabpay), ideal: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Ideal), jcb: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Jcb), kakao_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::KakaoPay), klarna: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Klarna), konbini: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Konbini), kr_card: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::KrCard), link: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Link), mobilepay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Mobilepay), multibanco: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Multibanco), name: T.nilable(String), naver_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::NaverPay), nz_bank_account: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::NzBankAccount), oxxo: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Oxxo), p24: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::P24), parent: T.nilable(String), pay_by_bank: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::PayByBank), payco: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Payco), paynow: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Paynow), paypal: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Paypal), pix: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Pix), promptpay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Promptpay), revolut_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::RevolutPay), samsung_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::SamsungPay), satispay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Satispay), sepa_debit: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::SepaDebit), sofort: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Sofort), swish: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Swish), twint: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Twint), us_bank_account: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::UsBankAccount), wechat_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::WechatPay), zip: T.nilable(::Stripe::PaymentMethodConfigurationService::CreateParams::Zip)).void
       }
      def initialize(
        acss_debit: nil,
        affirm: nil,
        afterpay_clearpay: nil,
        alipay: nil,
        alma: nil,
        amazon_pay: nil,
        apple_pay: nil,
        apple_pay_later: nil,
        au_becs_debit: nil,
        bacs_debit: nil,
        bancontact: nil,
        billie: nil,
        blik: nil,
        boleto: nil,
        card: nil,
        cartes_bancaires: nil,
        cashapp: nil,
        customer_balance: nil,
        eps: nil,
        expand: nil,
        fpx: nil,
        giropay: nil,
        google_pay: nil,
        grabpay: nil,
        ideal: nil,
        jcb: nil,
        kakao_pay: nil,
        klarna: nil,
        konbini: nil,
        kr_card: nil,
        link: nil,
        mobilepay: nil,
        multibanco: nil,
        name: nil,
        naver_pay: nil,
        nz_bank_account: nil,
        oxxo: nil,
        p24: nil,
        parent: nil,
        pay_by_bank: nil,
        payco: nil,
        paynow: nil,
        paypal: nil,
        pix: nil,
        promptpay: nil,
        revolut_pay: nil,
        samsung_pay: nil,
        satispay: nil,
        sepa_debit: nil,
        sofort: nil,
        swish: nil,
        twint: nil,
        us_bank_account: nil,
        wechat_pay: nil,
        zip: nil
      ); end
    end
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
      class AcssDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AcssDebit::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AcssDebit::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AcssDebit::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AcssDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Affirm < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Affirm::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Affirm::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Affirm::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Affirm::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AfterpayClearpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AfterpayClearpay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AfterpayClearpay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AfterpayClearpay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AfterpayClearpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Alipay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alipay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alipay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alipay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alipay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Alma < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alma::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alma::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alma::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alma::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AmazonPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AmazonPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AmazonPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AmazonPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AmazonPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePayLater < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePayLater::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePayLater::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePayLater::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePayLater::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AuBecsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AuBecsDebit::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AuBecsDebit::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AuBecsDebit::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AuBecsDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class BacsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::BacsDebit::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::BacsDebit::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::BacsDebit::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::BacsDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Bancontact < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Bancontact::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Bancontact::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Bancontact::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Bancontact::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Billie < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Billie::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Billie::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Billie::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Billie::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Blik < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Blik::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Blik::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Blik::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Blik::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Boleto < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Boleto::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Boleto::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Boleto::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Boleto::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Card < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Card::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Card::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Card::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Card::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class CartesBancaires < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::CartesBancaires::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::CartesBancaires::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::CartesBancaires::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::CartesBancaires::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Cashapp < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Cashapp::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Cashapp::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Cashapp::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Cashapp::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class CustomerBalance < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::CustomerBalance::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::CustomerBalance::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::CustomerBalance::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::CustomerBalance::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Eps < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Eps::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Eps::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Eps::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Eps::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Fpx < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Fpx::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Fpx::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Fpx::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Fpx::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Giropay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Giropay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Giropay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Giropay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Giropay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class GooglePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::GooglePay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::GooglePay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::GooglePay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::GooglePay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Grabpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Grabpay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Grabpay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Grabpay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Grabpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Ideal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Ideal::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Ideal::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Ideal::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Ideal::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Jcb < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Jcb::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Jcb::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Jcb::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Jcb::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class KakaoPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::KakaoPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::KakaoPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::KakaoPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::KakaoPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Klarna < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Klarna::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Klarna::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Klarna::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Klarna::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Konbini < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Konbini::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Konbini::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Konbini::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Konbini::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class KrCard < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::KrCard::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::KrCard::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::KrCard::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::KrCard::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Link < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Link::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Link::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Link::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Link::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Mobilepay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Mobilepay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Mobilepay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Mobilepay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Mobilepay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Multibanco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Multibanco::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Multibanco::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Multibanco::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Multibanco::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class NaverPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::NaverPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::NaverPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::NaverPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::NaverPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class NzBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::NzBankAccount::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::NzBankAccount::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::NzBankAccount::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::NzBankAccount::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Oxxo < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Oxxo::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Oxxo::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Oxxo::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Oxxo::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class P24 < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::P24::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::P24::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::P24::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::P24::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class PayByBank < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::PayByBank::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::PayByBank::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::PayByBank::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::PayByBank::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Payco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Payco::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Payco::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Payco::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Payco::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Paynow < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paynow::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paynow::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paynow::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paynow::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Paypal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paypal::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paypal::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paypal::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paypal::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Pix < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Pix::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Pix::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Pix::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Pix::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Promptpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Promptpay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Promptpay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Promptpay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Promptpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class RevolutPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::RevolutPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::RevolutPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::RevolutPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::RevolutPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class SamsungPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::SamsungPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::SamsungPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::SamsungPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::SamsungPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Satispay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Satispay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Satispay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Satispay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Satispay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class SepaDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::SepaDebit::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::SepaDebit::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::SepaDebit::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::SepaDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Sofort < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Sofort::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Sofort::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Sofort::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Sofort::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Swish < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Swish::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Swish::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Swish::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Swish::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Twint < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Twint::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Twint::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Twint::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Twint::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class UsBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::UsBankAccount::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::UsBankAccount::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::UsBankAccount::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::UsBankAccount::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class WechatPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::WechatPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::WechatPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::WechatPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::WechatPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Zip < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Zip::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Zip::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Zip::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Zip::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      # Canadian pre-authorized debit payments, check this [page](https://stripe.com/docs/payments/acss-debit) for more details like country availability.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AcssDebit))
       }
      def acss_debit; end
      sig {
        params(_acss_debit: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AcssDebit)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AcssDebit))
       }
      def acss_debit=(_acss_debit); end
      # Whether the configuration can be used for new payments.
      sig { returns(T.nilable(T::Boolean)) }
      def active; end
      sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def active=(_active); end
      # [Affirm](https://www.affirm.com/) gives your customers a way to split purchases over a series of payments. Depending on the purchase, they can pay with four interest-free payments (Split Pay) or pay over a longer term (Installments), which might include interest. Check this [page](https://stripe.com/docs/payments/affirm) for more details like country availability.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Affirm)) }
      def affirm; end
      sig {
        params(_affirm: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Affirm)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Affirm))
       }
      def affirm=(_affirm); end
      # Afterpay gives your customers a way to pay for purchases in installments, check this [page](https://stripe.com/docs/payments/afterpay-clearpay) for more details like country availability. Afterpay is particularly popular among businesses selling fashion, beauty, and sports products.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AfterpayClearpay))
       }
      def afterpay_clearpay; end
      sig {
        params(_afterpay_clearpay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AfterpayClearpay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AfterpayClearpay))
       }
      def afterpay_clearpay=(_afterpay_clearpay); end
      # Alipay is a digital wallet in China that has more than a billion active users worldwide. Alipay users can pay on the web or on a mobile device using login credentials or their Alipay app. Alipay has a low dispute rate and reduces fraud by authenticating payments using the customer's login credentials. Check this [page](https://stripe.com/docs/payments/alipay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alipay)) }
      def alipay; end
      sig {
        params(_alipay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alipay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alipay))
       }
      def alipay=(_alipay); end
      # Alma is a Buy Now, Pay Later payment method that offers customers the ability to pay in 2, 3, or 4 installments.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alma)) }
      def alma; end
      sig {
        params(_alma: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alma)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alma))
       }
      def alma=(_alma); end
      # Amazon Pay is a wallet payment method that lets your customers check out the same way as on Amazon.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AmazonPay))
       }
      def amazon_pay; end
      sig {
        params(_amazon_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AmazonPay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AmazonPay))
       }
      def amazon_pay=(_amazon_pay); end
      # Stripe users can accept [Apple Pay](https://stripe.com/payments/apple-pay) in iOS applications in iOS 9 and later, and on the web in Safari starting with iOS 10 or macOS Sierra. There are no additional fees to process Apple Pay payments, and the [pricing](https://stripe.com/pricing) is the same as other card transactions. Check this [page](https://stripe.com/docs/apple-pay) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePay))
       }
      def apple_pay; end
      sig {
        params(_apple_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePay))
       }
      def apple_pay=(_apple_pay); end
      # Apple Pay Later, a payment method for customers to buy now and pay later, gives your customers a way to split purchases into four installments across six weeks.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePayLater))
       }
      def apple_pay_later; end
      sig {
        params(_apple_pay_later: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePayLater)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePayLater))
       }
      def apple_pay_later=(_apple_pay_later); end
      # Stripe users in Australia can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with an Australian bank account. Check this [page](https://stripe.com/docs/payments/au-becs-debit) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AuBecsDebit))
       }
      def au_becs_debit; end
      sig {
        params(_au_becs_debit: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AuBecsDebit)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AuBecsDebit))
       }
      def au_becs_debit=(_au_becs_debit); end
      # Stripe users in the UK can accept Bacs Direct Debit payments from customers with a UK bank account, check this [page](https://stripe.com/docs/payments/payment-methods/bacs-debit) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::BacsDebit))
       }
      def bacs_debit; end
      sig {
        params(_bacs_debit: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::BacsDebit)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::BacsDebit))
       }
      def bacs_debit=(_bacs_debit); end
      # Bancontact is the most popular online payment method in Belgium, with over 15 million cards in circulation. [Customers](https://stripe.com/docs/api/customers) use a Bancontact card or mobile app linked to a Belgian bank account to make online payments that are secure, guaranteed, and confirmed immediately. Check this [page](https://stripe.com/docs/payments/bancontact) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Bancontact))
       }
      def bancontact; end
      sig {
        params(_bancontact: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Bancontact)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Bancontact))
       }
      def bancontact=(_bancontact); end
      # Billie is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method that offers businesses Pay by Invoice where they offer payment terms ranging from 7-120 days. Customers are redirected from your website or app, authorize the payment with Billie, then return to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Billie)) }
      def billie; end
      sig {
        params(_billie: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Billie)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Billie))
       }
      def billie=(_billie); end
      # BLIK is a [single use](https://stripe.com/docs/payments/payment-methods#usage) payment method that requires customers to authenticate their payments. When customers want to pay online using BLIK, they request a six-digit code from their banking application and enter it into the payment collection form. Check this [page](https://stripe.com/docs/payments/blik) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Blik)) }
      def blik; end
      sig {
        params(_blik: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Blik)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Blik))
       }
      def blik=(_blik); end
      # Boleto is an official (regulated by the Central Bank of Brazil) payment method in Brazil. Check this [page](https://stripe.com/docs/payments/boleto) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Boleto)) }
      def boleto; end
      sig {
        params(_boleto: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Boleto)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Boleto))
       }
      def boleto=(_boleto); end
      # Cards are a popular way for consumers and businesses to pay online or in person. Stripe supports global and local card networks.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Card)) }
      def card; end
      sig {
        params(_card: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Card)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Card))
       }
      def card=(_card); end
      # Cartes Bancaires is France's local card network. More than 95% of these cards are co-branded with either Visa or Mastercard, meaning you can process these cards over either Cartes Bancaires or the Visa or Mastercard networks. Check this [page](https://stripe.com/docs/payments/cartes-bancaires) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::CartesBancaires))
       }
      def cartes_bancaires; end
      sig {
        params(_cartes_bancaires: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::CartesBancaires)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::CartesBancaires))
       }
      def cartes_bancaires=(_cartes_bancaires); end
      # Cash App is a popular consumer app in the US that allows customers to bank, invest, send, and receive money using their digital wallet. Check this [page](https://stripe.com/docs/payments/cash-app-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Cashapp)) }
      def cashapp; end
      sig {
        params(_cashapp: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Cashapp)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Cashapp))
       }
      def cashapp=(_cashapp); end
      # Uses a customer’s [cash balance](https://stripe.com/docs/payments/customer-balance) for the payment. The cash balance can be funded via a bank transfer. Check this [page](https://stripe.com/docs/payments/bank-transfers) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::CustomerBalance))
       }
      def customer_balance; end
      sig {
        params(_customer_balance: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::CustomerBalance)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::CustomerBalance))
       }
      def customer_balance=(_customer_balance); end
      # EPS is an Austria-based payment method that allows customers to complete transactions online using their bank credentials. EPS is supported by all Austrian banks and is accepted by over 80% of Austrian online retailers. Check this [page](https://stripe.com/docs/payments/eps) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Eps)) }
      def eps; end
      sig {
        params(_eps: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Eps)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Eps))
       }
      def eps=(_eps); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Financial Process Exchange (FPX) is a Malaysia-based payment method that allows customers to complete transactions online using their bank credentials. Bank Negara Malaysia (BNM), the Central Bank of Malaysia, and eleven other major Malaysian financial institutions are members of the PayNet Group, which owns and operates FPX. It is one of the most popular online payment methods in Malaysia, with nearly 90 million transactions in 2018 according to BNM. Check this [page](https://stripe.com/docs/payments/fpx) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Fpx)) }
      def fpx; end
      sig {
        params(_fpx: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Fpx)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Fpx))
       }
      def fpx=(_fpx); end
      # giropay is a German payment method based on online banking, introduced in 2006. It allows customers to complete transactions online using their online banking environment, with funds debited from their bank account. Depending on their bank, customers confirm payments on giropay using a second factor of authentication or a PIN. giropay accounts for 10% of online checkouts in Germany. Check this [page](https://stripe.com/docs/payments/giropay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Giropay)) }
      def giropay; end
      sig {
        params(_giropay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Giropay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Giropay))
       }
      def giropay=(_giropay); end
      # Google Pay allows customers to make payments in your app or website using any credit or debit card saved to their Google Account, including those from Google Play, YouTube, Chrome, or an Android device. Use the Google Pay API to request any credit or debit card stored in your customer's Google account. Check this [page](https://stripe.com/docs/google-pay) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::GooglePay))
       }
      def google_pay; end
      sig {
        params(_google_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::GooglePay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::GooglePay))
       }
      def google_pay=(_google_pay); end
      # GrabPay is a payment method developed by [Grab](https://www.grab.com/sg/consumer/finance/pay/). GrabPay is a digital wallet - customers maintain a balance in their wallets that they pay out with. Check this [page](https://stripe.com/docs/payments/grabpay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Grabpay)) }
      def grabpay; end
      sig {
        params(_grabpay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Grabpay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Grabpay))
       }
      def grabpay=(_grabpay); end
      # iDEAL is a Netherlands-based payment method that allows customers to complete transactions online using their bank credentials. All major Dutch banks are members of Currence, the scheme that operates iDEAL, making it the most popular online payment method in the Netherlands with a share of online transactions close to 55%. Check this [page](https://stripe.com/docs/payments/ideal) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Ideal)) }
      def ideal; end
      sig {
        params(_ideal: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Ideal)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Ideal))
       }
      def ideal=(_ideal); end
      # JCB is a credit card company based in Japan. JCB is currently available in Japan to businesses approved by JCB, and available to all businesses in Australia, Canada, Hong Kong, Japan, New Zealand, Singapore, Switzerland, United Kingdom, United States, and all countries in the European Economic Area except Iceland. Check this [page](https://support.stripe.com/questions/accepting-japan-credit-bureau-%28jcb%29-payments) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Jcb)) }
      def jcb; end
      sig {
        params(_jcb: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Jcb)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Jcb))
       }
      def jcb=(_jcb); end
      # Kakao Pay is a popular local wallet available in South Korea.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::KakaoPay))
       }
      def kakao_pay; end
      sig {
        params(_kakao_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::KakaoPay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::KakaoPay))
       }
      def kakao_pay=(_kakao_pay); end
      # Klarna gives customers a range of [payment options](https://stripe.com/docs/payments/klarna#payment-options) during checkout. Available payment options vary depending on the customer's billing address and the transaction amount. These payment options make it convenient for customers to purchase items in all price ranges. Check this [page](https://stripe.com/docs/payments/klarna) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Klarna)) }
      def klarna; end
      sig {
        params(_klarna: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Klarna)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Klarna))
       }
      def klarna=(_klarna); end
      # Konbini allows customers in Japan to pay for bills and online purchases at convenience stores with cash. Check this [page](https://stripe.com/docs/payments/konbini) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Konbini)) }
      def konbini; end
      sig {
        params(_konbini: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Konbini)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Konbini))
       }
      def konbini=(_konbini); end
      # Korean cards let users pay using locally issued cards from South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::KrCard)) }
      def kr_card; end
      sig {
        params(_kr_card: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::KrCard)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::KrCard))
       }
      def kr_card=(_kr_card); end
      # [Link](https://stripe.com/docs/payments/link) is a payment method network. With Link, users save their payment details once, then reuse that information to pay with one click for any business on the network.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Link)) }
      def link; end
      sig {
        params(_link: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Link)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Link))
       }
      def link=(_link); end
      # MobilePay is a [single-use](https://stripe.com/docs/payments/payment-methods#usage) card wallet payment method used in Denmark and Finland. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the MobilePay app. Check this [page](https://stripe.com/docs/payments/mobilepay) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Mobilepay))
       }
      def mobilepay; end
      sig {
        params(_mobilepay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Mobilepay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Mobilepay))
       }
      def mobilepay=(_mobilepay); end
      # Stripe users in Europe and the United States can accept Multibanco payments from customers in Portugal using [Sources](https://stripe.com/docs/sources)—a single integration path for creating payments using any supported method.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Multibanco))
       }
      def multibanco; end
      sig {
        params(_multibanco: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Multibanco)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Multibanco))
       }
      def multibanco=(_multibanco); end
      # Configuration name.
      sig { returns(T.nilable(String)) }
      def name; end
      sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_name); end
      # Naver Pay is a popular local wallet available in South Korea.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::NaverPay))
       }
      def naver_pay; end
      sig {
        params(_naver_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::NaverPay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::NaverPay))
       }
      def naver_pay=(_naver_pay); end
      # Stripe users in New Zealand can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with a New Zeland bank account. Check this [page](https://stripe.com/docs/payments/nz-bank-account) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::NzBankAccount))
       }
      def nz_bank_account; end
      sig {
        params(_nz_bank_account: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::NzBankAccount)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::NzBankAccount))
       }
      def nz_bank_account=(_nz_bank_account); end
      # OXXO is a Mexican chain of convenience stores with thousands of locations across Latin America and represents nearly 20% of online transactions in Mexico. OXXO allows customers to pay bills and online purchases in-store with cash. Check this [page](https://stripe.com/docs/payments/oxxo) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Oxxo)) }
      def oxxo; end
      sig {
        params(_oxxo: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Oxxo)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Oxxo))
       }
      def oxxo=(_oxxo); end
      # Przelewy24 is a Poland-based payment method aggregator that allows customers to complete transactions online using bank transfers and other methods. Bank transfers account for 30% of online payments in Poland and Przelewy24 provides a way for customers to pay with over 165 banks. Check this [page](https://stripe.com/docs/payments/p24) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::P24)) }
      def p24; end
      sig {
        params(_p24: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::P24)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::P24))
       }
      def p24=(_p24); end
      # Pay by bank is a redirect payment method backed by bank transfers. A customer is redirected to their bank to authorize a bank transfer for a given amount. This removes a lot of the error risks inherent in waiting for the customer to initiate a transfer themselves, and is less expensive than card payments.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::PayByBank))
       }
      def pay_by_bank; end
      sig {
        params(_pay_by_bank: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::PayByBank)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::PayByBank))
       }
      def pay_by_bank=(_pay_by_bank); end
      # PAYCO is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Payco)) }
      def payco; end
      sig {
        params(_payco: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Payco)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Payco))
       }
      def payco=(_payco); end
      # PayNow is a Singapore-based payment method that allows customers to make a payment using their preferred app from participating banks and participating non-bank financial institutions. Check this [page](https://stripe.com/docs/payments/paynow) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paynow)) }
      def paynow; end
      sig {
        params(_paynow: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paynow)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paynow))
       }
      def paynow=(_paynow); end
      # PayPal, a digital wallet popular with customers in Europe, allows your customers worldwide to pay using their PayPal account. Check this [page](https://stripe.com/docs/payments/paypal) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paypal)) }
      def paypal; end
      sig {
        params(_paypal: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paypal)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paypal))
       }
      def paypal=(_paypal); end
      # Pix is a payment method popular in Brazil. When paying with Pix, customers authenticate and approve payments by scanning a QR code in their preferred banking app. Check this [page](https://docs.stripe.com/payments/pix) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Pix)) }
      def pix; end
      sig {
        params(_pix: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Pix)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Pix))
       }
      def pix=(_pix); end
      # PromptPay is a Thailand-based payment method that allows customers to make a payment using their preferred app from participating banks. Check this [page](https://stripe.com/docs/payments/promptpay) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Promptpay))
       }
      def promptpay; end
      sig {
        params(_promptpay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Promptpay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Promptpay))
       }
      def promptpay=(_promptpay); end
      # Revolut Pay, developed by Revolut, a global finance app, is a digital wallet payment method. Revolut Pay uses the customer’s stored balance or cards to fund the payment, and offers the option for non-Revolut customers to save their details after their first purchase.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::RevolutPay))
       }
      def revolut_pay; end
      sig {
        params(_revolut_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::RevolutPay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::RevolutPay))
       }
      def revolut_pay=(_revolut_pay); end
      # Samsung Pay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::SamsungPay))
       }
      def samsung_pay; end
      sig {
        params(_samsung_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::SamsungPay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::SamsungPay))
       }
      def samsung_pay=(_samsung_pay); end
      # Satispay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method where customers are required to [authenticate](/payments/payment-methods#customer-actions) their payment. Customers pay by being redirected from your website or app, authorizing the payment with Satispay, then returning to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Satispay))
       }
      def satispay; end
      sig {
        params(_satispay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Satispay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Satispay))
       }
      def satispay=(_satispay); end
      # The [Single Euro Payments Area (SEPA)](https://en.wikipedia.org/wiki/Single_Euro_Payments_Area) is an initiative of the European Union to simplify payments within and across member countries. SEPA established and enforced banking standards to allow for the direct debiting of every EUR-denominated bank account within the SEPA region, check this [page](https://stripe.com/docs/payments/sepa-debit) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::SepaDebit))
       }
      def sepa_debit; end
      sig {
        params(_sepa_debit: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::SepaDebit)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::SepaDebit))
       }
      def sepa_debit=(_sepa_debit); end
      # Stripe users in Europe and the United States can use the [Payment Intents API](https://stripe.com/docs/payments/payment-intents)—a single integration path for creating payments using any supported method—to accept [Sofort](https://www.sofort.com/) payments from customers. Check this [page](https://stripe.com/docs/payments/sofort) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Sofort)) }
      def sofort; end
      sig {
        params(_sofort: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Sofort)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Sofort))
       }
      def sofort=(_sofort); end
      # Swish is a [real-time](https://stripe.com/docs/payments/real-time) payment method popular in Sweden. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the Swish mobile app and the Swedish BankID mobile app. Check this [page](https://stripe.com/docs/payments/swish) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Swish)) }
      def swish; end
      sig {
        params(_swish: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Swish)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Swish))
       }
      def swish=(_swish); end
      # Twint is a payment method popular in Switzerland. It allows customers to pay using their mobile phone. Check this [page](https://docs.stripe.com/payments/twint) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Twint)) }
      def twint; end
      sig {
        params(_twint: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Twint)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Twint))
       }
      def twint=(_twint); end
      # Stripe users in the United States can accept ACH direct debit payments from customers with a US bank account using the Automated Clearing House (ACH) payments system operated by Nacha. Check this [page](https://stripe.com/docs/payments/ach-direct-debit) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::UsBankAccount))
       }
      def us_bank_account; end
      sig {
        params(_us_bank_account: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::UsBankAccount)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::UsBankAccount))
       }
      def us_bank_account=(_us_bank_account); end
      # WeChat, owned by Tencent, is China's leading mobile app with over 1 billion monthly active users. Chinese consumers can use WeChat Pay to pay for goods and services inside of businesses' apps and websites. WeChat Pay users buy most frequently in gaming, e-commerce, travel, online education, and food/nutrition. Check this [page](https://stripe.com/docs/payments/wechat-pay) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::WechatPay))
       }
      def wechat_pay; end
      sig {
        params(_wechat_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::WechatPay)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::WechatPay))
       }
      def wechat_pay=(_wechat_pay); end
      # Zip gives your customers a way to split purchases over a series of payments. Check this [page](https://stripe.com/docs/payments/zip) for more details like country availability.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Zip)) }
      def zip; end
      sig {
        params(_zip: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Zip)).returns(T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Zip))
       }
      def zip=(_zip); end
      sig {
        params(acss_debit: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AcssDebit), active: T.nilable(T::Boolean), affirm: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Affirm), afterpay_clearpay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AfterpayClearpay), alipay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alipay), alma: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alma), amazon_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AmazonPay), apple_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePay), apple_pay_later: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePayLater), au_becs_debit: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::AuBecsDebit), bacs_debit: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::BacsDebit), bancontact: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Bancontact), billie: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Billie), blik: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Blik), boleto: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Boleto), card: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Card), cartes_bancaires: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::CartesBancaires), cashapp: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Cashapp), customer_balance: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::CustomerBalance), eps: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Eps), expand: T.nilable(T::Array[String]), fpx: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Fpx), giropay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Giropay), google_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::GooglePay), grabpay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Grabpay), ideal: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Ideal), jcb: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Jcb), kakao_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::KakaoPay), klarna: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Klarna), konbini: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Konbini), kr_card: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::KrCard), link: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Link), mobilepay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Mobilepay), multibanco: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Multibanco), name: T.nilable(String), naver_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::NaverPay), nz_bank_account: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::NzBankAccount), oxxo: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Oxxo), p24: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::P24), pay_by_bank: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::PayByBank), payco: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Payco), paynow: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paynow), paypal: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paypal), pix: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Pix), promptpay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Promptpay), revolut_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::RevolutPay), samsung_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::SamsungPay), satispay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Satispay), sepa_debit: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::SepaDebit), sofort: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Sofort), swish: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Swish), twint: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Twint), us_bank_account: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::UsBankAccount), wechat_pay: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::WechatPay), zip: T.nilable(::Stripe::PaymentMethodConfigurationService::UpdateParams::Zip)).void
       }
      def initialize(
        acss_debit: nil,
        active: nil,
        affirm: nil,
        afterpay_clearpay: nil,
        alipay: nil,
        alma: nil,
        amazon_pay: nil,
        apple_pay: nil,
        apple_pay_later: nil,
        au_becs_debit: nil,
        bacs_debit: nil,
        bancontact: nil,
        billie: nil,
        blik: nil,
        boleto: nil,
        card: nil,
        cartes_bancaires: nil,
        cashapp: nil,
        customer_balance: nil,
        eps: nil,
        expand: nil,
        fpx: nil,
        giropay: nil,
        google_pay: nil,
        grabpay: nil,
        ideal: nil,
        jcb: nil,
        kakao_pay: nil,
        klarna: nil,
        konbini: nil,
        kr_card: nil,
        link: nil,
        mobilepay: nil,
        multibanco: nil,
        name: nil,
        naver_pay: nil,
        nz_bank_account: nil,
        oxxo: nil,
        p24: nil,
        pay_by_bank: nil,
        payco: nil,
        paynow: nil,
        paypal: nil,
        pix: nil,
        promptpay: nil,
        revolut_pay: nil,
        samsung_pay: nil,
        satispay: nil,
        sepa_debit: nil,
        sofort: nil,
        swish: nil,
        twint: nil,
        us_bank_account: nil,
        wechat_pay: nil,
        zip: nil
      ); end
    end
    # Creates a payment method configuration
    sig {
      params(params: T.any(::Stripe::PaymentMethodConfigurationService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethodConfiguration)
     }
    def create(params = {}, opts = {}); end

    # List payment method configurations
    sig {
      params(params: T.any(::Stripe::PaymentMethodConfigurationService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieve payment method configuration
    sig {
      params(configuration: String, params: T.any(::Stripe::PaymentMethodConfigurationService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethodConfiguration)
     }
    def retrieve(configuration, params = {}, opts = {}); end

    # Update payment method configuration
    sig {
      params(configuration: String, params: T.any(::Stripe::PaymentMethodConfigurationService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethodConfiguration)
     }
    def update(configuration, params = {}, opts = {}); end
  end
end