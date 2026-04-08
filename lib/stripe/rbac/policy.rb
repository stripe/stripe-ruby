# frozen_string_literal: true

module Stripe
  module RBAC
    # Enforces access control policies based on current context
    class Policy
      class AccessDeniedError < StandardError
        def initialize(message = "Access denied", context = nil, required_permission = nil)
          @context = context
          @required_permission = required_permission
          super(message)
        end

        attr_reader :context, :required_permission
      end

      def self.require_permission!(permission, message = nil)
        context = Context.current
        raise AccessDeniedError.new("No active context", nil, permission) unless context

        unless context.has_permission?(permission)
          error_msg = message || "Permission '#{permission}' required. Your role '#{context.role.key}' does not have this permission."
          raise AccessDeniedError.new(error_msg, context, permission)
        end

        context
      end

      def self.require_any_permission!(*permissions)
        message = nil
        context = Context.current
        raise AccessDeniedError.new("No active context", nil, permissions.join(",")) unless context

        unless context.has_any_permission?(*permissions)
          message = "One of permissions #{permissions.join(', ')} required"
          raise AccessDeniedError.new(message, context, permissions.join(","))
        end

        context
      end

      def self.require_all_permissions!(*permissions)
        context = Context.current
        raise AccessDeniedError.new("No active context", nil, permissions.join(",")) unless context

        unless context.has_all_permissions?(*permissions)
          message = "All permissions #{permissions.join(', ')} required"
          raise AccessDeniedError.new(message, context, permissions.join(","))
        end

        context
      end

      def self.can?(permission)
        context = Context.current
        return false unless context

        context.has_permission?(permission)
      end

      def self.can_any?(*permissions)
        context = Context.current
        return false unless context

        context.has_any_permission?(*permissions)
      end

      def self.can_all?(*permissions)
        context = Context.current
        return false unless context

        context.has_all_permissions?(*permissions)
      end

      # Scope queries based on role permissions
      def self.apply_scope(base_scope, user_role)
        case user_role.key
        when :auditor
          # Auditors can only see audit-related data
          base_scope.auditor_visible
        when :compliance_officer
          # Compliance officers see all data except user management
          base_scope.compliance_visible
        when :treasury_manager
          # Treasury managers see everything
          base_scope
        else
          base_scope
        end
      end

      # Execute block if permission is granted
      def self.authorize(permission)
        return yield if can?(permission)

        context = Context.current
        raise AccessDeniedError.new(
          "Permission '#{permission}' required",
          context,
          permission
        )
      end

      def self.authorize_any(*permissions)
        return yield if can_any?(*permissions)

        context = Context.current
        raise AccessDeniedError.new(
          "One of permissions #{permissions.join(', ')} required",
          context,
          permissions.join(",")
        )
      end

      def self.authorize_all(*permissions)
        return yield if can_all?(*permissions)

        context = Context.current
        raise AccessDeniedError.new(
          "All permissions #{permissions.join(', ')} required",
          context,
          permissions.join(",")
        )
      end
    end
  end
end
