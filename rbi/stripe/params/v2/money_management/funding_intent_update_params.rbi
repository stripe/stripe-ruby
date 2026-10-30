# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FundingIntentUpdateParams < ::Stripe::RequestParams
        class Check < ::Stripe::RequestParams
          # The ID of a File containing the back image of the check.
          sig { returns(T.nilable(String)) }
          def back_image; end
          sig { params(_back_image: T.nilable(String)).returns(T.nilable(String)) }
          def back_image=(_back_image); end
          # The ID of a File containing the front image of the check.
          sig { returns(T.nilable(String)) }
          def front_image; end
          sig { params(_front_image: T.nilable(String)).returns(T.nilable(String)) }
          def front_image=(_front_image); end
          sig { params(back_image: T.nilable(String), front_image: T.nilable(String)).void }
          def initialize(back_image: nil, front_image: nil); end
        end
        # The updated amount to add to the destination.
        sig { returns(T.nilable(::Stripe::V2::Amount)) }
        def amount; end
        sig {
          params(_amount: T.nilable(::Stripe::V2::Amount)).returns(T.nilable(::Stripe::V2::Amount))
         }
        def amount=(_amount); end
        # Updated details for a check FundingIntent.
        sig { returns(T.nilable(::Stripe::V2::MoneyManagement::FundingIntentUpdateParams::Check)) }
        def check; end
        sig {
          params(_check: T.nilable(::Stripe::V2::MoneyManagement::FundingIntentUpdateParams::Check)).returns(T.nilable(::Stripe::V2::MoneyManagement::FundingIntentUpdateParams::Check))
         }
        def check=(_check); end
        # The updated confirmation method.
        sig { returns(T.nilable(String)) }
        def confirmation_method; end
        sig { params(_confirmation_method: T.nilable(String)).returns(T.nilable(String)) }
        def confirmation_method=(_confirmation_method); end
        # The updated description.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # Updates to the key-value pairs attached to the FundingIntent.
        sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
         }
        def metadata=(_metadata); end
        sig {
          params(amount: T.nilable(::Stripe::V2::Amount), check: T.nilable(::Stripe::V2::MoneyManagement::FundingIntentUpdateParams::Check), confirmation_method: T.nilable(String), description: T.nilable(String), metadata: T.nilable(T::Hash[String, T.nilable(String)])).void
         }
        def initialize(
          amount: nil,
          check: nil,
          confirmation_method: nil,
          description: nil,
          metadata: nil
        ); end
      end
    end
  end
end