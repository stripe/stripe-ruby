# frozen_string_literal: true

require "stripe/rbac/permission"
require "stripe/rbac/role"
require "stripe/rbac/context"
require "stripe/rbac/policy"

module Stripe
  module RBAC
    # Convenience method for setting context
    def self.with_context(user_id:, user_name:, role:, ip_address: nil, custom_permissions: nil, &block)
      Context.with_context(
        user_id: user_id,
        user_name: user_name,
        role: role,
        ip_address: ip_address,
        custom_permissions: custom_permissions, &block
      )
    end

    def self.current_context
      Context.current
    end

    def self.set_context(user_id:, user_name:, role:, ip_address: nil, custom_permissions: nil)
      context = Context.new(
        user_id: user_id,
        user_name: user_name,
        role: role,
        ip_address: ip_address,
        custom_permissions: custom_permissions
      )
      Context.set(context)
      context
    end

    def self.clear_context
      Context.clear
    end
  end
end
