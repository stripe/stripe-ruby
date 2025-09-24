# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    class AlertService < StripeService
      class ListParams < Stripe::RequestParams
        # Filter results to only include this type of alert.
        sig { returns(T.nilable(String)) }
        def alert_type; end
        sig { params(_alert_type: T.nilable(String)).returns(T.nilable(String)) }
        def alert_type=(_alert_type); end
        # Filter results to only include alerts for the given customer.
        sig { returns(T.nilable(String)) }
        def customer; end
        sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
        def customer=(_customer); end
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
        # Filter results to only include alerts with the given meter.
        sig { returns(T.nilable(String)) }
        def meter; end
        sig { params(_meter: T.nilable(String)).returns(T.nilable(String)) }
        def meter=(_meter); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
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
            class CreditGrants < Stripe::RequestParams
              class ApplicabilityConfig < Stripe::RequestParams
                class Scope < Stripe::RequestParams
                  class BillableItem < Stripe::RequestParams
                    # The billable item ID this credit grant should apply to.
                    sig { returns(String) }
                    def id; end
                    sig { params(_id: String).returns(String) }
                    def id=(_id); end
                    sig { params(id: String).void }
                    def initialize(id: nil); end
                  end
                  class Price < Stripe::RequestParams
                    # The price ID this credit grant should apply to.
                    sig { returns(String) }
                    def id; end
                    sig { params(_id: String).returns(String) }
                    def id=(_id); end
                    sig { params(id: String).void }
                    def initialize(id: nil); end
                  end
                  # A list of billable items that the credit grant can apply to. We currently only support metered billable items. Cannot be used in combination with `price_type` or `prices`.
                  sig {
                    returns(T.nilable(T::Array[::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants::ApplicabilityConfig::Scope::BillableItem]))
                   }
                  def billable_items; end
                  sig {
                    params(_billable_items: T.nilable(T::Array[::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants::ApplicabilityConfig::Scope::BillableItem])).returns(T.nilable(T::Array[::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants::ApplicabilityConfig::Scope::BillableItem]))
                   }
                  def billable_items=(_billable_items); end
                  # The price type that credit grants can apply to. We currently only support the `metered` price type. Cannot be used in combination with `prices`.
                  sig { returns(T.nilable(String)) }
                  def price_type; end
                  sig { params(_price_type: T.nilable(String)).returns(T.nilable(String)) }
                  def price_type=(_price_type); end
                  # A list of prices that the credit grant can apply to. We currently only support the `metered` prices. Cannot be used in combination with `price_type`.
                  sig {
                    returns(T.nilable(T::Array[::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants::ApplicabilityConfig::Scope::Price]))
                   }
                  def prices; end
                  sig {
                    params(_prices: T.nilable(T::Array[::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants::ApplicabilityConfig::Scope::Price])).returns(T.nilable(T::Array[::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants::ApplicabilityConfig::Scope::Price]))
                   }
                  def prices=(_prices); end
                  sig {
                    params(billable_items: T.nilable(T::Array[::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants::ApplicabilityConfig::Scope::BillableItem]), price_type: T.nilable(String), prices: T.nilable(T::Array[::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants::ApplicabilityConfig::Scope::Price])).void
                   }
                  def initialize(billable_items: nil, price_type: nil, prices: nil); end
                end
                # Specify the scope of this applicability config.
                sig {
                  returns(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants::ApplicabilityConfig::Scope)
                 }
                def scope; end
                sig {
                  params(_scope: ::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants::ApplicabilityConfig::Scope).returns(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants::ApplicabilityConfig::Scope)
                 }
                def scope=(_scope); end
                sig {
                  params(scope: ::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants::ApplicabilityConfig::Scope).void
                 }
                def initialize(scope: nil); end
              end
              # The applicability configuration for this credit grants filter.
              sig {
                returns(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants::ApplicabilityConfig)
               }
              def applicability_config; end
              sig {
                params(_applicability_config: ::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants::ApplicabilityConfig).returns(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants::ApplicabilityConfig)
               }
              def applicability_config=(_applicability_config); end
              sig {
                params(applicability_config: ::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants::ApplicabilityConfig).void
               }
              def initialize(applicability_config: nil); end
            end
            # The credit grants for which to configure the credit balance alert.
            sig {
              returns(T.nilable(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants))
             }
            def credit_grants; end
            sig {
              params(_credit_grants: T.nilable(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants)).returns(T.nilable(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants))
             }
            def credit_grants=(_credit_grants); end
            # Limit the scope to this credit balance alert only to this customer.
            sig { returns(T.nilable(String)) }
            def customer; end
            sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
            def customer=(_customer); end
            # What type of filter is being applied to this credit balance alert.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(credit_grants: T.nilable(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter::CreditGrants), customer: T.nilable(String), type: String).void
             }
            def initialize(credit_grants: nil, customer: nil, type: nil); end
          end
          class Lte < Stripe::RequestParams
            class CustomPricingUnit < Stripe::RequestParams
              # The ID of the custom pricing unit.
              sig { returns(String) }
              def id; end
              sig { params(_id: String).returns(String) }
              def id=(_id); end
              # A positive decimal string representing the amount of the custom pricing unit threshold.
              sig { returns(String) }
              def value; end
              sig { params(_value: String).returns(String) }
              def value=(_value); end
              sig { params(id: String, value: String).void }
              def initialize(id: nil, value: nil); end
            end
            class Monetary < Stripe::RequestParams
              # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the `value` parameter.
              sig { returns(String) }
              def currency; end
              sig { params(_currency: String).returns(String) }
              def currency=(_currency); end
              # An integer representing the amount of the threshold.
              sig { returns(Integer) }
              def value; end
              sig { params(_value: Integer).returns(Integer) }
              def value=(_value); end
              sig { params(currency: String, value: Integer).void }
              def initialize(currency: nil, value: nil); end
            end
            # Specify the type of this balance. We currently only support `monetary` billing credits.
            sig { returns(String) }
            def balance_type; end
            sig { params(_balance_type: String).returns(String) }
            def balance_type=(_balance_type); end
            # The custom pricing unit amount.
            sig {
              returns(T.nilable(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Lte::CustomPricingUnit))
             }
            def custom_pricing_unit; end
            sig {
              params(_custom_pricing_unit: T.nilable(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Lte::CustomPricingUnit)).returns(T.nilable(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Lte::CustomPricingUnit))
             }
            def custom_pricing_unit=(_custom_pricing_unit); end
            # The monetary amount.
            sig {
              returns(T.nilable(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Lte::Monetary))
             }
            def monetary; end
            sig {
              params(_monetary: T.nilable(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Lte::Monetary)).returns(T.nilable(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Lte::Monetary))
             }
            def monetary=(_monetary); end
            sig {
              params(balance_type: String, custom_pricing_unit: T.nilable(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Lte::CustomPricingUnit), monetary: T.nilable(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Lte::Monetary)).void
             }
            def initialize(balance_type: nil, custom_pricing_unit: nil, monetary: nil); end
          end
          # The filters allows limiting the scope of this credit balance alert. You must specify a customer filter at this time.
          sig {
            returns(T.nilable(T::Array[::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter]))
           }
          def filters; end
          sig {
            params(_filters: T.nilable(T::Array[::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter])).returns(T.nilable(T::Array[::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter]))
           }
          def filters=(_filters); end
          # Defines at which value the alert will fire.
          sig {
            returns(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Lte)
           }
          def lte; end
          sig {
            params(_lte: ::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Lte).returns(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Lte)
           }
          def lte=(_lte); end
          sig {
            params(filters: T.nilable(T::Array[::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Filter]), lte: ::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold::Lte).void
           }
          def initialize(filters: nil, lte: nil); end
        end
        class UsageThreshold < Stripe::RequestParams
          class Filter < Stripe::RequestParams
            # Limit the scope to this usage alert only to this customer.
            sig { returns(T.nilable(String)) }
            def customer; end
            sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
            def customer=(_customer); end
            # What type of filter is being applied to this usage alert.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(customer: T.nilable(String), type: String).void }
            def initialize(customer: nil, type: nil); end
          end
          # The filters allows limiting the scope of this usage alert. You can only specify up to one filter at this time.
          sig {
            returns(T.nilable(T::Array[::Stripe::Billing::AlertService::CreateParams::UsageThreshold::Filter]))
           }
          def filters; end
          sig {
            params(_filters: T.nilable(T::Array[::Stripe::Billing::AlertService::CreateParams::UsageThreshold::Filter])).returns(T.nilable(T::Array[::Stripe::Billing::AlertService::CreateParams::UsageThreshold::Filter]))
           }
          def filters=(_filters); end
          # Defines at which value the alert will fire.
          sig { returns(Integer) }
          def gte; end
          sig { params(_gte: Integer).returns(Integer) }
          def gte=(_gte); end
          # The [Billing Meter](/api/billing/meter) ID whose usage is monitored.
          sig { returns(String) }
          def meter; end
          sig { params(_meter: String).returns(String) }
          def meter=(_meter); end
          # Defines how the alert will behave.
          sig { returns(String) }
          def recurrence; end
          sig { params(_recurrence: String).returns(String) }
          def recurrence=(_recurrence); end
          sig {
            params(filters: T.nilable(T::Array[::Stripe::Billing::AlertService::CreateParams::UsageThreshold::Filter]), gte: Integer, meter: String, recurrence: String).void
           }
          def initialize(filters: nil, gte: nil, meter: nil, recurrence: nil); end
        end
        # The type of alert to create.
        sig { returns(String) }
        def alert_type; end
        sig { params(_alert_type: String).returns(String) }
        def alert_type=(_alert_type); end
        # The configuration of the credit balance threshold.
        sig {
          returns(T.nilable(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold))
         }
        def credit_balance_threshold; end
        sig {
          params(_credit_balance_threshold: T.nilable(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold)).returns(T.nilable(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold))
         }
        def credit_balance_threshold=(_credit_balance_threshold); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The title of the alert.
        sig { returns(String) }
        def title; end
        sig { params(_title: String).returns(String) }
        def title=(_title); end
        # The configuration of the usage threshold.
        sig { returns(T.nilable(::Stripe::Billing::AlertService::CreateParams::UsageThreshold)) }
        def usage_threshold; end
        sig {
          params(_usage_threshold: T.nilable(::Stripe::Billing::AlertService::CreateParams::UsageThreshold)).returns(T.nilable(::Stripe::Billing::AlertService::CreateParams::UsageThreshold))
         }
        def usage_threshold=(_usage_threshold); end
        sig {
          params(alert_type: String, credit_balance_threshold: T.nilable(::Stripe::Billing::AlertService::CreateParams::CreditBalanceThreshold), expand: T.nilable(T::Array[String]), title: String, usage_threshold: T.nilable(::Stripe::Billing::AlertService::CreateParams::UsageThreshold)).void
         }
        def initialize(
          alert_type: nil,
          credit_balance_threshold: nil,
          expand: nil,
          title: nil,
          usage_threshold: nil
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
      class ActivateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class ArchiveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class DeactivateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Reactivates this alert, allowing it to trigger again.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::AlertService::ActivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Alert)
       }
      def activate(id, params = {}, opts = {}); end

      # Archives this alert, removing it from the list view and APIs. This is non-reversible.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::AlertService::ArchiveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Alert)
       }
      def archive(id, params = {}, opts = {}); end

      # Creates a billing alert
      sig {
        params(params: T.any(::Stripe::Billing::AlertService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Alert)
       }
      def create(params = {}, opts = {}); end

      # Deactivates this alert, preventing it from triggering.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::AlertService::DeactivateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Alert)
       }
      def deactivate(id, params = {}, opts = {}); end

      # Lists billing active and inactive alerts
      sig {
        params(params: T.any(::Stripe::Billing::AlertService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves a billing alert given an ID
      sig {
        params(id: String, params: T.any(::Stripe::Billing::AlertService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::Alert)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end