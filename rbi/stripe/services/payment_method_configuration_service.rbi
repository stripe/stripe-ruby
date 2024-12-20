# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentMethodConfigurationService < StripeService
    class ListParams < Stripe::RequestParams
      # The Connect application to filter by.
      sig { returns(T.nilable(String)) }
      attr_accessor :application
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(String) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(String) }
      attr_accessor :starting_after
      sig {
        params(application: T.nilable(String), ending_before: String, expand: T::Array[String], limit: Integer, starting_after: String).void
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
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::AcssDebit::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::AcssDebit::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Affirm < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Affirm::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Affirm::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class AfterpayClearpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::AfterpayClearpay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::AfterpayClearpay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Alipay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Alipay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Alipay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Alma < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Alma::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Alma::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class AmazonPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::AmazonPay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::AmazonPay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePayLater < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePayLater::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePayLater::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class AuBecsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::AuBecsDebit::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::AuBecsDebit::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class BacsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::BacsDebit::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::BacsDebit::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Bancontact < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Bancontact::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Bancontact::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Blik < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Blik::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Blik::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Boleto < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Boleto::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Boleto::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Card < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Card::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Card::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class CartesBancaires < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::CartesBancaires::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::CartesBancaires::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Cashapp < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Cashapp::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Cashapp::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class CustomerBalance < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::CustomerBalance::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::CustomerBalance::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Eps < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Eps::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Eps::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Fpx < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Fpx::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Fpx::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Giropay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Giropay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Giropay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class GooglePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::GooglePay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::GooglePay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Gopay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Gopay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Gopay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Grabpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Grabpay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Grabpay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class IdBankTransfer < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::IdBankTransfer::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::IdBankTransfer::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Ideal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Ideal::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Ideal::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Jcb < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Jcb::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Jcb::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Klarna < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Klarna::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Klarna::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Konbini < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Konbini::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Konbini::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Link < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Link::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Link::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Mobilepay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Mobilepay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Mobilepay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Multibanco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Multibanco::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Multibanco::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Oxxo < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Oxxo::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Oxxo::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class P24 < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::P24::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::P24::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Paynow < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Paynow::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Paynow::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Paypal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Paypal::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Paypal::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Payto < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Payto::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Payto::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Promptpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Promptpay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Promptpay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Qris < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Qris::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Qris::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class RevolutPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::RevolutPay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::RevolutPay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class SepaDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::SepaDebit::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::SepaDebit::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Shopeepay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Shopeepay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Shopeepay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Sofort < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Sofort::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Sofort::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Swish < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Swish::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Swish::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Twint < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Twint::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Twint::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class UsBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::UsBankAccount::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::UsBankAccount::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class WechatPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::WechatPay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::WechatPay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Zip < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Zip::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::CreateParams::Zip::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      # Canadian pre-authorized debit payments, check this [page](https://stripe.com/docs/payments/acss-debit) for more details like country availability.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::AcssDebit) }
      attr_accessor :acss_debit
      # [Affirm](https://www.affirm.com/) gives your customers a way to split purchases over a series of payments. Depending on the purchase, they can pay with four interest-free payments (Split Pay) or pay over a longer term (Installments), which might include interest. Check this [page](https://stripe.com/docs/payments/affirm) for more details like country availability.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Affirm) }
      attr_accessor :affirm
      # Afterpay gives your customers a way to pay for purchases in installments, check this [page](https://stripe.com/docs/payments/afterpay-clearpay) for more details like country availability. Afterpay is particularly popular among businesses selling fashion, beauty, and sports products.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::AfterpayClearpay) }
      attr_accessor :afterpay_clearpay
      # Alipay is a digital wallet in China that has more than a billion active users worldwide. Alipay users can pay on the web or on a mobile device using login credentials or their Alipay app. Alipay has a low dispute rate and reduces fraud by authenticating payments using the customer's login credentials. Check this [page](https://stripe.com/docs/payments/alipay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Alipay) }
      attr_accessor :alipay
      # Alma is a Buy Now, Pay Later payment method that offers customers the ability to pay in 2, 3, or 4 installments.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Alma) }
      attr_accessor :alma
      # Amazon Pay is a wallet payment method that lets your customers check out the same way as on Amazon.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::AmazonPay) }
      attr_accessor :amazon_pay
      # Stripe users can accept [Apple Pay](/payments/apple-pay) in iOS applications in iOS 9 and later, and on the web in Safari starting with iOS 10 or macOS Sierra. There are no additional fees to process Apple Pay payments, and the [pricing](/pricing) is the same as other card transactions. Check this [page](https://stripe.com/docs/apple-pay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePay) }
      attr_accessor :apple_pay
      # Apple Pay Later, a payment method for customers to buy now and pay later, gives your customers a way to split purchases into four installments across six weeks.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePayLater) }
      attr_accessor :apple_pay_later
      # Stripe users in Australia can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with an Australian bank account. Check this [page](https://stripe.com/docs/payments/au-becs-debit) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::AuBecsDebit) }
      attr_accessor :au_becs_debit
      # Stripe users in the UK can accept Bacs Direct Debit payments from customers with a UK bank account, check this [page](https://stripe.com/docs/payments/payment-methods/bacs-debit) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::BacsDebit) }
      attr_accessor :bacs_debit
      # Bancontact is the most popular online payment method in Belgium, with over 15 million cards in circulation. [Customers](https://stripe.com/docs/api/customers) use a Bancontact card or mobile app linked to a Belgian bank account to make online payments that are secure, guaranteed, and confirmed immediately. Check this [page](https://stripe.com/docs/payments/bancontact) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Bancontact) }
      attr_accessor :bancontact
      # BLIK is a [single use](https://stripe.com/docs/payments/payment-methods#usage) payment method that requires customers to authenticate their payments. When customers want to pay online using BLIK, they request a six-digit code from their banking application and enter it into the payment collection form. Check this [page](https://stripe.com/docs/payments/blik) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Blik) }
      attr_accessor :blik
      # Boleto is an official (regulated by the Central Bank of Brazil) payment method in Brazil. Check this [page](https://stripe.com/docs/payments/boleto) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Boleto) }
      attr_accessor :boleto
      # Cards are a popular way for consumers and businesses to pay online or in person. Stripe supports global and local card networks.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Card) }
      attr_accessor :card
      # Cartes Bancaires is France's local card network. More than 95% of these cards are co-branded with either Visa or Mastercard, meaning you can process these cards over either Cartes Bancaires or the Visa or Mastercard networks. Check this [page](https://stripe.com/docs/payments/cartes-bancaires) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::CartesBancaires) }
      attr_accessor :cartes_bancaires
      # Cash App is a popular consumer app in the US that allows customers to bank, invest, send, and receive money using their digital wallet. Check this [page](https://stripe.com/docs/payments/cash-app-pay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Cashapp) }
      attr_accessor :cashapp
      # Uses a customer’s [cash balance](https://stripe.com/docs/payments/customer-balance) for the payment. The cash balance can be funded via a bank transfer. Check this [page](https://stripe.com/docs/payments/bank-transfers) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::CustomerBalance) }
      attr_accessor :customer_balance
      # EPS is an Austria-based payment method that allows customers to complete transactions online using their bank credentials. EPS is supported by all Austrian banks and is accepted by over 80% of Austrian online retailers. Check this [page](https://stripe.com/docs/payments/eps) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Eps) }
      attr_accessor :eps
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Financial Process Exchange (FPX) is a Malaysia-based payment method that allows customers to complete transactions online using their bank credentials. Bank Negara Malaysia (BNM), the Central Bank of Malaysia, and eleven other major Malaysian financial institutions are members of the PayNet Group, which owns and operates FPX. It is one of the most popular online payment methods in Malaysia, with nearly 90 million transactions in 2018 according to BNM. Check this [page](https://stripe.com/docs/payments/fpx) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Fpx) }
      attr_accessor :fpx
      # giropay is a German payment method based on online banking, introduced in 2006. It allows customers to complete transactions online using their online banking environment, with funds debited from their bank account. Depending on their bank, customers confirm payments on giropay using a second factor of authentication or a PIN. giropay accounts for 10% of online checkouts in Germany. Check this [page](https://stripe.com/docs/payments/giropay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Giropay) }
      attr_accessor :giropay
      # Google Pay allows customers to make payments in your app or website using any credit or debit card saved to their Google Account, including those from Google Play, YouTube, Chrome, or an Android device. Use the Google Pay API to request any credit or debit card stored in your customer's Google account. Check this [page](https://stripe.com/docs/google-pay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::GooglePay) }
      attr_accessor :google_pay
      # GoPay is a [single use](https://stripe.com/docs/payments/payment-methods#usage) digital wallet payment method popular in Indonesia. When paying with GoPay, customers authenticate and approve payments using the Gojek app. Desktop checkout is performed by scanning a QR code. When checking out on mobile, customers are redirected to the Gojek app to confirm payment.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Gopay) }
      attr_accessor :gopay
      # GrabPay is a payment method developed by [Grab](https://www.grab.com/sg/consumer/finance/pay/). GrabPay is a digital wallet - customers maintain a balance in their wallets that they pay out with. Check this [page](https://stripe.com/docs/payments/grabpay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Grabpay) }
      attr_accessor :grabpay
      # Stripe users in Indonesia can receive bank transfers from customers in Indonesia. Bank transfers are a popular B2C and B2B payment method in Indonesia.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::IdBankTransfer) }
      attr_accessor :id_bank_transfer
      # iDEAL is a Netherlands-based payment method that allows customers to complete transactions online using their bank credentials. All major Dutch banks are members of Currence, the scheme that operates iDEAL, making it the most popular online payment method in the Netherlands with a share of online transactions close to 55%. Check this [page](https://stripe.com/docs/payments/ideal) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Ideal) }
      attr_accessor :ideal
      # JCB is a credit card company based in Japan. JCB is currently available in Japan to businesses approved by JCB, and available to all businesses in Australia, Canada, Hong Kong, Japan, New Zealand, Singapore, Switzerland, United Kingdom, United States, and all countries in the European Economic Area except Iceland. Check this [page](https://support.stripe.com/questions/accepting-japan-credit-bureau-%28jcb%29-payments) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Jcb) }
      attr_accessor :jcb
      # Klarna gives customers a range of [payment options](https://stripe.com/docs/payments/klarna#payment-options) during checkout. Available payment options vary depending on the customer's billing address and the transaction amount. These payment options make it convenient for customers to purchase items in all price ranges. Check this [page](https://stripe.com/docs/payments/klarna) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Klarna) }
      attr_accessor :klarna
      # Konbini allows customers in Japan to pay for bills and online purchases at convenience stores with cash. Check this [page](https://stripe.com/docs/payments/konbini) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Konbini) }
      attr_accessor :konbini
      # [Link](https://stripe.com/docs/payments/link) is a payment method network. With Link, users save their payment details once, then reuse that information to pay with one click for any business on the network.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Link) }
      attr_accessor :link
      # MobilePay is a [single-use](https://stripe.com/docs/payments/payment-methods#usage) card wallet payment method used in Denmark and Finland. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the MobilePay app. Check this [page](https://stripe.com/docs/payments/mobilepay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Mobilepay) }
      attr_accessor :mobilepay
      # Stripe users in Europe and the United States can accept Multibanco payments from customers in Portugal using [Sources](https://stripe.com/docs/sources)—a single integration path for creating payments using any supported method.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Multibanco) }
      attr_accessor :multibanco
      # Configuration name.
      sig { returns(String) }
      attr_accessor :name
      # OXXO is a Mexican chain of convenience stores with thousands of locations across Latin America and represents nearly 20% of online transactions in Mexico. OXXO allows customers to pay bills and online purchases in-store with cash. Check this [page](https://stripe.com/docs/payments/oxxo) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Oxxo) }
      attr_accessor :oxxo
      # Przelewy24 is a Poland-based payment method aggregator that allows customers to complete transactions online using bank transfers and other methods. Bank transfers account for 30% of online payments in Poland and Przelewy24 provides a way for customers to pay with over 165 banks. Check this [page](https://stripe.com/docs/payments/p24) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::P24) }
      attr_accessor :p24
      # Configuration's parent configuration. Specify to create a child configuration.
      sig { returns(String) }
      attr_accessor :parent
      # PayNow is a Singapore-based payment method that allows customers to make a payment using their preferred app from participating banks and participating non-bank financial institutions. Check this [page](https://stripe.com/docs/payments/paynow) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Paynow) }
      attr_accessor :paynow
      # PayPal, a digital wallet popular with customers in Europe, allows your customers worldwide to pay using their PayPal account. Check this [page](https://stripe.com/docs/payments/paypal) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Paypal) }
      attr_accessor :paypal
      # PayTo is a [real-time](https://docs.stripe.com/payments/real-time) payment method that enables customers in Australia to pay by providing their bank account details. Customers must accept a mandate authorizing you to debit their account. Check this [page](https://docs.stripe.com/payments/payto) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Payto) }
      attr_accessor :payto
      # PromptPay is a Thailand-based payment method that allows customers to make a payment using their preferred app from participating banks. Check this [page](https://stripe.com/docs/payments/promptpay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Promptpay) }
      attr_accessor :promptpay
      # QRIS is a [real-time](https://docs.stripe.com/payments/real-time) payment method popular in Indonesia. When paying with QRIS, customers authenticate and approve payments by scanning a QR code in their preferred digital wallet app.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Qris) }
      attr_accessor :qris
      # Revolut Pay, developed by Revolut, a global finance app, is a digital wallet payment method. Revolut Pay uses the customer’s stored balance or cards to fund the payment, and offers the option for non-Revolut customers to save their details after their first purchase.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::RevolutPay) }
      attr_accessor :revolut_pay
      # The [Single Euro Payments Area (SEPA)](https://en.wikipedia.org/wiki/Single_Euro_Payments_Area) is an initiative of the European Union to simplify payments within and across member countries. SEPA established and enforced banking standards to allow for the direct debiting of every EUR-denominated bank account within the SEPA region, check this [page](https://stripe.com/docs/payments/sepa-debit) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::SepaDebit) }
      attr_accessor :sepa_debit
      # ShopeePay is a [single use](https://stripe.com/docs/payments/payment-methods#usage) digital wallet payment method popular in Indonesia. When paying with GoPay, customers authenticate and approve payments using the Shopee app. Desktop checkout is performed by scanning a QR code. When checking out on mobile, customers are redirected to the Shopee app to confirm payment.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Shopeepay) }
      attr_accessor :shopeepay
      # Stripe users in Europe and the United States can use the [Payment Intents API](https://stripe.com/docs/payments/payment-intents)—a single integration path for creating payments using any supported method—to accept [Sofort](https://www.sofort.com/) payments from customers. Check this [page](https://stripe.com/docs/payments/sofort) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Sofort) }
      attr_accessor :sofort
      # Swish is a [real-time](https://stripe.com/docs/payments/real-time) payment method popular in Sweden. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the Swish mobile app and the Swedish BankID mobile app. Check this [page](https://stripe.com/docs/payments/swish) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Swish) }
      attr_accessor :swish
      # Twint is a payment method popular in Switzerland. It allows customers to pay using their mobile phone. Check this [page](https://docs.stripe.com/payments/twint) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Twint) }
      attr_accessor :twint
      # Stripe users in the United States can accept ACH direct debit payments from customers with a US bank account using the Automated Clearing House (ACH) payments system operated by Nacha. Check this [page](https://stripe.com/docs/payments/ach-direct-debit) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::UsBankAccount) }
      attr_accessor :us_bank_account
      # WeChat, owned by Tencent, is China's leading mobile app with over 1 billion monthly active users. Chinese consumers can use WeChat Pay to pay for goods and services inside of businesses' apps and websites. WeChat Pay users buy most frequently in gaming, e-commerce, travel, online education, and food/nutrition. Check this [page](https://stripe.com/docs/payments/wechat-pay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::WechatPay) }
      attr_accessor :wechat_pay
      # Zip gives your customers a way to split purchases over a series of payments. Check this [page](https://stripe.com/docs/payments/zip) for more details like country availability.
      sig { returns(::Stripe::PaymentMethodConfigurationService::CreateParams::Zip) }
      attr_accessor :zip
      sig {
        params(acss_debit: ::Stripe::PaymentMethodConfigurationService::CreateParams::AcssDebit, affirm: ::Stripe::PaymentMethodConfigurationService::CreateParams::Affirm, afterpay_clearpay: ::Stripe::PaymentMethodConfigurationService::CreateParams::AfterpayClearpay, alipay: ::Stripe::PaymentMethodConfigurationService::CreateParams::Alipay, alma: ::Stripe::PaymentMethodConfigurationService::CreateParams::Alma, amazon_pay: ::Stripe::PaymentMethodConfigurationService::CreateParams::AmazonPay, apple_pay: ::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePay, apple_pay_later: ::Stripe::PaymentMethodConfigurationService::CreateParams::ApplePayLater, au_becs_debit: ::Stripe::PaymentMethodConfigurationService::CreateParams::AuBecsDebit, bacs_debit: ::Stripe::PaymentMethodConfigurationService::CreateParams::BacsDebit, bancontact: ::Stripe::PaymentMethodConfigurationService::CreateParams::Bancontact, blik: ::Stripe::PaymentMethodConfigurationService::CreateParams::Blik, boleto: ::Stripe::PaymentMethodConfigurationService::CreateParams::Boleto, card: ::Stripe::PaymentMethodConfigurationService::CreateParams::Card, cartes_bancaires: ::Stripe::PaymentMethodConfigurationService::CreateParams::CartesBancaires, cashapp: ::Stripe::PaymentMethodConfigurationService::CreateParams::Cashapp, customer_balance: ::Stripe::PaymentMethodConfigurationService::CreateParams::CustomerBalance, eps: ::Stripe::PaymentMethodConfigurationService::CreateParams::Eps, expand: T::Array[String], fpx: ::Stripe::PaymentMethodConfigurationService::CreateParams::Fpx, giropay: ::Stripe::PaymentMethodConfigurationService::CreateParams::Giropay, google_pay: ::Stripe::PaymentMethodConfigurationService::CreateParams::GooglePay, gopay: ::Stripe::PaymentMethodConfigurationService::CreateParams::Gopay, grabpay: ::Stripe::PaymentMethodConfigurationService::CreateParams::Grabpay, id_bank_transfer: ::Stripe::PaymentMethodConfigurationService::CreateParams::IdBankTransfer, ideal: ::Stripe::PaymentMethodConfigurationService::CreateParams::Ideal, jcb: ::Stripe::PaymentMethodConfigurationService::CreateParams::Jcb, klarna: ::Stripe::PaymentMethodConfigurationService::CreateParams::Klarna, konbini: ::Stripe::PaymentMethodConfigurationService::CreateParams::Konbini, link: ::Stripe::PaymentMethodConfigurationService::CreateParams::Link, mobilepay: ::Stripe::PaymentMethodConfigurationService::CreateParams::Mobilepay, multibanco: ::Stripe::PaymentMethodConfigurationService::CreateParams::Multibanco, name: String, oxxo: ::Stripe::PaymentMethodConfigurationService::CreateParams::Oxxo, p24: ::Stripe::PaymentMethodConfigurationService::CreateParams::P24, parent: String, paynow: ::Stripe::PaymentMethodConfigurationService::CreateParams::Paynow, paypal: ::Stripe::PaymentMethodConfigurationService::CreateParams::Paypal, payto: ::Stripe::PaymentMethodConfigurationService::CreateParams::Payto, promptpay: ::Stripe::PaymentMethodConfigurationService::CreateParams::Promptpay, qris: ::Stripe::PaymentMethodConfigurationService::CreateParams::Qris, revolut_pay: ::Stripe::PaymentMethodConfigurationService::CreateParams::RevolutPay, sepa_debit: ::Stripe::PaymentMethodConfigurationService::CreateParams::SepaDebit, shopeepay: ::Stripe::PaymentMethodConfigurationService::CreateParams::Shopeepay, sofort: ::Stripe::PaymentMethodConfigurationService::CreateParams::Sofort, swish: ::Stripe::PaymentMethodConfigurationService::CreateParams::Swish, twint: ::Stripe::PaymentMethodConfigurationService::CreateParams::Twint, us_bank_account: ::Stripe::PaymentMethodConfigurationService::CreateParams::UsBankAccount, wechat_pay: ::Stripe::PaymentMethodConfigurationService::CreateParams::WechatPay, zip: ::Stripe::PaymentMethodConfigurationService::CreateParams::Zip).void
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
        gopay: nil,
        grabpay: nil,
        id_bank_transfer: nil,
        ideal: nil,
        jcb: nil,
        klarna: nil,
        konbini: nil,
        link: nil,
        mobilepay: nil,
        multibanco: nil,
        name: nil,
        oxxo: nil,
        p24: nil,
        parent: nil,
        paynow: nil,
        paypal: nil,
        payto: nil,
        promptpay: nil,
        qris: nil,
        revolut_pay: nil,
        sepa_debit: nil,
        shopeepay: nil,
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
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class AcssDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::AcssDebit::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::AcssDebit::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Affirm < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Affirm::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Affirm::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class AfterpayClearpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::AfterpayClearpay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::AfterpayClearpay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Alipay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alipay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Alipay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Alma < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alma::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Alma::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class AmazonPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::AmazonPay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::AmazonPay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePayLater < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePayLater::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePayLater::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class AuBecsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::AuBecsDebit::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::AuBecsDebit::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class BacsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::BacsDebit::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::BacsDebit::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Bancontact < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Bancontact::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Bancontact::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Blik < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Blik::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Blik::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Boleto < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Boleto::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Boleto::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Card < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Card::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Card::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class CartesBancaires < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::CartesBancaires::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::CartesBancaires::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Cashapp < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Cashapp::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Cashapp::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class CustomerBalance < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::CustomerBalance::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::CustomerBalance::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Eps < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Eps::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Eps::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Fpx < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Fpx::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Fpx::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Giropay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Giropay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Giropay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class GooglePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::GooglePay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::GooglePay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Gopay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Gopay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Gopay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Grabpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Grabpay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Grabpay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class IdBankTransfer < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::IdBankTransfer::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::IdBankTransfer::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Ideal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Ideal::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Ideal::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Jcb < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Jcb::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Jcb::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Klarna < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Klarna::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Klarna::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Konbini < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Konbini::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Konbini::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Link < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Link::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Link::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Mobilepay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Mobilepay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Mobilepay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Multibanco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Multibanco::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Multibanco::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Oxxo < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Oxxo::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Oxxo::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class P24 < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::P24::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::P24::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Paynow < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paynow::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Paynow::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Paypal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paypal::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Paypal::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Payto < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Payto::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Payto::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Promptpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Promptpay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Promptpay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Qris < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Qris::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Qris::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class RevolutPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::RevolutPay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::RevolutPay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class SepaDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::SepaDebit::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::SepaDebit::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Shopeepay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Shopeepay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Shopeepay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Sofort < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Sofort::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Sofort::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Swish < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Swish::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Swish::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Twint < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Twint::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Twint::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class UsBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::UsBankAccount::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::UsBankAccount::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class WechatPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::WechatPay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::WechatPay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Zip < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Zip::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Zip::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      # Canadian pre-authorized debit payments, check this [page](https://stripe.com/docs/payments/acss-debit) for more details like country availability.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::AcssDebit) }
      attr_accessor :acss_debit
      # Whether the configuration can be used for new payments.
      sig { returns(T::Boolean) }
      attr_accessor :active
      # [Affirm](https://www.affirm.com/) gives your customers a way to split purchases over a series of payments. Depending on the purchase, they can pay with four interest-free payments (Split Pay) or pay over a longer term (Installments), which might include interest. Check this [page](https://stripe.com/docs/payments/affirm) for more details like country availability.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Affirm) }
      attr_accessor :affirm
      # Afterpay gives your customers a way to pay for purchases in installments, check this [page](https://stripe.com/docs/payments/afterpay-clearpay) for more details like country availability. Afterpay is particularly popular among businesses selling fashion, beauty, and sports products.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::AfterpayClearpay) }
      attr_accessor :afterpay_clearpay
      # Alipay is a digital wallet in China that has more than a billion active users worldwide. Alipay users can pay on the web or on a mobile device using login credentials or their Alipay app. Alipay has a low dispute rate and reduces fraud by authenticating payments using the customer's login credentials. Check this [page](https://stripe.com/docs/payments/alipay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alipay) }
      attr_accessor :alipay
      # Alma is a Buy Now, Pay Later payment method that offers customers the ability to pay in 2, 3, or 4 installments.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Alma) }
      attr_accessor :alma
      # Amazon Pay is a wallet payment method that lets your customers check out the same way as on Amazon.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::AmazonPay) }
      attr_accessor :amazon_pay
      # Stripe users can accept [Apple Pay](/payments/apple-pay) in iOS applications in iOS 9 and later, and on the web in Safari starting with iOS 10 or macOS Sierra. There are no additional fees to process Apple Pay payments, and the [pricing](/pricing) is the same as other card transactions. Check this [page](https://stripe.com/docs/apple-pay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePay) }
      attr_accessor :apple_pay
      # Apple Pay Later, a payment method for customers to buy now and pay later, gives your customers a way to split purchases into four installments across six weeks.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePayLater) }
      attr_accessor :apple_pay_later
      # Stripe users in Australia can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with an Australian bank account. Check this [page](https://stripe.com/docs/payments/au-becs-debit) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::AuBecsDebit) }
      attr_accessor :au_becs_debit
      # Stripe users in the UK can accept Bacs Direct Debit payments from customers with a UK bank account, check this [page](https://stripe.com/docs/payments/payment-methods/bacs-debit) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::BacsDebit) }
      attr_accessor :bacs_debit
      # Bancontact is the most popular online payment method in Belgium, with over 15 million cards in circulation. [Customers](https://stripe.com/docs/api/customers) use a Bancontact card or mobile app linked to a Belgian bank account to make online payments that are secure, guaranteed, and confirmed immediately. Check this [page](https://stripe.com/docs/payments/bancontact) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Bancontact) }
      attr_accessor :bancontact
      # BLIK is a [single use](https://stripe.com/docs/payments/payment-methods#usage) payment method that requires customers to authenticate their payments. When customers want to pay online using BLIK, they request a six-digit code from their banking application and enter it into the payment collection form. Check this [page](https://stripe.com/docs/payments/blik) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Blik) }
      attr_accessor :blik
      # Boleto is an official (regulated by the Central Bank of Brazil) payment method in Brazil. Check this [page](https://stripe.com/docs/payments/boleto) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Boleto) }
      attr_accessor :boleto
      # Cards are a popular way for consumers and businesses to pay online or in person. Stripe supports global and local card networks.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Card) }
      attr_accessor :card
      # Cartes Bancaires is France's local card network. More than 95% of these cards are co-branded with either Visa or Mastercard, meaning you can process these cards over either Cartes Bancaires or the Visa or Mastercard networks. Check this [page](https://stripe.com/docs/payments/cartes-bancaires) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::CartesBancaires) }
      attr_accessor :cartes_bancaires
      # Cash App is a popular consumer app in the US that allows customers to bank, invest, send, and receive money using their digital wallet. Check this [page](https://stripe.com/docs/payments/cash-app-pay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Cashapp) }
      attr_accessor :cashapp
      # Uses a customer’s [cash balance](https://stripe.com/docs/payments/customer-balance) for the payment. The cash balance can be funded via a bank transfer. Check this [page](https://stripe.com/docs/payments/bank-transfers) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::CustomerBalance) }
      attr_accessor :customer_balance
      # EPS is an Austria-based payment method that allows customers to complete transactions online using their bank credentials. EPS is supported by all Austrian banks and is accepted by over 80% of Austrian online retailers. Check this [page](https://stripe.com/docs/payments/eps) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Eps) }
      attr_accessor :eps
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Financial Process Exchange (FPX) is a Malaysia-based payment method that allows customers to complete transactions online using their bank credentials. Bank Negara Malaysia (BNM), the Central Bank of Malaysia, and eleven other major Malaysian financial institutions are members of the PayNet Group, which owns and operates FPX. It is one of the most popular online payment methods in Malaysia, with nearly 90 million transactions in 2018 according to BNM. Check this [page](https://stripe.com/docs/payments/fpx) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Fpx) }
      attr_accessor :fpx
      # giropay is a German payment method based on online banking, introduced in 2006. It allows customers to complete transactions online using their online banking environment, with funds debited from their bank account. Depending on their bank, customers confirm payments on giropay using a second factor of authentication or a PIN. giropay accounts for 10% of online checkouts in Germany. Check this [page](https://stripe.com/docs/payments/giropay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Giropay) }
      attr_accessor :giropay
      # Google Pay allows customers to make payments in your app or website using any credit or debit card saved to their Google Account, including those from Google Play, YouTube, Chrome, or an Android device. Use the Google Pay API to request any credit or debit card stored in your customer's Google account. Check this [page](https://stripe.com/docs/google-pay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::GooglePay) }
      attr_accessor :google_pay
      # GoPay is a [single use](https://stripe.com/docs/payments/payment-methods#usage) digital wallet payment method popular in Indonesia. When paying with GoPay, customers authenticate and approve payments using the Gojek app. Desktop checkout is performed by scanning a QR code. When checking out on mobile, customers are redirected to the Gojek app to confirm payment.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Gopay) }
      attr_accessor :gopay
      # GrabPay is a payment method developed by [Grab](https://www.grab.com/sg/consumer/finance/pay/). GrabPay is a digital wallet - customers maintain a balance in their wallets that they pay out with. Check this [page](https://stripe.com/docs/payments/grabpay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Grabpay) }
      attr_accessor :grabpay
      # Stripe users in Indonesia can receive bank transfers from customers in Indonesia. Bank transfers are a popular B2C and B2B payment method in Indonesia.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::IdBankTransfer) }
      attr_accessor :id_bank_transfer
      # iDEAL is a Netherlands-based payment method that allows customers to complete transactions online using their bank credentials. All major Dutch banks are members of Currence, the scheme that operates iDEAL, making it the most popular online payment method in the Netherlands with a share of online transactions close to 55%. Check this [page](https://stripe.com/docs/payments/ideal) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Ideal) }
      attr_accessor :ideal
      # JCB is a credit card company based in Japan. JCB is currently available in Japan to businesses approved by JCB, and available to all businesses in Australia, Canada, Hong Kong, Japan, New Zealand, Singapore, Switzerland, United Kingdom, United States, and all countries in the European Economic Area except Iceland. Check this [page](https://support.stripe.com/questions/accepting-japan-credit-bureau-%28jcb%29-payments) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Jcb) }
      attr_accessor :jcb
      # Klarna gives customers a range of [payment options](https://stripe.com/docs/payments/klarna#payment-options) during checkout. Available payment options vary depending on the customer's billing address and the transaction amount. These payment options make it convenient for customers to purchase items in all price ranges. Check this [page](https://stripe.com/docs/payments/klarna) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Klarna) }
      attr_accessor :klarna
      # Konbini allows customers in Japan to pay for bills and online purchases at convenience stores with cash. Check this [page](https://stripe.com/docs/payments/konbini) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Konbini) }
      attr_accessor :konbini
      # [Link](https://stripe.com/docs/payments/link) is a payment method network. With Link, users save their payment details once, then reuse that information to pay with one click for any business on the network.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Link) }
      attr_accessor :link
      # MobilePay is a [single-use](https://stripe.com/docs/payments/payment-methods#usage) card wallet payment method used in Denmark and Finland. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the MobilePay app. Check this [page](https://stripe.com/docs/payments/mobilepay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Mobilepay) }
      attr_accessor :mobilepay
      # Stripe users in Europe and the United States can accept Multibanco payments from customers in Portugal using [Sources](https://stripe.com/docs/sources)—a single integration path for creating payments using any supported method.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Multibanco) }
      attr_accessor :multibanco
      # Configuration name.
      sig { returns(String) }
      attr_accessor :name
      # OXXO is a Mexican chain of convenience stores with thousands of locations across Latin America and represents nearly 20% of online transactions in Mexico. OXXO allows customers to pay bills and online purchases in-store with cash. Check this [page](https://stripe.com/docs/payments/oxxo) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Oxxo) }
      attr_accessor :oxxo
      # Przelewy24 is a Poland-based payment method aggregator that allows customers to complete transactions online using bank transfers and other methods. Bank transfers account for 30% of online payments in Poland and Przelewy24 provides a way for customers to pay with over 165 banks. Check this [page](https://stripe.com/docs/payments/p24) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::P24) }
      attr_accessor :p24
      # PayNow is a Singapore-based payment method that allows customers to make a payment using their preferred app from participating banks and participating non-bank financial institutions. Check this [page](https://stripe.com/docs/payments/paynow) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paynow) }
      attr_accessor :paynow
      # PayPal, a digital wallet popular with customers in Europe, allows your customers worldwide to pay using their PayPal account. Check this [page](https://stripe.com/docs/payments/paypal) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Paypal) }
      attr_accessor :paypal
      # PayTo is a [real-time](https://docs.stripe.com/payments/real-time) payment method that enables customers in Australia to pay by providing their bank account details. Customers must accept a mandate authorizing you to debit their account. Check this [page](https://docs.stripe.com/payments/payto) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Payto) }
      attr_accessor :payto
      # PromptPay is a Thailand-based payment method that allows customers to make a payment using their preferred app from participating banks. Check this [page](https://stripe.com/docs/payments/promptpay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Promptpay) }
      attr_accessor :promptpay
      # QRIS is a [real-time](https://docs.stripe.com/payments/real-time) payment method popular in Indonesia. When paying with QRIS, customers authenticate and approve payments by scanning a QR code in their preferred digital wallet app.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Qris) }
      attr_accessor :qris
      # Revolut Pay, developed by Revolut, a global finance app, is a digital wallet payment method. Revolut Pay uses the customer’s stored balance or cards to fund the payment, and offers the option for non-Revolut customers to save their details after their first purchase.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::RevolutPay) }
      attr_accessor :revolut_pay
      # The [Single Euro Payments Area (SEPA)](https://en.wikipedia.org/wiki/Single_Euro_Payments_Area) is an initiative of the European Union to simplify payments within and across member countries. SEPA established and enforced banking standards to allow for the direct debiting of every EUR-denominated bank account within the SEPA region, check this [page](https://stripe.com/docs/payments/sepa-debit) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::SepaDebit) }
      attr_accessor :sepa_debit
      # ShopeePay is a [single use](https://stripe.com/docs/payments/payment-methods#usage) digital wallet payment method popular in Indonesia. When paying with GoPay, customers authenticate and approve payments using the Shopee app. Desktop checkout is performed by scanning a QR code. When checking out on mobile, customers are redirected to the Shopee app to confirm payment.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Shopeepay) }
      attr_accessor :shopeepay
      # Stripe users in Europe and the United States can use the [Payment Intents API](https://stripe.com/docs/payments/payment-intents)—a single integration path for creating payments using any supported method—to accept [Sofort](https://www.sofort.com/) payments from customers. Check this [page](https://stripe.com/docs/payments/sofort) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Sofort) }
      attr_accessor :sofort
      # Swish is a [real-time](https://stripe.com/docs/payments/real-time) payment method popular in Sweden. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the Swish mobile app and the Swedish BankID mobile app. Check this [page](https://stripe.com/docs/payments/swish) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Swish) }
      attr_accessor :swish
      # Twint is a payment method popular in Switzerland. It allows customers to pay using their mobile phone. Check this [page](https://docs.stripe.com/payments/twint) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Twint) }
      attr_accessor :twint
      # Stripe users in the United States can accept ACH direct debit payments from customers with a US bank account using the Automated Clearing House (ACH) payments system operated by Nacha. Check this [page](https://stripe.com/docs/payments/ach-direct-debit) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::UsBankAccount) }
      attr_accessor :us_bank_account
      # WeChat, owned by Tencent, is China's leading mobile app with over 1 billion monthly active users. Chinese consumers can use WeChat Pay to pay for goods and services inside of businesses' apps and websites. WeChat Pay users buy most frequently in gaming, e-commerce, travel, online education, and food/nutrition. Check this [page](https://stripe.com/docs/payments/wechat-pay) for more details.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::WechatPay) }
      attr_accessor :wechat_pay
      # Zip gives your customers a way to split purchases over a series of payments. Check this [page](https://stripe.com/docs/payments/zip) for more details like country availability.
      sig { returns(::Stripe::PaymentMethodConfigurationService::UpdateParams::Zip) }
      attr_accessor :zip
      sig {
        params(acss_debit: ::Stripe::PaymentMethodConfigurationService::UpdateParams::AcssDebit, active: T::Boolean, affirm: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Affirm, afterpay_clearpay: ::Stripe::PaymentMethodConfigurationService::UpdateParams::AfterpayClearpay, alipay: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Alipay, alma: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Alma, amazon_pay: ::Stripe::PaymentMethodConfigurationService::UpdateParams::AmazonPay, apple_pay: ::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePay, apple_pay_later: ::Stripe::PaymentMethodConfigurationService::UpdateParams::ApplePayLater, au_becs_debit: ::Stripe::PaymentMethodConfigurationService::UpdateParams::AuBecsDebit, bacs_debit: ::Stripe::PaymentMethodConfigurationService::UpdateParams::BacsDebit, bancontact: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Bancontact, blik: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Blik, boleto: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Boleto, card: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Card, cartes_bancaires: ::Stripe::PaymentMethodConfigurationService::UpdateParams::CartesBancaires, cashapp: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Cashapp, customer_balance: ::Stripe::PaymentMethodConfigurationService::UpdateParams::CustomerBalance, eps: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Eps, expand: T::Array[String], fpx: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Fpx, giropay: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Giropay, google_pay: ::Stripe::PaymentMethodConfigurationService::UpdateParams::GooglePay, gopay: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Gopay, grabpay: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Grabpay, id_bank_transfer: ::Stripe::PaymentMethodConfigurationService::UpdateParams::IdBankTransfer, ideal: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Ideal, jcb: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Jcb, klarna: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Klarna, konbini: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Konbini, link: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Link, mobilepay: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Mobilepay, multibanco: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Multibanco, name: String, oxxo: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Oxxo, p24: ::Stripe::PaymentMethodConfigurationService::UpdateParams::P24, paynow: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Paynow, paypal: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Paypal, payto: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Payto, promptpay: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Promptpay, qris: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Qris, revolut_pay: ::Stripe::PaymentMethodConfigurationService::UpdateParams::RevolutPay, sepa_debit: ::Stripe::PaymentMethodConfigurationService::UpdateParams::SepaDebit, shopeepay: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Shopeepay, sofort: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Sofort, swish: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Swish, twint: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Twint, us_bank_account: ::Stripe::PaymentMethodConfigurationService::UpdateParams::UsBankAccount, wechat_pay: ::Stripe::PaymentMethodConfigurationService::UpdateParams::WechatPay, zip: ::Stripe::PaymentMethodConfigurationService::UpdateParams::Zip).void
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
        gopay: nil,
        grabpay: nil,
        id_bank_transfer: nil,
        ideal: nil,
        jcb: nil,
        klarna: nil,
        konbini: nil,
        link: nil,
        mobilepay: nil,
        multibanco: nil,
        name: nil,
        oxxo: nil,
        p24: nil,
        paynow: nil,
        paypal: nil,
        payto: nil,
        promptpay: nil,
        qris: nil,
        revolut_pay: nil,
        sepa_debit: nil,
        shopeepay: nil,
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