# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a Fraudulent Website signal is ready for an account.
    class V2CoreAccountSignalsFraudulentWebsiteReadyEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.core.account_signals.fraudulent_website_ready"
      end

      class V2CoreAccountSignalsFraudulentWebsiteReadyEventData < ::Stripe::StripeObject
        # The account for which the signals belong to. Empty if this was an entityless request.
        attr_reader :account
        # Human readable description of concerns found in the website, produced by LLM. If risk_level is unknown, this explains why evaluation could not run.
        attr_reader :details
        # Time at which the signal was evaluated.
        attr_reader :evaluated_at
        # Unique identifier for the fraudulent website evaluation request.
        attr_reader :evaluation_id
        # Risk level for the fraudulent website signal. If evaluation could not run (like invalid website), we return unknown.
        attr_reader :risk_level
        # Unique identifier for the fraudulent website signal.
        attr_reader :signal_id

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2CoreAccountSignalsFraudulentWebsiteReadyEventData }
      end
      attr_reader :data
    end

    # Occurs when a Fraudulent Website signal is ready for an account.
    class V2CoreAccountSignalsFraudulentWebsiteReadyEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.core.account_signals.fraudulent_website_ready"
      end
    end
  end
end
