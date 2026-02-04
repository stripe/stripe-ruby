# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Privacy
    class RedactionJobCreateParams < ::Stripe::RequestParams
      class Objects < ::Stripe::RequestParams
        # Attribute for param field charges
        sig { returns(T.nilable(T::Array[String])) }
        def charges; end
        sig { params(_charges: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def charges=(_charges); end
        # Attribute for param field checkout_sessions
        sig { returns(T.nilable(T::Array[String])) }
        def checkout_sessions; end
        sig {
          params(_checkout_sessions: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def checkout_sessions=(_checkout_sessions); end
        # Attribute for param field customers
        sig { returns(T.nilable(T::Array[String])) }
        def customers; end
        sig { params(_customers: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def customers=(_customers); end
        # Attribute for param field identity_verification_sessions
        sig { returns(T.nilable(T::Array[String])) }
        def identity_verification_sessions; end
        sig {
          params(_identity_verification_sessions: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def identity_verification_sessions=(_identity_verification_sessions); end
        # Attribute for param field invoices
        sig { returns(T.nilable(T::Array[String])) }
        def invoices; end
        sig { params(_invoices: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def invoices=(_invoices); end
        # Attribute for param field issuing_cardholders
        sig { returns(T.nilable(T::Array[String])) }
        def issuing_cardholders; end
        sig {
          params(_issuing_cardholders: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def issuing_cardholders=(_issuing_cardholders); end
        # Attribute for param field issuing_cards
        sig { returns(T.nilable(T::Array[String])) }
        def issuing_cards; end
        sig {
          params(_issuing_cards: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def issuing_cards=(_issuing_cards); end
        # Attribute for param field payment_intents
        sig { returns(T.nilable(T::Array[String])) }
        def payment_intents; end
        sig {
          params(_payment_intents: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def payment_intents=(_payment_intents); end
        # Attribute for param field radar_value_list_items
        sig { returns(T.nilable(T::Array[String])) }
        def radar_value_list_items; end
        sig {
          params(_radar_value_list_items: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def radar_value_list_items=(_radar_value_list_items); end
        # Attribute for param field setup_intents
        sig { returns(T.nilable(T::Array[String])) }
        def setup_intents; end
        sig {
          params(_setup_intents: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def setup_intents=(_setup_intents); end
        sig {
          params(charges: T.nilable(T::Array[String]), checkout_sessions: T.nilable(T::Array[String]), customers: T.nilable(T::Array[String]), identity_verification_sessions: T.nilable(T::Array[String]), invoices: T.nilable(T::Array[String]), issuing_cardholders: T.nilable(T::Array[String]), issuing_cards: T.nilable(T::Array[String]), payment_intents: T.nilable(T::Array[String]), radar_value_list_items: T.nilable(T::Array[String]), setup_intents: T.nilable(T::Array[String])).void
         }
        def initialize(
          charges: nil,
          checkout_sessions: nil,
          customers: nil,
          identity_verification_sessions: nil,
          invoices: nil,
          issuing_cardholders: nil,
          issuing_cards: nil,
          payment_intents: nil,
          radar_value_list_items: nil,
          setup_intents: nil
        ); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The objects to redact. These root objects and their related ones will be validated for redaction.
      sig { returns(::Stripe::Privacy::RedactionJobCreateParams::Objects) }
      def objects; end
      sig {
        params(_objects: ::Stripe::Privacy::RedactionJobCreateParams::Objects).returns(::Stripe::Privacy::RedactionJobCreateParams::Objects)
       }
      def objects=(_objects); end
      # Determines the validation behavior of the job. Default is `error`.
      sig { returns(T.nilable(String)) }
      def validation_behavior; end
      sig { params(_validation_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def validation_behavior=(_validation_behavior); end
      sig {
        params(expand: T.nilable(T::Array[String]), objects: ::Stripe::Privacy::RedactionJobCreateParams::Objects, validation_behavior: T.nilable(String)).void
       }
      def initialize(expand: nil, objects: nil, validation_behavior: nil); end
    end
  end
end