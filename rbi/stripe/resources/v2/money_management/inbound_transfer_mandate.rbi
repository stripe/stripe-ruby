# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # An InboundTransferMandate represents Stripe's authorization to debit a
      # merchant's external bank account (v2 credential) on their behalf.
      class InboundTransferMandate < APIResource
        class AuBecs < ::Stripe::StripeObject
          # The generated AU BECS lodgement reference. It is 18 uppercase alphanumeric or underscore
          # characters and incorporates lodgement_reference_prefix when one was supplied at creation.
          sig { returns(String) }
          def lodgement_reference; end
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
          sig { returns(String) }
          def reference; end
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
            sig { returns(String) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Present when the mandate is in the CANCELED state.
          sig { returns(T.nilable(Canceled)) }
          def canceled; end
          def self.inner_class_types
            @inner_class_types = {canceled: Canceled}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusTransitions < ::Stripe::StripeObject
          # When the mandate became active.
          sig { returns(T.nilable(String)) }
          def activated_at; end
          # When the mandate was canceled.
          sig { returns(T.nilable(String)) }
          def canceled_at; end
          # When the mandate expired.
          sig { returns(T.nilable(String)) }
          def expired_at; end
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
            sig { returns(T.nilable(String)) }
            def ip_address; end
            # The user agent of the browser from which the merchant accepted the mandate. For direct
            # account requests, derived from the request when not supplied.
            sig { returns(T.nilable(String)) }
            def user_agent; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # When the merchant accepted the mandate. Must be a past timestamp. For direct account
          # requests, defaults to the mandate's creation time when not supplied.
          sig { returns(T.nilable(String)) }
          def accepted_at; end
          # Optional details for online acceptance.
          sig { returns(T.nilable(Online)) }
          def online; end
          # Channel through which acceptance was obtained.
          sig { returns(T.nilable(String)) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {online: Online}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Australian BECS-specific details. Present when type is AU_BECS.
        sig { returns(T.nilable(AuBecs)) }
        def au_becs; end
        # Bacs-specific details. Present when type is BACS.
        sig { returns(T.nilable(Bacs)) }
        def bacs; end
        # Creation time of the mandate. RFC 3339 UTC, millisecond precision.
        sig { returns(String) }
        def created; end
        # The v2 credential (e.g. GB Bank Account) this mandate authorizes debits for.
        sig { returns(String) }
        def credential; end
        # Unique identifier for the InboundTransferMandate.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The current lifecycle status of the mandate.
        sig { returns(String) }
        def status; end
        # Additional details about the current status (e.g. cancelation reason).
        sig { returns(StatusDetails) }
        def status_details; end
        # Timestamps for each state transition.
        sig { returns(StatusTransitions) }
        def status_transitions; end
        # The mandate scheme type.
        sig { returns(String) }
        def type; end
        # Evidence of the merchant's acceptance of the mandate.
        sig { returns(UserAcceptedDetails) }
        def user_accepted_details; end
      end
    end
  end
end