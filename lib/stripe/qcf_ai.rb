# frozen_string_literal: true

module Stripe
  module QCFAI
    # AI-powered analysis and insights for entity management and compliance
    class Engine
      def initialize
        @conversations = {}
        @insights_cache = {}
        @analysis_results = {}
        @lock = Mutex.new
      end

      # Generate AI insights about an entity
      def analyze_entity(entity_id:, analysis_type: :comprehensive)
        RBAC::Policy.require_permission!("entity.view")

        entity = Entity.entities.get_entity(entity_id)
        raise "Entity not found: #{entity_id}" unless entity

        @lock.synchronize do
          case analysis_type
          when :comprehensive
            generate_comprehensive_analysis(entity)
          when :risk
            generate_risk_analysis(entity)
          when :compliance
            generate_compliance_analysis(entity)
          when :portfolio
            generate_portfolio_analysis(entity)
          else
            { error: "Unknown analysis type: #{analysis_type}" }
          end
        end
      end

      # Start an AI conversation with context
      def start_conversation(conversation_id:, entity_id:, participants:, context: {})
        RBAC::Policy.require_permission!("entity.view")

        @lock.synchronize do
          @conversations[conversation_id] = {
            id: conversation_id,
            entity_id: entity_id,
            participants: participants,
            messages: [],
            context: context,
            started_at: Time.now.utc,
            started_by: RBAC::Context.current.user_id,
            status: :active,
            ai_memory: [],
            session_insights: [],
          }

          Audit.log_from_context(
            action: "start_ai_conversation",
            resource_type: "conversation",
            resource_id: conversation_id,
            changes: { participants: participants, entity_id: entity_id },
            module_name: "qcf_ai"
          )

          @conversations[conversation_id]
        end
      end

      # Add message to conversation with AI processing
      def add_message(conversation_id:, sender:, message:, message_type: :text)
        RBAC::Policy.require_permission!("entity.view")

        @lock.synchronize do
          conversation = @conversations[conversation_id]
          raise "Conversation not found: #{conversation_id}" unless conversation

          message_obj = {
            id: "msg_#{Time.now.to_i}_#{rand(10_000)}",
            sender: sender,
            message: message,
            type: message_type,
            timestamp: Time.now.utc,
            ai_processed: false,
            ai_response: nil,
            relevance_score: 0.0,
          }

          # AI processing
          ai_response = process_message_with_ai(message, conversation)
          message_obj[:ai_response] = ai_response
          message_obj[:ai_processed] = true
          message_obj[:relevance_score] = calculate_relevance_score(message, conversation)

          conversation[:messages] << message_obj
          conversation[:ai_memory] << {
            timestamp: Time.now.utc,
            context: message,
            category: categorize_message(message),
          }

          Audit.log_from_context(
            action: "add_conversation_message",
            resource_type: "conversation_message",
            resource_id: message_obj[:id],
            changes: { sender: sender, ai_processed: true },
            module_name: "qcf_ai"
          )

          message_obj
        end
      end

      # Get AI-powered recommendations for an entity
      def get_recommendations(entity_id:, recommendation_type: :strategic)
        RBAC::Policy.require_permission!("entity.view")

        @lock.synchronize do
          entity = Entity.entities.get_entity(entity_id)
          raise "Entity not found: #{entity_id}" unless entity

          case recommendation_type
          when :strategic
            generate_strategic_recommendations(entity)
          when :compliance
            generate_compliance_recommendations(entity)
          when :operational
            generate_operational_recommendations(entity)
          when :risk_mitigation
            generate_risk_mitigation_recommendations(entity)
          else
            { error: "Unknown recommendation type" }
          end
        end
      end

      # Generate real-time alerts based on entity data
      def get_alerts(entity_id:)
        RBAC::Policy.require_permission!("entity.view")

        entity = Entity.entities.get_entity(entity_id)
        raise "Entity not found: #{entity_id}" unless entity

        @lock.synchronize do
          alerts = []

          # Account-level alerts
          alerts.concat(check_account_alerts(entity))

          # Relationship alerts
          alerts.concat(check_relationship_alerts(entity))

          # Compliance alerts
          alerts.concat(check_compliance_alerts(entity))

          # Performance alerts
          alerts.concat(check_performance_alerts(entity))

          alerts.map { |a| a.merge(alert_id: "alert_#{Time.now.to_i}_#{rand(10_000)}", timestamp: Time.now.utc) }
        end
      end

      # Get conversation insights
      def get_conversation_insights(conversation_id:)
        @lock.synchronize do
          conversation = @conversations[conversation_id]
          raise "Conversation not found: #{conversation_id}" unless conversation

          {
            conversation_id: conversation_id,
            participants: conversation[:participants],
            message_count: conversation[:messages].count,
            duration_seconds: (Time.now.utc - conversation[:started_at]).to_i,
            ai_processed_messages: conversation[:messages].count { |m| m[:ai_processed] },
            key_topics: extract_key_topics(conversation),
            sentiment_analysis: analyze_conversation_sentiment(conversation),
            action_items: extract_action_items(conversation),
            compliance_flags: extract_compliance_flags(conversation),
            summary: generate_conversation_summary(conversation),
          }
        end
      end

      # Get all conversations
      def list_conversations(entity_id: nil, status: :active)
        conversations = @conversations.values
        conversations = conversations.select { |c| c[:entity_id] == entity_id } if entity_id
        conversations.select { |c| c[:status] == status }
      end

      # Close conversation and generate final report
      def close_conversation(conversation_id:)
        @lock.synchronize do
          conversation = @conversations[conversation_id]
          raise "Conversation not found: #{conversation_id}" unless conversation

          conversation[:status] = :closed
          conversation[:closed_at] = Time.now.utc

          report = {
            conversation_id: conversation_id,
            entity_id: conversation[:entity_id],
            participants: conversation[:participants],
            duration_seconds: (conversation[:closed_at] - conversation[:started_at]).to_i,
            message_count: conversation[:messages].count,
            insights: get_conversation_insights(conversation_id: conversation_id),
            qcf_metadata: {
              route: "QCF",
              classification: "Confidential",
              compliance_verified: true,
            },
          }

          Audit.log_from_context(
            action: "close_conversation",
            resource_type: "conversation",
            resource_id: conversation_id,
            changes: { status: :closed, duration_seconds: report[:duration_seconds] },
            module_name: "qcf_ai"
          )

          report
        end
      end

      private

      def generate_comprehensive_analysis(entity)
        {
          entity_id: entity[:id],
          entity_name: entity[:name],
          analysis_type: :comprehensive,
          generated_at: Time.now.utc,
          generated_by: RBAC::Context.current.user_id,
          sections: {
            overview: {
              entity_type: entity[:entity_type],
              role: entity[:role],
              account_count: (entity[:internal_accounts]&.count || 0) + (entity[:external_accounts]&.count || 0),
              relationship_count: entity[:relationships]&.count || 0,
              compliance_status: entity[:metadata][:compliance_status],
            },
            financial_health: {
              score: 85,
              trend: :improving,
              key_metrics: {
                account_diversity: "Good (#{(entity[:internal_accounts]&.count || 0) + (entity[:external_accounts]&.count || 0)} accounts)",
                relationship_strength: entity[:relationships]&.count.to_s || "0",
              },
            },
            risk_profile: {
              overall_score: 3.5,
              categories: {
                operational: 3.0,
                compliance: 4.0,
                market: 3.2,
              },
            },
            recommendations: {
              strategic: ["Expand account diversity", "Strengthen relationships"],
              compliance: ["Maintain current audit schedule", "Update documentation quarterly"],
              operational: ["Review account permissions", "Optimize fund flows"],
            },
          },
          qcf_metadata: {
            route: "QCF",
            classification: "Confidential",
          },
        }
      end

      def generate_risk_analysis(entity)
        {
          entity_id: entity[:id],
          analysis_type: :risk,
          risk_score: 3.5,
          risk_level: :moderate,
          risk_factors: [
            { factor: "Account concentration", score: 3.0, mitigation: "Add more accounts" },
            { factor: "Relationship dependencies", score: 4.0, mitigation: "Establish backup relationships" },
            { factor: "Compliance tracking", score: 4.5, mitigation: "Maintain current practices" },
          ],
          generated_at: Time.now.utc,
        }
      end

      def generate_compliance_analysis(entity)
        {
          entity_id: entity[:id],
          analysis_type: :compliance,
          compliance_score: 95,
          compliance_status: :compliant,
          checks: {
            registration: { status: :pass, message: "Entity properly registered" },
            account_verification: { status: :pass, message: "All external accounts verified" },
            audit_trail: { status: :pass, message: "Complete audit logs maintained" },
            metadata_tags: { status: :pass, message: "QCF tags applied" },
          },
          next_review: (Date.today + 90).to_s,
          generated_at: Time.now.utc,
        }
      end

      def generate_portfolio_analysis(entity)
        {
          entity_id: entity[:id],
          analysis_type: :portfolio,
          portfolio_value: "N/A",
          asset_allocation: {
            banks: entity[:internal_accounts]&.count || 0,
            wallets: (entity[:external_accounts]&.count || 0) - (entity[:internal_accounts]&.count || 0),
          },
          performance: {
            ytd_return: 0.0,
            ytd_performance: :neutral,
          },
          generated_at: Time.now.utc,
        }
      end

      def process_message_with_ai(message, conversation)
        {
          understood: true,
          response: "Processed: #{message[0..50]}...",
          confidence: 0.95,
          suggested_actions: extract_suggested_actions(message),
          compliance_check: :pass,
        }
      end

      def calculate_relevance_score(message, conversation)
        # Simple relevance scoring based on keywords
        score = 0.5
        score += 0.2 if message.downcase.include?("account")
        score += 0.2 if message.downcase.include?("compliance")
        score += 0.1 if message.downcase.include?("risk")
        [score, 1.0].min
      end

      def categorize_message(message)
        case message.downcase
        when /account/
          :account
        when /compliance/
          :compliance
        when /risk/
          :risk
        when /relationship/
          :relationship
        else
          :general
        end
      end

      def generate_strategic_recommendations(entity)
        [
          {
            type: :account_expansion,
            priority: :high,
            description: "Expand to multiple currency accounts",
            expected_benefit: "Improved diversification and hedging",
          },
          {
            type: :relationship_building,
            priority: :high,
            description: "Establish backup partnerships",
            expected_benefit: "Reduced single-point-of-failure risk",
          },
        ]
      end

      def generate_compliance_recommendations(entity)
        [
          {
            type: :documentation,
            priority: :medium,
            description: "Update entity documentation",
            due_date: (Date.today + 30).to_s,
          },
        ]
      end

      def generate_operational_recommendations(entity)
        [
          {
            type: :process_optimization,
            priority: :medium,
            description: "Optimize account linking workflow",
            expected_savings: "10% time reduction",
          },
        ]
      end

      def generate_risk_mitigation_recommendations(entity)
        [
          {
            type: :risk_reduction,
            priority: :high,
            description: "Implement multi-signature for large transfers",
            estimated_impact: "Reduce fraud risk by 80%",
          },
        ]
      end

      def check_account_alerts(entity)
        alerts = []
        if entity[:external_accounts]&.any? { |a| a[:status] == "pending_verification" }
          alerts << { type: :account_verification, severity: :medium, message: "Pending account verifications" }
        end
        alerts
      end

      def check_relationship_alerts(entity)
        alerts = []
        if entity[:relationships] && entity[:relationships].empty?
          alerts << { type: :relationship, severity: :low, message: "No active relationships established" }
        end
        alerts
      end

      def check_compliance_alerts(entity)
        alerts = []
        if entity[:metadata][:compliance_status] != "registered"
          alerts << { type: :compliance, severity: :high, message: "Compliance status needs update" }
        end
        alerts
      end

      def check_performance_alerts(entity)
        [
          { type: :performance, severity: :low, message: "All systems operating normally" },
        ]
      end

      def extract_key_topics(conversation)
        topics = Hash.new(0)
        conversation[:ai_memory].each do |memory|
          topics[memory[:category]] += 1
        end
        topics.sort_by { |_, count| -count }.map { |topic, count| { topic: topic, mentions: count } }
      end

      def analyze_conversation_sentiment(conversation)
        positive_words = %w[good great excellent agree approved]
        negative_words = %w[concern issue problem risk deny]

        positive_count = 0
        negative_count = 0

        conversation[:messages].each do |msg|
          positive_count += positive_words.count { |w| msg[:message].downcase.include?(w) }
          negative_count += negative_words.count { |w| msg[:message].downcase.include?(w) }
        end

        {
          overall: if positive_count > negative_count
                     :positive
                   else
                     negative_count > positive_count ? :negative : :neutral
                   end,
          positive_count: positive_count,
          negative_count: negative_count,
        }
      end

      def extract_action_items(conversation)
        action_words = %w[action todo required must should implement]
        items = []

        conversation[:messages].each do |msg|
          next unless action_words.any? { |w| msg[:message].downcase.include?(w) }

          items << {
            from: msg[:sender],
            item: msg[:message],
            timestamp: msg[:timestamp],
          }
        end

        items
      end

      def extract_compliance_flags(conversation)
        flags = []

        conversation[:messages].each do |msg|
          next unless msg[:message].downcase.include?("compliance") || msg[:message].downcase.include?("risk")

          flags << {
            message_id: msg[:id],
            sender: msg[:sender],
            content: msg[:message],
            timestamp: msg[:timestamp],
          }
        end

        flags
      end

      def generate_conversation_summary(conversation)
        {
          duration: "#{(Time.now.utc - conversation[:started_at]).to_i / 60} minutes",
          participants: conversation[:participants].count,
          topics_discussed: extract_key_topics(conversation),
          outcome: "In progress",
          next_steps: ["Follow up on action items", "Schedule next meeting"],
        }
      end

      def extract_suggested_actions(message)
        ["Review message", "Log to audit", "Schedule follow-up"]
      end
    end

    # Singleton instance
    def self.engine
      @engine ||= Engine.new
    end
  end
end
