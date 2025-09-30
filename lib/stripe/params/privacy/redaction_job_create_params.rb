# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Privacy
    class RedactionJobCreateParams < Stripe::RequestParams
      class Objects < Stripe::RequestParams
        # Attribute for param field charges
        attr_accessor :charges
        # Attribute for param field checkout_sessions
        attr_accessor :checkout_sessions
        # Attribute for param field customers
        attr_accessor :customers
        # Attribute for param field identity_verification_sessions
        attr_accessor :identity_verification_sessions
        # Attribute for param field invoices
        attr_accessor :invoices
        # Attribute for param field issuing_cardholders
        attr_accessor :issuing_cardholders
        # Attribute for param field issuing_cards
        attr_accessor :issuing_cards
        # Attribute for param field payment_intents
        attr_accessor :payment_intents
        # Attribute for param field radar_value_list_items
        attr_accessor :radar_value_list_items
        # Attribute for param field setup_intents
        attr_accessor :setup_intents

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
        )
          @charges = charges
          @checkout_sessions = checkout_sessions
          @customers = customers
          @identity_verification_sessions = identity_verification_sessions
          @invoices = invoices
          @issuing_cardholders = issuing_cardholders
          @issuing_cards = issuing_cards
          @payment_intents = payment_intents
          @radar_value_list_items = radar_value_list_items
          @setup_intents = setup_intents
        end
      end
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The objects to redact. These root objects and their related ones will be validated for redaction.
      attr_accessor :objects
      # Determines the validation behavior of the job. Default is `error`.
      attr_accessor :validation_behavior

      def initialize(expand: nil, objects: nil, validation_behavior: nil)
        @expand = expand
        @objects = objects
        @validation_behavior = validation_behavior
      end
    end
  end
end
