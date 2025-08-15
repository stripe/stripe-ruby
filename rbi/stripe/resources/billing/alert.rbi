# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    # A billing alert is a resource that notifies you when a certain usage threshold on a meter is crossed. For example, you might create a billing alert to notify you when a certain user made 100 API requests.
    class Alert < APIResource
      class CreditBalanceThreshold < Stripe::StripeObject
        class Filter < Stripe::StripeObject
          # Limit the scope of the alert to this customer ID
          sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
          attr_reader :customer
          # Attribute for field type
          sig { returns(String) }
          attr_reader :type
        end
        class Lte < Stripe::StripeObject
          class CustomPricingUnit < Stripe::StripeObject
            # Unique identifier for the object.
            sig { returns(String) }
            attr_reader :id
            # A positive decimal string representing the amount.
            sig { returns(String) }
            attr_reader :value
          end
          class Monetary < Stripe::StripeObject
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_reader :currency
            # A positive integer representing the amount.
            sig { returns(Integer) }
            attr_reader :value
          end
          # The type of this balance. We currently only support `monetary` amounts.
          sig { returns(String) }
          attr_reader :balance_type
          # The custom pricing unit amount.
          sig { returns(T.nilable(CustomPricingUnit)) }
          attr_reader :custom_pricing_unit
          # The monetary amount.
          sig { returns(T.nilable(Monetary)) }
          attr_reader :monetary
        end
        # The filters allow limiting the scope of this credit balance alert. You must specify only a customer filter at this time.
        sig { returns(T.nilable(T::Array[Filter])) }
        attr_reader :filters
        # Attribute for field lte
        sig { returns(Lte) }
        attr_reader :lte
        # Defines how the alert will behave.
        sig { returns(String) }
        attr_reader :recurrence
      end
      class UsageThreshold < Stripe::StripeObject
        class Filter < Stripe::StripeObject
          # Limit the scope of the alert to this customer ID
          sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
          attr_reader :customer
          # Attribute for field type
          sig { returns(String) }
          attr_reader :type
        end
        # The filters allow limiting the scope of this usage alert. You can only specify up to one filter at this time.
        sig { returns(T.nilable(T::Array[Filter])) }
        attr_reader :filters
        # The value at which this alert will trigger.
        sig { returns(Integer) }
        attr_reader :gte
        # The [Billing Meter](/api/billing/meter) ID whose usage is monitored.
        sig { returns(T.any(String, Stripe::Billing::Meter)) }
        attr_reader :meter
        # Defines how the alert will behave.
        sig { returns(String) }
        attr_reader :recurrence
      end
      # Defines the type of the alert.
      sig { returns(String) }
      attr_reader :alert_type
      # Encapsulates configuration of the alert to monitor billing credit balance.
      sig { returns(T.nilable(CreditBalanceThreshold)) }
      attr_reader :credit_balance_threshold
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # Status of the alert. This can be active, inactive or archived.
      sig { returns(T.nilable(String)) }
      attr_reader :status
      # Title of the alert.
      sig { returns(String) }
      attr_reader :title
      # Encapsulates configuration of the alert to monitor usage on a specific [Billing Meter](https://stripe.com/docs/api/billing/meter).
      sig { returns(T.nilable(UsageThreshold)) }
      attr_reader :usage_threshold
      class ListParams < Stripe::RequestParams
        # Filter results to only include this type of alert.
        sig { returns(T.nilable(String)) }
        attr_accessor :alert_type
        # Filter results to only include alerts for the given customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # Filter results to only include alerts with the given meter.
        sig { returns(T.nilable(String)) }
        attr_accessor :meter
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        sig {
          params(alert_type: T.nilable(String), customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), meter: T.nilable(String), starting_after: T.nilable(String)).void
         }
        def initialize(
          alert_type: nil,
          customer: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          meter: nil,
          starting_after: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class CreditBalanceThreshold < Stripe::RequestParams
          class Filter < Stripe::RequestParams
            # Limit the scope to this credit balance alert only to this customer.
            sig { returns(T.nilable(String)) }
            attr_accessor :customer
            # What type of filter is being applied to this credit balance alert.
            sig { returns(String) }
            attr_accessor :type
            sig { params(customer: T.nilable(String), type: String).void }
            def initialize(customer: nil, type: nil); end
          end
          class Lte < Stripe::RequestParams
            class CustomPricingUnit < Stripe::RequestParams
              # The ID of the custom pricing unit.
              sig { returns(String) }
              attr_accessor :id
              # A positive decimal string representing the amount of the custom pricing unit threshold.
              sig { returns(String) }
              attr_accessor :value
              sig { params(id: String, value: String).void }
              def initialize(id: nil, value: nil); end
            end
            class Monetary < Stripe::RequestParams
              # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the `value` parameter.
              sig { returns(String) }
              attr_accessor :currency
              # An integer representing the amount of the threshold.
              sig { returns(Integer) }
              attr_accessor :value
              sig { params(currency: String, value: Integer).void }
              def initialize(currency: nil, value: nil); end
            end
            # Specify the type of this balance. We currently only support `monetary` billing credits.
            sig { returns(String) }
            attr_accessor :balance_type
            # The custom pricing unit amount.
            sig {
              returns(T.nilable(::Stripe::Billing::Alert::CreateParams::CreditBalanceThreshold::Lte::CustomPricingUnit))
             }
            attr_accessor :custom_pricing_unit
            # The monetary amount.
            sig {
              returns(T.nilable(::Stripe::Billing::Alert::CreateParams::CreditBalanceThreshold::Lte::Monetary))
             }
            attr_accessor :monetary
            sig {
              params(balance_type: String, custom_pricing_unit: T.nilable(::Stripe::Billing::Alert::CreateParams::CreditBalanceThreshold::Lte::CustomPricingUnit), monetary: T.nilable(::Stripe::Billing::Alert::CreateParams::CreditBalanceThreshold::Lte::Monetary)).void
             }
            def initialize(balance_type: nil, custom_pricing_unit: nil, monetary: nil); end
          end
          # The filters allows limiting the scope of this credit balance alert. You must specify a customer filter at this time.
          sig {
            returns(T.nilable(T::Array[::Stripe::Billing::Alert::CreateParams::CreditBalanceThreshold::Filter]))
           }
          attr_accessor :filters
          # Defines at which value the alert will fire.
          sig { returns(::Stripe::Billing::Alert::CreateParams::CreditBalanceThreshold::Lte) }
          attr_accessor :lte
          # Whether the alert should only fire only once, or once per billing cycle.
          sig { returns(String) }
          attr_accessor :recurrence
          sig {
            params(filters: T.nilable(T::Array[::Stripe::Billing::Alert::CreateParams::CreditBalanceThreshold::Filter]), lte: ::Stripe::Billing::Alert::CreateParams::CreditBalanceThreshold::Lte, recurrence: String).void
           }
          def initialize(filters: nil, lte: nil, recurrence: nil); end
        end
        class UsageThreshold < Stripe::RequestParams
          class Filter < Stripe::RequestParams
            # Limit the scope to this usage alert only to this customer.
            sig { returns(T.nilable(String)) }
            attr_accessor :customer
            # What type of filter is being applied to this usage alert.
            sig { returns(String) }
            attr_accessor :type
            sig { params(customer: T.nilable(String), type: String).void }
            def initialize(customer: nil, type: nil); end
          end
          # The filters allows limiting the scope of this usage alert. You can only specify up to one filter at this time.
          sig {
            returns(T.nilable(T::Array[::Stripe::Billing::Alert::CreateParams::UsageThreshold::Filter]))
           }
          attr_accessor :filters
          # Defines at which value the alert will fire.
          sig { returns(Integer) }
          attr_accessor :gte
          # The [Billing Meter](/api/billing/meter) ID whose usage is monitored.
          sig { returns(String) }
          attr_accessor :meter
          # Whether the alert should only fire only once, or once per billing cycle.
          sig { returns(String) }
          attr_accessor :recurrence
          sig {
            params(filters: T.nilable(T::Array[::Stripe::Billing::Alert::CreateParams::UsageThreshold::Filter]), gte: Integer, meter: String, recurrence: String).void
           }
          def initialize(filters: nil, gte: nil, meter: nil, recurrence: nil); end
        end
        # The type of alert to create.
        sig { returns(String) }
        attr_accessor :alert_type
        # The configuration of the credit balance threshold.
        sig { returns(T.nilable(::Stripe::Billing::Alert::CreateParams::CreditBalanceThreshold)) }
        attr_accessor :credit_balance_threshold
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The title of the alert.
        sig { returns(String) }
        attr_accessor :title
        # The configuration of the usage threshold.
        sig { returns(T.nilable(::Stripe::Billing::Alert::CreateParams::UsageThreshold)) }
        attr_accessor :usage_threshold
        sig {
          params(alert_type: String, credit_balance_threshold: T.nilable(::Stripe::Billing::Alert::CreateParams::CreditBalanceThreshold), expand: T.nilable(T::Array[String]), title: String, usage_threshold: T.nilable(::Stripe::Billing::Alert::CreateParams::UsageThreshold)).void
         }
        def initialize(
          alert_type: nil,
          credit_balance_threshold: nil,
          expand: nil,
          title: nil,
          usage_threshold: nil
        ); end
      end
      class ActivateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class ArchiveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class DeactivateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Reactivates this alert, allowing it to trigger again.
      sig {
        params(params: T.any(::Stripe::Billing::Alert::ActivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Alert)
       }
      def activate(params = {}, opts = {}); end

      # Reactivates this alert, allowing it to trigger again.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::Alert::ActivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Alert)
       }
      def self.activate(id, params = {}, opts = {}); end

      # Archives this alert, removing it from the list view and APIs. This is non-reversible.
      sig {
        params(params: T.any(::Stripe::Billing::Alert::ArchiveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Alert)
       }
      def archive(params = {}, opts = {}); end

      # Archives this alert, removing it from the list view and APIs. This is non-reversible.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::Alert::ArchiveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Alert)
       }
      def self.archive(id, params = {}, opts = {}); end

      # Creates a billing alert
      sig {
        params(params: T.any(::Stripe::Billing::Alert::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Alert)
       }
      def self.create(params = {}, opts = {}); end

      # Deactivates this alert, preventing it from triggering.
      sig {
        params(params: T.any(::Stripe::Billing::Alert::DeactivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Alert)
       }
      def deactivate(params = {}, opts = {}); end

      # Deactivates this alert, preventing it from triggering.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::Alert::DeactivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Alert)
       }
      def self.deactivate(id, params = {}, opts = {}); end

      # Lists billing active and inactive alerts
      sig {
        params(params: T.any(::Stripe::Billing::Alert::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end