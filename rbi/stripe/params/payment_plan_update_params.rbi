# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentPlanUpdateParams < ::Stripe::RequestParams
    class Schedule < ::Stripe::RequestParams
      class AmountsDue < ::Stripe::RequestParams
        class Amount < ::Stripe::RequestParams
          class DueDate < ::Stripe::RequestParams
            class Relative < ::Stripe::RequestParams
              # The number of intervals after finalization.
              sig { returns(Integer) }
              def count; end
              sig { params(_count: Integer).returns(Integer) }
              def count=(_count); end
              # The interval unit.
              sig { returns(String) }
              def interval; end
              sig { params(_interval: String).returns(String) }
              def interval=(_interval); end
              sig { params(count: Integer, interval: String).void }
              def initialize(count: nil, interval: nil); end
            end
            # Unix timestamp. Required when type is 'absolute'.
            sig { returns(T.nilable(Integer)) }
            def absolute; end
            sig { params(_absolute: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def absolute=(_absolute); end
            # Required when type is 'relative'.
            sig {
              returns(T.nilable(::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue::Amount::DueDate::Relative))
             }
            def relative; end
            sig {
              params(_relative: T.nilable(::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue::Amount::DueDate::Relative)).returns(T.nilable(::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue::Amount::DueDate::Relative))
             }
            def relative=(_relative); end
            # Either 'absolute' or 'relative'.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(absolute: T.nilable(Integer), relative: T.nilable(::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue::Amount::DueDate::Relative), type: String).void
             }
            def initialize(absolute: nil, relative: nil, type: nil); end
          end
          class FixedAmount < ::Stripe::RequestParams
            # The installment amount in minor units.
            sig { returns(Integer) }
            def amount; end
            sig { params(_amount: Integer).returns(Integer) }
            def amount=(_amount); end
            # Three-letter ISO currency code.
            sig { returns(String) }
            def currency; end
            sig { params(_currency: String).returns(String) }
            def currency=(_currency); end
            sig { params(amount: Integer, currency: String).void }
            def initialize(amount: nil, currency: nil); end
          end
          # Optional description for this installment.
          sig { returns(T.nilable(String)) }
          def description; end
          sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_description); end
          # When this installment is due.
          sig {
            returns(T.nilable(::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue::Amount::DueDate))
           }
          def due_date; end
          sig {
            params(_due_date: T.nilable(::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue::Amount::DueDate)).returns(T.nilable(::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue::Amount::DueDate))
           }
          def due_date=(_due_date); end
          # Required when type is 'fixed_amount'.
          sig {
            returns(T.nilable(::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue::Amount::FixedAmount))
           }
          def fixed_amount; end
          sig {
            params(_fixed_amount: T.nilable(::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue::Amount::FixedAmount)).returns(T.nilable(::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue::Amount::FixedAmount))
           }
          def fixed_amount=(_fixed_amount); end
          # Optional stable identifier for the installment entry.
          sig { returns(T.nilable(String)) }
          def id; end
          sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
          def id=(_id); end
          # The installment percentage of the total. Required when type is 'percentage'.
          sig { returns(T.nilable(Float)) }
          def percentage; end
          sig { params(_percentage: T.nilable(Float)).returns(T.nilable(Float)) }
          def percentage=(_percentage); end
          # Either 'fixed_amount' or 'percentage'.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(description: T.nilable(String), due_date: T.nilable(::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue::Amount::DueDate), fixed_amount: T.nilable(::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue::Amount::FixedAmount), id: T.nilable(String), percentage: T.nilable(Float), type: String).void
           }
          def initialize(
            description: nil,
            due_date: nil,
            fixed_amount: nil,
            id: nil,
            percentage: nil,
            type: nil
          ); end
        end
        # The list of installment entries.
        sig { returns(T::Array[::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue::Amount]) }
        def amounts; end
        sig {
          params(_amounts: T::Array[::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue::Amount]).returns(T::Array[::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue::Amount])
         }
        def amounts=(_amounts); end
        sig {
          params(amounts: T::Array[::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue::Amount]).void
         }
        def initialize(amounts: nil); end
      end
      # Required when type is 'amounts_due'.
      sig { returns(::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue) }
      def amounts_due; end
      sig {
        params(_amounts_due: ::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue).returns(::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue)
       }
      def amounts_due=(_amounts_due); end
      # The schedule type. Currently only 'amounts_due' is supported.
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig {
        params(amounts_due: ::Stripe::PaymentPlanUpdateParams::Schedule::AmountsDue, type: String).void
       }
      def initialize(amounts_due: nil, type: nil); end
    end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
     }
    def metadata=(_metadata); end
    # The new schedule for this payment plan.
    sig { returns(T.nilable(::Stripe::PaymentPlanUpdateParams::Schedule)) }
    def schedule; end
    sig {
      params(_schedule: T.nilable(::Stripe::PaymentPlanUpdateParams::Schedule)).returns(T.nilable(::Stripe::PaymentPlanUpdateParams::Schedule))
     }
    def schedule=(_schedule); end
    sig {
      params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), schedule: T.nilable(::Stripe::PaymentPlanUpdateParams::Schedule)).void
     }
    def initialize(expand: nil, metadata: nil, schedule: nil); end
  end
end