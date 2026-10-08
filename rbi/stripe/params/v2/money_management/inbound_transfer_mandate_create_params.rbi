# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class InboundTransferMandateCreateParams < ::Stripe::RequestParams
        class AuBecs < ::Stripe::RequestParams
          # Optional prefix for the generated 18-character lodgement reference. The prefix is
          # normalized to uppercase and must be empty or contain 1-10 letters, digits, or underscores.
          sig { returns(T.nilable(String)) }
          def lodgement_reference_prefix; end
          sig { params(_lodgement_reference_prefix: T.nilable(String)).returns(T.nilable(String)) }
          def lodgement_reference_prefix=(_lodgement_reference_prefix); end
          sig { params(lodgement_reference_prefix: T.nilable(String)).void }
          def initialize(lodgement_reference_prefix: nil); end
        end
        class Bacs < ::Stripe::RequestParams
          # Optional prefix for the generated mandate reference (max 10 chars).
          sig { returns(T.nilable(String)) }
          def reference_prefix; end
          sig { params(_reference_prefix: T.nilable(String)).returns(T.nilable(String)) }
          def reference_prefix=(_reference_prefix); end
          sig { params(reference_prefix: T.nilable(String)).void }
          def initialize(reference_prefix: nil); end
        end
        class UserAcceptedDetails < ::Stripe::RequestParams
          class Online < ::Stripe::RequestParams
            # The IP address from which the merchant accepted the mandate. For direct account requests,
            # derived from the request when not supplied; rejected if obtainable from neither.
            sig { returns(T.nilable(String)) }
            def ip_address; end
            sig { params(_ip_address: T.nilable(String)).returns(T.nilable(String)) }
            def ip_address=(_ip_address); end
            # The user agent of the browser from which the merchant accepted the mandate. For direct
            # account requests, derived from the request when not supplied.
            sig { returns(T.nilable(String)) }
            def user_agent; end
            sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
            def user_agent=(_user_agent); end
            sig { params(ip_address: T.nilable(String), user_agent: T.nilable(String)).void }
            def initialize(ip_address: nil, user_agent: nil); end
          end
          # When the merchant accepted the mandate. Must be a past timestamp. For direct account
          # requests, defaults to the mandate's creation time when not supplied.
          sig { returns(T.nilable(String)) }
          def accepted_at; end
          sig { params(_accepted_at: T.nilable(String)).returns(T.nilable(String)) }
          def accepted_at=(_accepted_at); end
          # Optional details for online acceptance.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::InboundTransferMandateCreateParams::UserAcceptedDetails::Online))
           }
          def online; end
          sig {
            params(_online: T.nilable(::Stripe::V2::MoneyManagement::InboundTransferMandateCreateParams::UserAcceptedDetails::Online)).returns(T.nilable(::Stripe::V2::MoneyManagement::InboundTransferMandateCreateParams::UserAcceptedDetails::Online))
           }
          def online=(_online); end
          # Channel through which acceptance was obtained.
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
          sig {
            params(accepted_at: T.nilable(String), online: T.nilable(::Stripe::V2::MoneyManagement::InboundTransferMandateCreateParams::UserAcceptedDetails::Online), type: T.nilable(String)).void
           }
          def initialize(accepted_at: nil, online: nil, type: nil); end
        end
        # Optional Australian BECS-specific parameters.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::InboundTransferMandateCreateParams::AuBecs))
         }
        def au_becs; end
        sig {
          params(_au_becs: T.nilable(::Stripe::V2::MoneyManagement::InboundTransferMandateCreateParams::AuBecs)).returns(T.nilable(::Stripe::V2::MoneyManagement::InboundTransferMandateCreateParams::AuBecs))
         }
        def au_becs=(_au_becs); end
        # Optional Bacs-specific parameters.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::InboundTransferMandateCreateParams::Bacs))
         }
        def bacs; end
        sig {
          params(_bacs: T.nilable(::Stripe::V2::MoneyManagement::InboundTransferMandateCreateParams::Bacs)).returns(T.nilable(::Stripe::V2::MoneyManagement::InboundTransferMandateCreateParams::Bacs))
         }
        def bacs=(_bacs); end
        # The v2 credential (GB Bank Account or equivalent) this mandate is created
        # for. Must belong to the authenticated compartment.
        sig { returns(String) }
        def credential; end
        sig { params(_credential: String).returns(String) }
        def credential=(_credential); end
        # The mandate scheme type.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        # Optional acceptance evidence collected from the merchant. Direct account calls can omit
        # details that are derived from request metadata. Platform calls creating a mandate for a
        # connected account must provide accepted_at, online.ip_address, and online.user_agent.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::InboundTransferMandateCreateParams::UserAcceptedDetails))
         }
        def user_accepted_details; end
        sig {
          params(_user_accepted_details: T.nilable(::Stripe::V2::MoneyManagement::InboundTransferMandateCreateParams::UserAcceptedDetails)).returns(T.nilable(::Stripe::V2::MoneyManagement::InboundTransferMandateCreateParams::UserAcceptedDetails))
         }
        def user_accepted_details=(_user_accepted_details); end
        sig {
          params(au_becs: T.nilable(::Stripe::V2::MoneyManagement::InboundTransferMandateCreateParams::AuBecs), bacs: T.nilable(::Stripe::V2::MoneyManagement::InboundTransferMandateCreateParams::Bacs), credential: String, type: String, user_accepted_details: T.nilable(::Stripe::V2::MoneyManagement::InboundTransferMandateCreateParams::UserAcceptedDetails)).void
         }
        def initialize(
          au_becs: nil,
          bacs: nil,
          credential: nil,
          type: nil,
          user_accepted_details: nil
        ); end
      end
    end
  end
end