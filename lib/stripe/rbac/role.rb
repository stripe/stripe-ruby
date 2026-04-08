# frozen_string_literal: true

module Stripe
  module RBAC
    # Role definition with associated permissions and hierarchy
    class Role
      ROLES = {
        auditor: {
          name: "Auditor",
          description: "Read-only access to audit logs and reports",
          permissions: [
            "audit.view",
            "bank.view",
            "crypto.view",
            "reports.view",
            "reports.export",
            "risk.view",
          ],
        },
        compliance_officer: {
          name: "Compliance Officer",
          description: "Read/write audit logs, create reports, assign risk scores",
          permissions: [
            "audit.view",
            "audit.create",
            "audit.export",
            "reports.view",
            "reports.create",
            "reports.audit_create",
            "reports.export",
            "bank.view",
            "crypto.view",
            "risk.view",
            "risk.assign",
            "users.view",
          ],
        },
        treasury_manager: {
          name: "Treasury Manager",
          description: "Full access to bank/crypto operations and user management",
          permissions: [
            "audit.view",
            "audit.create",
            "audit.export",
            "bank.view",
            "bank.create",
            "bank.edit",
            "bank.delete",
            "bank.reconcile",
            "crypto.view",
            "crypto.create",
            "crypto.edit",
            "crypto.delete",
            "crypto.monitor_wallets",
            "reports.view",
            "reports.create",
            "reports.audit_create",
            "reports.export",
            "risk.view",
            "risk.assign",
            "users.view",
            "users.manage",
          ],
        },
      }.freeze

      attr_reader :key, :name, :description, :permissions

      def initialize(key, custom_permissions = nil)
        role_def = ROLES[key.to_sym]
        raise "Unknown role: #{key}" unless role_def

        @key = key.to_sym
        @name = role_def[:name]
        @description = role_def[:description]
        @permissions = if custom_permissions
                         Set.new(custom_permissions.map { |p| Permission.new(p) })
                       else
                         Set.new(Permission.for_names(role_def[:permissions]))
                       end
      end

      def has_permission?(permission_name)
        @permissions.any? { |p| p.name == permission_name.to_s }
      end

      def has_any_permission?(*permission_names)
        permission_names.any? { |p| has_permission?(p) }
      end

      def has_all_permissions?(*permission_names)
        permission_names.all? { |p| has_permission?(p) }
      end

      def self.all_roles
        ROLES.keys.map { |key| new(key) }
      end

      def self.for_key(key)
        new(key)
      end

      def to_s
        name
      end

      def ==(other)
        key == (other.is_a?(Role) ? other.key : other.to_sym)
      end

      alias eql? ==

      def hash
        key.hash
      end
    end
  end
end
