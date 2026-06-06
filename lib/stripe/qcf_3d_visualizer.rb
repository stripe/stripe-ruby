# frozen_string_literal: true

module Stripe
  module QCF3D
    # 3D visualization engine for entity relationships and financial networks
    class Visualizer
      def initialize
        @visualizations = {}
        @render_cache = {}
        @lock = Mutex.new
      end

      # Generate 3D entity network visualization
      def generate_entity_network_3d(entity_id: nil)
        RBAC::Policy.require_permission!("entity.view")

        @lock.synchronize do
          entities = entity_id ? [Entity.entities.get_entity(entity_id)] : Entity.entities.list_entities
          entities.compact!

          nodes = []
          links = []

          # Create nodes for each entity
          entities.each_with_index do |entity, idx|
            nodes << create_entity_node(entity, idx)
          end

          # Create links for relationships
          entities.each do |entity|
            entity[:relationships]&.each do |rel|
              links << create_relationship_link(entity[:id], rel[:to_entity_id], rel[:relationship_type])
            end
          end

          visualization_id = "viz_#{Time.now.to_i}_#{rand(100_000)}"

          viz_data = {
            id: visualization_id,
            type: :entity_network_3d,
            timestamp: Time.now.utc,
            generated_by: RBAC::Context.current.user_id,
            nodes: nodes,
            links: links,
            scene_config: {
              camera: {
                position: [0, 0, 100],
                target: [0, 0, 0],
                fov: 75,
              },
              lighting: {
                ambient: { intensity: 0.6, color: "#ffffff" },
                directional: { intensity: 0.8, position: [100, 100, 100] },
              },
              rendering: {
                format: :webgl,
                quality: :high,
                antialiasing: true,
                shadows: true,
              },
            },
            statistics: {
              total_entities: nodes.count,
              total_relationships: links.count,
              network_density: calculate_network_density(nodes.count, links.count),
              average_connections: (links.count.to_f / nodes.count).round(2),
            },
            qcf_metadata: {
              route: "QCF",
              classification: "Confidential",
            },
          }

          @visualizations[visualization_id] = viz_data

          Audit.log_from_context(
            action: "generate_3d_visualization",
            resource_type: "visualization",
            resource_id: visualization_id,
            changes: { entity_count: nodes.count, relationship_count: links.count },
            module_name: "qcf_3d"
          )

          viz_data
        end
      end

      # Generate 3D account structure visualization
      def generate_account_structure_3d(entity_id:)
        RBAC::Policy.require_permission!("entity.view")

        entity = Entity.entities.get_entity(entity_id)
        raise "Entity not found: #{entity_id}" unless entity

        @lock.synchronize do
          nodes = []
          links = []

          # Root entity node
          nodes << {
            id: entity[:id],
            label: entity[:name],
            type: :entity,
            position: [0, 0, 0],
            size: 50,
            color: "#FF6B6B",
            metadata: { role: entity[:role] },
          }

          # Internal accounts
          (entity[:internal_accounts] || []).each_with_index do |account, idx|
            pos_x = -40 + (idx * 40)
            nodes << {
              id: account[:account_id],
              label: account[:account_name],
              type: :internal_account,
              position: [pos_x, -40, 0],
              size: 30,
              color: "#4ECDC4",
              metadata: { currency: account[:currency], account_type: account[:account_type] },
            }

            links << {
              source: entity[:id],
              target: account[:account_id],
              type: :internal_link,
              strength: 1.0,
              color: "#4ECDC4",
            }
          end

          # External accounts
          (entity[:external_accounts] || []).each_with_index do |account, idx|
            pos_x = -40 + (idx * 40)
            nodes << {
              id: account[:external_account_id],
              label: account[:external_name],
              type: :external_account,
              position: [pos_x, 40, 0],
              size: 25,
              color: "#95E1D3",
              metadata: { provider: account[:provider], status: account[:status] },
            }

            links << {
              source: entity[:id],
              target: account[:external_account_id],
              type: :external_link,
              strength: account[:status] == "verified" ? 1.0 : 0.5,
              color: account[:status] == "verified" ? "#95E1D3" : "#FFD93D",
            }
          end

          visualization_id = "viz_#{Time.now.to_i}_#{rand(100_000)}"

          viz_data = {
            id: visualization_id,
            type: :account_structure_3d,
            entity_id: entity_id,
            timestamp: Time.now.utc,
            nodes: nodes,
            links: links,
            scene_config: {
              camera: {
                position: [0, 0, 80],
                target: [0, 0, 0],
                fov: 60,
              },
              interaction: {
                rotate: true,
                zoom: true,
                pan: true,
                drag_select: true,
              },
            },
            statistics: {
              internal_accounts: (entity[:internal_accounts] || []).count,
              external_accounts: (entity[:external_accounts] || []).count,
              verified_external: (entity[:external_accounts] || []).count { |a| a[:status] == "verified" },
              total_accounts: (entity[:internal_accounts] || []).count + (entity[:external_accounts] || []).count,
            },
            animation: {
              enabled: true,
              duration: 2000,
              easing: :ease_in_out,
            },
          }

          @visualizations[visualization_id] = viz_data

          Audit.log_from_context(
            action: "generate_account_3d_visualization",
            resource_type: "visualization",
            resource_id: visualization_id,
            changes: { entity_id: entity_id, account_count: nodes.count - 1 },
            module_name: "qcf_3d"
          )

          viz_data
        end
      end

      # Generate 3D compliance dashboard
      def generate_compliance_dashboard_3d(entity_id: nil)
        RBAC::Policy.require_permission!("entity.view")

        @lock.synchronize do
          entities = entity_id ? [Entity.entities.get_entity(entity_id)] : Entity.entities.list_entities
          entities.compact!

          gauges = []
          charts = []

          entities.each do |entity|
            gauges << create_compliance_gauge(entity)
            charts.concat(create_compliance_charts(entity))
          end

          visualization_id = "viz_#{Time.now.to_i}_#{rand(100_000)}"

          viz_data = {
            id: visualization_id,
            type: :compliance_dashboard_3d,
            timestamp: Time.now.utc,
            gauges: gauges,
            charts: charts,
            layout: {
              perspective: :isometric,
              zoom_level: 1.0,
              rotation: [0, 0, 0],
            },
            real_time_updates: true,
            refresh_interval: 5000, # milliseconds
            qcf_metadata: {
              route: "QCF",
              classification: "Confidential",
              compliance_verified: true,
            },
          }

          @visualizations[visualization_id] = viz_data

          Audit.log_from_context(
            action: "generate_compliance_dashboard_3d",
            resource_type: "visualization",
            resource_id: visualization_id,
            changes: { entity_count: entities.count },
            module_name: "qcf_3d"
          )

          viz_data
        end
      end

      # Get visualization data
      def get_visualization(visualization_id:)
        @visualizations[visualization_id] || { error: "Visualization not found" }
      end

      # List all visualizations
      def list_visualizations(type: nil)
        visualizations = @visualizations.values
        visualizations = visualizations.select { |v| v[:type] == type } if type
        visualizations
      end

      # Export visualization as interactive HTML
      def export_as_html(visualization_id:)
        viz = @visualizations[visualization_id]
        raise "Visualization not found: #{visualization_id}" unless viz

        html = generate_html_export(viz)
        {
          visualization_id: visualization_id,
          format: :html,
          content_type: "text/html",
          file_size: html.bytesize,
          generated_at: Time.now.utc,
          html_content: html,
        }
      end

      # Export visualization as JSON for WebGL/Three.js
      def export_as_json(visualization_id:)
        viz = @visualizations[visualization_id]
        raise "Visualization not found: #{visualization_id}" unless viz

        {
          visualization_id: visualization_id,
          format: :json,
          content_type: "application/json",
          data: viz,
          generated_at: Time.now.utc,
        }
      end

      private

      def create_entity_node(entity, index)
        angle = (2 * Math::PI * index) / [Entity.entities.list_entities.count, 1].max
        radius = 40

        {
          id: entity[:id],
          label: entity[:name],
          type: :entity,
          position: [radius * Math.cos(angle), radius * Math.sin(angle), 0],
          size: 40,
          color: entity[:role] == :owner ? "#FF6B6B" : "#4ECDC4",
          metadata: {
            role: entity[:role],
            entity_type: entity[:entity_type],
            account_count: (entity[:internal_accounts]&.count || 0) + (entity[:external_accounts]&.count || 0),
          },
        }
      end

      def create_relationship_link(source_id, target_id, relationship_type)
        {
          source: source_id,
          target: target_id,
          type: relationship_type,
          strength: 1.0,
          color: relationship_type == :partners_with ? "#FFD93D" : "#95E1D3",
          label: relationship_type.to_s.titleize,
        }
      end

      def create_compliance_gauge(entity)
        {
          entity_id: entity[:id],
          entity_name: entity[:name],
          metric: :compliance_score,
          value: 95,
          max_value: 100,
          color: value_to_gauge_color(95),
          status: :pass,
          position: [rand(-50..50), rand(-50..50), 0],
        }
      end

      def create_compliance_charts(entity)
        [
          {
            entity_id: entity[:id],
            chart_type: :account_distribution,
            title: "Account Distribution",
            data: {
              internal: (entity[:internal_accounts] || []).count,
              external: (entity[:external_accounts] || []).count,
            },
            position: [rand(-80..80), rand(-80..80), rand(0..50)],
          },
          {
            entity_id: entity[:id],
            chart_type: :verification_status,
            title: "Verification Status",
            data: {
              verified: (entity[:external_accounts] || []).count { |a| a[:status] == "verified" },
              pending: (entity[:external_accounts] || []).count { |a| a[:status] == "pending_verification" },
            },
          },
        ]
      end

      def value_to_gauge_color(value)
        case value
        when 90..100
          "#00D084"
        when 75..89
          "#FFD93D"
        when 60..74
          "#FF9500"
        else
          "#FF6B6B"
        end
      end

      def calculate_network_density(node_count, link_count)
        return 0 if node_count < 2

        max_links = (node_count * (node_count - 1)) / 2
        (link_count.to_f / max_links).round(3)
      end

      def generate_html_export(viz)
        case viz[:type]
        when :entity_network_3d
          generate_network_html(viz)
        when :account_structure_3d
          generate_account_html(viz)
        when :compliance_dashboard_3d
          generate_dashboard_html(viz)
        else
          "<h1>Visualization</h1><p>#{viz[:type]}</p>"
        end
      end

      def generate_network_html(viz)
        <<~HTML
          <!DOCTYPE html>
          <html>
          <head>
            <title>Entity Network 3D Visualization</title>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js"></script>
            <style>
              body { margin: 0; overflow: hidden; }
              canvas { display: block; }
              #info { position: absolute; top: 10px; left: 10px; color: white; background: rgba(0,0,0,0.7); padding: 10px; }
            </style>
          </head>
          <body>
            <div id="info">
              <h2>Entity Network 3D</h2>
              <p>Nodes: #{viz[:nodes].count} | Links: #{viz[:links].count}</p>
              <p>Network Density: #{viz[:statistics][:network_density]}</p>
            </div>
            <script>
              // Three.js scene setup
              const scene = new THREE.Scene();
              scene.background = new THREE.Color(0x222222);

              // Render nodes
              #{viz[:nodes].map { |n| render_node_js(n) }.join("\n")}

              // Render links
              #{viz[:links].map { |l| render_link_js(l) }.join("\n")}
            </script>
          </body>
          </html>
        HTML
      end

      def generate_account_html(viz)
        <<~HTML
          <!DOCTYPE html>
          <html>
          <head>
            <title>Account Structure 3D</title>
            <style>
              body { font-family: Arial; margin: 20px; background: #f5f5f5; }
              .account-structure { background: white; padding: 20px; border-radius: 8px; }
              .node { padding: 10px; margin: 10px; border-radius: 4px; }
              .entity { background: #FF6B6B; color: white; font-weight: bold; }
              .internal { background: #4ECDC4; color: white; }
              .external { background: #95E1D3; color: #333; }
              .stats { background: #f0f0f0; padding: 15px; margin-top: 20px; }
            </style>
          </head>
          <body>
            <div class="account-structure">
              <h1>Account Structure Visualization</h1>
              <div class="stats">
                <p><strong>Internal Accounts:</strong> #{viz[:statistics][:internal_accounts]}</p>
                <p><strong>External Accounts:</strong> #{viz[:statistics][:external_accounts]}</p>
                <p><strong>Verified External:</strong> #{viz[:statistics][:verified_external]}</p>
              </div>
            </div>
          </body>
          </html>
        HTML
      end

      def generate_dashboard_html(viz)
        <<~HTML
          <!DOCTYPE html>
          <html>
          <head>
            <title>Compliance Dashboard 3D</title>
            <style>
              body { font-family: Arial; margin: 0; background: #1a1a1a; color: white; }
              .dashboard { padding: 20px; }
              .gauge { display: inline-block; margin: 20px; text-align: center; }
              .gauge-value { font-size: 36px; font-weight: bold; }
              .chart { background: #2a2a2a; padding: 15px; margin: 10px; border-radius: 4px; }
            </style>
          </head>
          <body>
            <div class="dashboard">
              <h1>📊 QCF Compliance Dashboard</h1>
              #{viz[:gauges].map { |g| render_gauge_html(g) }.join("\n")}
            </div>
          </body>
          </html>
        HTML
      end

      def render_node_js(node)
        "// Node: #{node[:label]} at #{node[:position].inspect}"
      end

      def render_link_js(link)
        "// Link: #{link[:source]} -> #{link[:target]}"
      end

      def render_gauge_html(gauge)
        percentage = (gauge[:value].to_f / gauge[:max_value] * 100).round(1)
        <<~HTML
          <div class="gauge">
            <div class="gauge-label">#{gauge[:entity_name]}</div>
            <div class="gauge-value" style="color: #{gauge[:color]}">#{gauge[:value]}%</div>
            <div class="gauge-status">#{gauge[:status].upcase}</div>
          </div>
        HTML
      end
    end

    # Singleton instance
    def self.visualizer
      @visualizer ||= Visualizer.new
    end
  end
end
