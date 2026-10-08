# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class InboundTransferMandateCreateParams < ::Stripe::RequestParams
        class AuBecs < ::Stripe::RequestParams
          # Optional prefix for the generated 18-character lodgement reference. The prefix is
          # normalized to uppercase and must be empty or contain 1-10 letters, digits, or underscores.
          attr_accessor :lodgement_reference_prefix

          def initialize(lodgement_reference_prefix: nil)
            @lodgement_reference_prefix = lodgement_reference_prefix
          end
        end

        class Bacs < ::Stripe::RequestParams
          # Optional prefix for the generated mandate reference (max 10 chars).
          attr_accessor :reference_prefix

          def initialize(reference_prefix: nil)
            @reference_prefix = reference_prefix
          end
        end

        class UserAcceptedDetails < ::Stripe::RequestParams
          class Online < ::Stripe::RequestParams
            # The IP address from which the merchant accepted the mandate. For direct account requests,
            # derived from the request when not supplied; rejected if obtainable from neither.
            attr_accessor :ip_address
            # The user agent of the browser from which the merchant accepted the mandate. For direct
            # account requests, derived from the request when not supplied.
            attr_accessor :user_agent

            def initialize(ip_address: nil, user_agent: nil)
              @ip_address = ip_address
              @user_agent = user_agent
            end
          end
          # When the merchant accepted the mandate. Must be a past timestamp. For direct account
          # requests, defaults to the mandate's creation time when not supplied.
          attr_accessor :accepted_at
          # Optional details for online acceptance.
          attr_accessor :online
          # Channel through which acceptance was obtained.
          attr_accessor :type

          def initialize(accepted_at: nil, online: nil, type: nil)
            @accepted_at = accepted_at
            @online = online
            @type = type
          end
        end
        # Optional Australian BECS-specific parameters.
        attr_accessor :au_becs
        # Optional Bacs-specific parameters.
        attr_accessor :bacs
        # The v2 credential (GB Bank Account or equivalent) this mandate is created
        # for. Must belong to the authenticated compartment.
        attr_accessor :credential
        # The mandate scheme type.
        attr_accessor :type
        # Optional acceptance evidence collected from the merchant. Direct account calls can omit
        # details that are derived from request metadata. Platform calls creating a mandate for a
        # connected account must provide accepted_at, online.ip_address, and online.user_agent.
        attr_accessor :user_accepted_details

        def initialize(
          au_becs: nil,
          bacs: nil,
          credential: nil,
          type: nil,
          user_accepted_details: nil
        )
          @au_becs = au_becs
          @bacs = bacs
          @credential = credential
          @type = type
          @user_accepted_details = user_accepted_details
        end
      end
    end
  end
end
