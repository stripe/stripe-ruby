# frozen_string_literal: true

module Stripe
  module RBAC
    # Manages the current user and their role/permissions in request context
    class Context
      CONTEXT_KEY = :stripe_rbac_context

      attr_reader :user_id, :user_name, :role, :ip_address, :timestamp

      def initialize(user_id:, user_name:, role:, ip_address: nil, custom_permissions: nil)
        @user_id = user_id
        @user_name = user_name
        @role = if role.is_a?(Role)
                  role
                else
                  Role.new(role, custom_permissions)
                end
        @ip_address = ip_address
        @timestamp = Time.now.utc
      end

      def has_permission?(permission_name)
        @role.has_permission?(permission_name)
      end

      def has_any_permission?(*permission_names)
        @role.has_any_permission?(*permission_names)
      end

      def has_all_permissions?(*permission_names)
        @role.has_all_permissions?(*permission_names)
      end

      # Set context in thread-local storage
      def self.set(context)
        Thread.current[CONTEXT_KEY] = context
      end

      # Get current context from thread-local storage
      def self.current
        Thread.current[CONTEXT_KEY]
      end

      # Check if context exists
      def self.current?
        !current.nil?
      end

      # Clear context
      def self.clear
        Thread.current[CONTEXT_KEY] = nil
      end

      # Execute block with a specific context
      def self.with_context(user_id:, user_name:, role:, ip_address: nil, custom_permissions: nil)
        context = new(
          user_id: user_id,
          user_name: user_name,
          role: role,
          ip_address: ip_address,
          custom_permissions: custom_permissions
        )
        old_context = current
        set(context)
        begin
          yield context
        ensure
          set(old_context)
        end
      end

      def to_h
        {
          user_id: @user_id,
          user_name: @user_name,
          role: @role.key.to_s,
          ip_address: @ip_address,
          timestamp: @timestamp.iso8601,
        }
      end

      def to_s
        "Context(user: #{@user_name}, role: #{@role.key})"
      end
    end
  end
end
