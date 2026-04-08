# frozen_string_literal: true

module Stripe
  module RBAC
    # Defines available permissions in the system
    class Permission
      PERMISSIONS = {
        # Audit log permissions
        "audit.view" => "View audit logs",
        "audit.create" => "Create audit log entries",
        "audit.export" => "Export audit data",

        # Bank module permissions
        "bank.view" => "View bank transactions",
        "bank.create" => "Create bank transactions",
        "bank.edit" => "Edit bank transactions",
        "bank.delete" => "Delete bank transactions",
        "bank.reconcile" => "Reconcile bank accounts",

        # Crypto module permissions
        "crypto.view" => "View crypto transactions",
        "crypto.create" => "Create crypto transactions",
        "crypto.edit" => "Edit crypto transactions",
        "crypto.delete" => "Delete crypto transactions",
        "crypto.monitor_wallets" => "Monitor crypto wallets",

        # Report permissions
        "reports.view" => "View reports",
        "reports.create" => "Create reports",
        "reports.audit_create" => "Create audit reports",
        "reports.export" => "Export reports",

        # User management
        "users.view" => "View users",
        "users.manage" => "Manage users and roles",

        # Risk scoring
        "risk.view" => "View risk scores",
        "risk.assign" => "Assign risk scores",
      }.freeze

      attr_reader :name, :description

      def initialize(name, description = nil)
        @name = name
        @description = description || PERMISSIONS[name] || "Unknown permission"

        raise "Unknown permission: #{name}" unless PERMISSIONS.key?(name)
      end

      def self.all
        PERMISSIONS.keys.map { |name| new(name) }
      end

      def self.for_names(names)
        names.map { |name| new(name) }
      end

      def to_s
        name
      end

      def ==(other)
        name == (other.is_a?(Permission) ? other.name : other.to_s)
      end

      alias eql? ==

      def hash
        name.hash
      end
    end
  end
end
