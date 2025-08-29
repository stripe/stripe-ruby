# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Issuing
      class CardService < StripeService
        class DeliverCardParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          def expand; end
          sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def expand=(_expand); end
          sig { params(expand: T.nilable(T::Array[String])).void }
          def initialize(expand: nil); end
        end
        class FailCardParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          def expand; end
          sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def expand=(_expand); end
          sig { params(expand: T.nilable(T::Array[String])).void }
          def initialize(expand: nil); end
        end
        class ReturnCardParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          def expand; end
          sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def expand=(_expand); end
          sig { params(expand: T.nilable(T::Array[String])).void }
          def initialize(expand: nil); end
        end
        class ShipCardParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          def expand; end
          sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def expand=(_expand); end
          sig { params(expand: T.nilable(T::Array[String])).void }
          def initialize(expand: nil); end
        end
        class SubmitCardParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          def expand; end
          sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def expand=(_expand); end
          sig { params(expand: T.nilable(T::Array[String])).void }
          def initialize(expand: nil); end
        end
        # Updates the shipping status of the specified Issuing Card object to delivered.
        sig {
          params(card: String, params: T.any(::Stripe::TestHelpers::Issuing::CardService::DeliverCardParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Card)
         }
        def deliver_card(card, params = {}, opts = {}); end

        # Updates the shipping status of the specified Issuing Card object to failure.
        sig {
          params(card: String, params: T.any(::Stripe::TestHelpers::Issuing::CardService::FailCardParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Card)
         }
        def fail_card(card, params = {}, opts = {}); end

        # Updates the shipping status of the specified Issuing Card object to returned.
        sig {
          params(card: String, params: T.any(::Stripe::TestHelpers::Issuing::CardService::ReturnCardParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Card)
         }
        def return_card(card, params = {}, opts = {}); end

        # Updates the shipping status of the specified Issuing Card object to shipped.
        sig {
          params(card: String, params: T.any(::Stripe::TestHelpers::Issuing::CardService::ShipCardParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Card)
         }
        def ship_card(card, params = {}, opts = {}); end

        # Updates the shipping status of the specified Issuing Card object to submitted. This method requires Stripe Version ‘2024-09-30.acacia' or later.
        sig {
          params(card: String, params: T.any(::Stripe::TestHelpers::Issuing::CardService::SubmitCardParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Card)
         }
        def submit_card(card, params = {}, opts = {}); end
      end
    end
  end
end