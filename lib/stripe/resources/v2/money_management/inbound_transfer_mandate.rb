# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # An InboundTransferMandate represents Stripe's authorization to debit a
      # merchant's external bank account (v2 credential) on their behalf.
      class InboundTransferMandate < APIResource
        OBJECT_NAME = "v2.money_management.inbound_transfer_mandate"
        def self.object_name
          "v2.money_management.inbound_transfer_mandate"
        end

        class AuBecs < ::Stripe::StripeObject
          # The generated AU BECS lodgement reference. It is 18 uppercase alphanumeric or underscore
          # characters and incorporates lodgement_reference_prefix when one was supplied at creation.
          attr_reader :lodgement_reference

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Bacs < ::Stripe::StripeObject
          # The generated Bacs mandate reference. May incorporate the optional
          # reference_prefix supplied at creation time.
          attr_reader :reference

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusDetails < ::Stripe::StripeObject
          class Canceled < ::Stripe::StripeObject
            # The reason the mandate was canceled.
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Present when the mandate is in the CANCELED state.
          attr_reader :canceled

          def self.inner_class_types
            @inner_class_types = { canceled: Canceled }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusTransitions < ::Stripe::StripeObject
          # When the mandate became active.
          attr_reader :activated_at
          # When the mandate was canceled.
          attr_reader :canceled_at
          # When the mandate expired.
          attr_reader :expired_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class UserAcceptedDetails < ::Stripe::StripeObject
          class Online < ::Stripe::StripeObject
            # The IP address from which the merchant accepted the mandate. For direct account requests,
            # derived from the request when not supplied; rejected if obtainable from neither.
            attr_reader :ip_address
            # The user agent of the browser from which the merchant accepted the mandate. For direct
            # account requests, derived from the request when not supplied.
            attr_reader :user_agent

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # When the merchant accepted the mandate. Must be a past timestamp. For direct account
          # requests, defaults to the mandate's creation time when not supplied.
          attr_reader :accepted_at
          # Optional details for online acceptance.
          attr_reader :online
          # Channel through which acceptance was obtained.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { online: Online }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Australian BECS-specific details. Present when type is AU_BECS.
        attr_reader :au_becs
        # Bacs-specific details. Present when type is BACS.
        attr_reader :bacs
        # Creation time of the mandate. RFC 3339 UTC, millisecond precision.
        attr_reader :created
        # The v2 credential (e.g. GB Bank Account) this mandate authorizes debits for.
        attr_reader :credential
        # Unique identifier for the InboundTransferMandate.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The current lifecycle status of the mandate.
        attr_reader :status
        # Additional details about the current status (e.g. cancelation reason).
        attr_reader :status_details
        # Timestamps for each state transition.
        attr_reader :status_transitions
        # The mandate scheme type.
        attr_reader :type
        # Evidence of the merchant's acceptance of the mandate.
        attr_reader :user_accepted_details

        def self.inner_class_types
          @inner_class_types = {
            au_becs: AuBecs,
            bacs: Bacs,
            status_details: StatusDetails,
            status_transitions: StatusTransitions,
            user_accepted_details: UserAcceptedDetails,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
