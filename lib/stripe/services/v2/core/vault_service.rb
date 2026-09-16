# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class VaultService < StripeService
        attr_reader :gb_bank_accounts, :network_tokens, :us_bank_accounts

        def initialize(requestor)
          super
          @gb_bank_accounts = Stripe::V2::Core::Vault::GbBankAccountService.new(@requestor)
          @network_tokens = Stripe::V2::Core::Vault::NetworkTokenService.new(@requestor)
          @us_bank_accounts = Stripe::V2::Core::Vault::UsBankAccountService.new(@requestor)
        end
      end
    end
  end
end
