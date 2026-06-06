# frozen_string_literal: true

module Stripe
  module Entity
    # Manages entity registration, account linking, and investor/owner relationships
    class Manager
      def initialize
        @entities = {}
        @account_links = {}
        @lock = Mutex.new
      end

      # Register a new entity (investor or owner)
      def register_entity(entity_id:, name:, entity_type:, role: :investor, metadata: {})
        RBAC::Policy.require_permission!("entity.register")

        @lock.synchronize do
          @entities[entity_id] = {
            id: entity_id,
            name: name,
            entity_type: entity_type, # :firm, :individual, :fund, etc.
            role: role, # :investor, :owner, :operator
            metadata: metadata.merge(
              registered_at: Time.now.utc,
              registered_by: RBAC::Context.current.user_id,
              qcf_route: "QCF",
              compliance_status: "registered"
            ),
            internal_accounts: [],
            external_accounts: [],
            relationships: [],
          }

          # Log audit event
          Audit.log_from_context(
            action: "register_entity",
            resource_type: "entity",
            resource_id: entity_id,
            changes: @entities[entity_id],
            module_name: "entity"
          )

          @entities[entity_id]
        end
      end

      # Link an internal account to an entity
      def link_internal_account(entity_id:, account_id:, account_name:, account_type: :bank,
                                currency: "USD", metadata: {})
        RBAC::Policy.require_permission!("entity.link_account")

        @lock.synchronize do
          raise "Entity not found: #{entity_id}" unless @entities[entity_id]

          link_record = {
            entity_id: entity_id,
            account_id: account_id,
            account_name: account_name,
            account_type: account_type,
            currency: currency,
            link_type: :internal,
            metadata: metadata.merge(
              linked_at: Time.now.utc,
              linked_by: RBAC::Context.current.user_id,
              qcf_tracked: true
            ),
            status: "active",
          }

          @entities[entity_id][:internal_accounts] << link_record
          @account_links["#{entity_id}_internal_#{account_id}"] = link_record

          Audit.log_from_context(
            action: "link_internal_account",
            resource_type: "entity",
            resource_id: entity_id,
            changes: { account_id: account_id, account_type: account_type },
            module_name: "entity"
          )

          link_record
        end
      end

      # Link an external account to an entity
      def link_external_account(entity_id:, external_account_id:, external_name:,
                                provider: :bank, currency: "USD", metadata: {})
        RBAC::Policy.require_permission!("entity.link_account")

        @lock.synchronize do
          raise "Entity not found: #{entity_id}" unless @entities[entity_id]

          link_record = {
            entity_id: entity_id,
            external_account_id: external_account_id,
            external_name: external_name,
            provider: provider, # :bank, :wallet, :exchange, etc.
            currency: currency,
            link_type: :external,
            metadata: metadata.merge(
              linked_at: Time.now.utc,
              linked_by: RBAC::Context.current.user_id,
              qcf_tracked: true,
              verified: false # External accounts need verification
            ),
            status: "pending_verification",
          }

          @entities[entity_id][:external_accounts] << link_record
          @account_links["#{entity_id}_external_#{external_account_id}"] = link_record

          Audit.log_from_context(
            action: "link_external_account",
            resource_type: "entity",
            resource_id: entity_id,
            changes: { external_account_id: external_account_id, provider: provider },
            module_name: "entity"
          )

          link_record
        end
      end

      # Create a relationship between two entities (e.g., investor-fund relationship)
      def create_relationship(from_entity_id:, to_entity_id:, relationship_type:, metadata: {})
        RBAC::Policy.require_permission!("entity.manage_relationships")

        @lock.synchronize do
          raise "From entity not found: #{from_entity_id}" unless @entities[from_entity_id]
          raise "To entity not found: #{to_entity_id}" unless @entities[to_entity_id]

          relationship = {
            from_entity_id: from_entity_id,
            to_entity_id: to_entity_id,
            relationship_type: relationship_type, # :owns, :invests_in, :manages, :partners_with
            metadata: metadata.merge(
              created_at: Time.now.utc,
              created_by: RBAC::Context.current.user_id,
              qcf_documented: true
            ),
            status: "active",
          }

          @entities[from_entity_id][:relationships] << relationship
          @entities[to_entity_id][:relationships] << relationship.merge(reverse: true)

          Audit.log_from_context(
            action: "create_relationship",
            resource_type: "entity",
            resource_id: from_entity_id,
            changes: { relationship_with: to_entity_id, type: relationship_type },
            module_name: "entity"
          )

          relationship
        end
      end

      # Get entity details
      def get_entity(entity_id)
        RBAC::Policy.require_permission!("entity.view")

        @lock.synchronize do
          @entities[entity_id]
        end
      end

      # List all entities
      def list_entities(role: nil, entity_type: nil)
        RBAC::Policy.require_permission!("entity.view")

        @lock.synchronize do
          results = @entities.values

          results = results.select { |e| e[:role] == role } if role
          results = results.select { |e| e[:entity_type] == entity_type } if entity_type

          results
        end
      end

      # Get all accounts linked to an entity
      def get_linked_accounts(entity_id)
        RBAC::Policy.require_permission!("entity.view")

        @lock.synchronize do
          entity = @entities[entity_id]
          return nil unless entity

          {
            entity_id: entity_id,
            internal_accounts: entity[:internal_accounts].dup,
            external_accounts: entity[:external_accounts].dup,
          }
        end
      end

      # Verify an external account
      def verify_external_account(entity_id:, external_account_id:)
        RBAC::Policy.require_permission!("entity.verify_accounts")

        @lock.synchronize do
          entity = @entities[entity_id]
          raise "Entity not found: #{entity_id}" unless entity

          account_link = entity[:external_accounts].find { |a| a[:external_account_id] == external_account_id }
          raise "External account not linked: #{external_account_id}" unless account_link

          account_link[:status] = "verified"
          account_link[:metadata][:verified] = true
          account_link[:metadata][:verified_at] = Time.now.utc

          Audit.log_from_context(
            action: "verify_external_account",
            resource_type: "entity",
            resource_id: entity_id,
            changes: { external_account_id: external_account_id, status: "verified" },
            module_name: "entity"
          )

          account_link
        end
      end

      # Get entity's relationships
      def get_relationships(entity_id)
        RBAC::Policy.require_permission!("entity.view")

        @lock.synchronize do
          entity = @entities[entity_id]
          return nil unless entity

          entity[:relationships].reject { |r| r[:reverse] }
        end
      end

      # Generate entity compliance report for QCF
      def generate_qcf_report(entity_id, start_date: Date.today - 30, end_date: Date.today)
        RBAC::Policy.require_permission!("entity.view")

        entity = get_entity(entity_id)
        return nil unless entity

        @lock.synchronize do
          {
            report_id: SecureRandom.uuid,
            entity_id: entity_id,
            entity_name: entity[:name],
            entity_type: entity[:entity_type],
            role: entity[:role],
            report_period: { start_date: start_date, end_date: end_date },
            internal_accounts: entity[:internal_accounts].map do |a|
              { id: a[:account_id], name: a[:account_name], type: a[:account_type], status: a[:status] }
            end,
            external_accounts: entity[:external_accounts].map do |a|
              { id: a[:external_account_id], name: a[:external_name], provider: a[:provider], status: a[:status] }
            end,
            relationships: entity[:relationships].reject { |r| r[:reverse] }.map do |r|
              {
                with: r[:to_entity_id] || r[:from_entity_id],
                type: r[:relationship_type],
                status: r[:status],
              }
            end,
            qcf_metadata: {
              route: "QCF",
              compliance_status: entity[:metadata][:compliance_status],
              registered_at: entity[:metadata][:registered_at],
              document_type: "Entity Compliance Report",
              classification: "Confidential",
            },
            generated_at: Time.now.utc.iso8601,
            generated_by: RBAC::Context.current.user_id,
          }
        end
      end

      def count
        @lock.synchronize { @entities.size }
      end

      def clear!
        @lock.synchronize do
          @entities.clear
          @account_links.clear
        end
      end

      def self.instance
        @instance ||= new
      end
    end

    def self.entities
      Manager.instance
    end
  end
end
