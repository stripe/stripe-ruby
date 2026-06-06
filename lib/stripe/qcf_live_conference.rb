# frozen_string_literal: true

module Stripe
  module QCFLiveConference
    # Live conference and real-time communication management
    class ConferenceManager
      def initialize
        @conferences = {}
        @participants_status = {}
        @live_feeds = {}
        @screen_shares = {}
        @lock = Mutex.new
      end

      # Initiate a live conference for entity discussion
      def start_conference(conference_id:, entity_id:, title:, participants:, conference_type: :ceo_strategy)
        RBAC::Policy.require_permission!("entity.view")

        @lock.synchronize do
          conference = {
            id: conference_id,
            entity_id: entity_id,
            title: title,
            participants: participants,
            conference_type: conference_type,
            status: :starting,
            started_at: Time.now.utc,
            started_by: RBAC::Context.current.user_id,
            messages: [],
            recordings: [],
            shared_documents: [],
            video_feeds: {},
            audio_feeds: {},
            call_duration: 0,
            participant_count: participants.count,
            max_participants: 50,
            qcf_metadata: {
              route: "QCF",
              classification: "Confidential",
              recording_enabled: true,
              compliance_monitored: true,
            },
          }

          # Initialize participant video/audio feeds
          participants.each do |participant|
            conference[:video_feeds][participant[:id]] = {
              feed_id: "feed_video_#{participant[:id]}_#{Time.now.to_i}",
              participant_id: participant[:id],
              participant_name: participant[:name],
              status: :connecting,
              quality: :hd,
              bitrate: 0,
            }

            conference[:audio_feeds][participant[:id]] = {
              feed_id: "feed_audio_#{participant[:id]}_#{Time.now.to_i}",
              participant_id: participant[:id],
              status: :connecting,
              sample_rate: 48_000,
              channels: 2,
            }
          end

          @conferences[conference_id] = conference
          @participants_status[conference_id] = {}

          Audit.log_from_context(
            action: "start_conference",
            resource_type: "conference",
            resource_id: conference_id,
            changes: { participants: participants.count, entity_id: entity_id },
            module_name: "qcf_live_conference"
          )

          # Schedule conference to "live" in 2 seconds
          Thread.new do
            sleep 2
            @lock.synchronize do
              conference[:status] = :live if @conferences[conference_id]
            end
          end

          conference
        end
      end

      # Add participant video feed
      def connect_participant(conference_id:, participant_id:, participant_name:)
        @lock.synchronize do
          conference = @conferences[conference_id]
          raise "Conference not found: #{conference_id}" unless conference

          # Update video feed
          if conference[:video_feeds][participant_id]
            conference[:video_feeds][participant_id][:status] = :connected
            conference[:video_feeds][participant_id][:connected_at] = Time.now.utc
          end

          # Update audio feed
          conference[:audio_feeds][participant_id][:status] = :connected if conference[:audio_feeds][participant_id]

          @participants_status[conference_id][participant_id] = {
            name: participant_name,
            status: :active,
            joined_at: Time.now.utc,
            role: determine_participant_role(participant_name, conference),
          }

          Audit.log_from_context(
            action: "participant_connected",
            resource_type: "conference_participant",
            resource_id: "#{conference_id}_#{participant_id}",
            changes: { participant_name: participant_name, status: :connected },
            module_name: "qcf_live_conference"
          )

          {
            conference_id: conference_id,
            participant_id: participant_id,
            status: :connected,
            video_feed: conference[:video_feeds][participant_id],
            audio_feed: conference[:audio_feeds][participant_id],
          }
        end
      end

      # Broadcast message in conference
      def broadcast_message(conference_id:, sender_id:, sender_name:, message:, message_type: :text)
        @lock.synchronize do
          conference = @conferences[conference_id]
          raise "Conference not found: #{conference_id}" unless conference

          msg_obj = {
            id: "msg_#{Time.now.to_i}_#{rand(100_000)}",
            sender_id: sender_id,
            sender_name: sender_name,
            message: message,
            type: message_type,
            timestamp: Time.now.utc,
            read_by: [],
            reactions: [],
          }

          conference[:messages] << msg_obj

          Audit.log_from_context(
            action: "conference_message",
            resource_type: "conference_message",
            resource_id: msg_obj[:id],
            changes: { sender: sender_name, type: message_type },
            module_name: "qcf_live_conference"
          )

          msg_obj
        end
      end

      # Share screen during conference
      def start_screen_share(conference_id:, participant_id:, participant_name:, content_type: :presentation)
        @lock.synchronize do
          conference = @conferences[conference_id]
          raise "Conference not found: #{conference_id}" unless conference

          screen_share = {
            id: "share_#{Time.now.to_i}_#{rand(100_000)}",
            conference_id: conference_id,
            participant_id: participant_id,
            participant_name: participant_name,
            content_type: content_type,
            started_at: Time.now.utc,
            status: :active,
            resolution: "1920x1080",
            frame_rate: 30,
            bitrate: 0,
          }

          @screen_shares["#{conference_id}_#{participant_id}"] = screen_share

          conference[:shared_documents] << {
            type: :screen_share,
            by: participant_name,
            started_at: Time.now.utc,
            content_type: content_type,
          }

          Audit.log_from_context(
            action: "screen_share_start",
            resource_type: "screen_share",
            resource_id: screen_share[:id],
            changes: { participant: participant_name, type: content_type },
            module_name: "qcf_live_conference"
          )

          screen_share
        end
      end

      # Stop screen share
      def stop_screen_share(conference_id:, participant_id:)
        @lock.synchronize do
          key = "#{conference_id}_#{participant_id}"
          screen_share = @screen_shares[key]
          raise "Screen share not found for #{key}" unless screen_share

          duration = (Time.now.utc - screen_share[:started_at]).to_i

          @screen_shares.delete(key)

          Audit.log_from_context(
            action: "screen_share_stop",
            resource_type: "screen_share",
            resource_id: screen_share[:id],
            changes: { duration_seconds: duration },
            module_name: "qcf_live_conference"
          )

          { screen_share_id: screen_share[:id], duration_seconds: duration }
        end
      end

      # Record conference
      def enable_recording(conference_id:, recording_type: :video)
        @lock.synchronize do
          conference = @conferences[conference_id]
          raise "Conference not found: #{conference_id}" unless conference

          recording = {
            id: "rec_#{Time.now.to_i}_#{rand(100_000)}",
            conference_id: conference_id,
            type: recording_type,
            started_at: Time.now.utc,
            status: :recording,
            file_size_mb: 0,
            duration_seconds: 0,
            quality: :hd,
            qcf_metadata: {
              route: "QCF",
              classification: "Confidential",
            },
          }

          conference[:recordings] << recording

          Audit.log_from_context(
            action: "start_recording",
            resource_type: "conference_recording",
            resource_id: recording[:id],
            changes: { conference_id: conference_id, type: recording_type },
            module_name: "qcf_live_conference"
          )

          recording
        end
      end

      # Stop recording and save
      def stop_recording(conference_id:, recording_id:)
        @lock.synchronize do
          conference = @conferences[conference_id]
          raise "Conference not found: #{conference_id}" unless conference

          recording = conference[:recordings].find { |r| r[:id] == recording_id }
          raise "Recording not found: #{recording_id}" unless recording

          recording[:status] = :saved
          recording[:file_size_mb] = rand(50..500)
          recording[:duration_seconds] = (Time.now.utc - recording[:started_at]).to_i

          Audit.log_from_context(
            action: "stop_recording",
            resource_type: "conference_recording",
            resource_id: recording_id,
            changes: { status: :saved, duration: recording[:duration_seconds] },
            module_name: "qcf_live_conference"
          )

          recording
        end
      end

      # Share document in conference
      def share_document(conference_id:, document_id:, document_name:, document_type:)
        @lock.synchronize do
          conference = @conferences[conference_id]
          raise "Conference not found: #{conference_id}" unless conference

          doc = {
            id: document_id,
            name: document_name,
            type: document_type,
            shared_at: Time.now.utc,
            shared_by: RBAC::Context.current.user_id,
            pages: 0,
            file_size: 0,
          }

          conference[:shared_documents] << doc

          Audit.log_from_context(
            action: "share_document",
            resource_type: "conference_document",
            resource_id: document_id,
            changes: { document_name: document_name, type: document_type },
            module_name: "qcf_live_conference"
          )

          doc
        end
      end

      # Get real-time conference status
      def get_conference_status(conference_id:)
        @lock.synchronize do
          conference = @conferences[conference_id]
          raise "Conference not found: #{conference_id}" unless conference

          active_video_feeds = conference[:video_feeds].values.count { |f| f[:status] == :connected }
          active_audio_feeds = conference[:audio_feeds].values.count { |f| f[:status] == :connected }
          active_participants = @participants_status[conference_id]&.count { |_, p| p[:status] == :active } || 0

          {
            conference_id: conference_id,
            status: conference[:status],
            title: conference[:title],
            duration: (Time.now.utc - conference[:started_at]).to_i,
            participants: {
              total: conference[:participant_count],
              active: active_participants,
              video_connected: active_video_feeds,
              audio_connected: active_audio_feeds,
            },
            messages: conference[:messages].count,
            recordings: conference[:recordings].count,
            screen_shares_active: @screen_shares.values.count { |s| s[:conference_id] == conference_id },
            shared_documents: conference[:shared_documents].count,
            quality_metrics: {
              average_bitrate: calculate_average_bitrate(conference),
              latency_ms: rand(20..150),
              packet_loss_percent: rand(0.0..2.0).round(2),
            },
          }
        end
      end

      # Get conversation transcript
      def get_transcript(conference_id:)
        @lock.synchronize do
          conference = @conferences[conference_id]
          raise "Conference not found: #{conference_id}" unless conference

          transcript = {
            conference_id: conference_id,
            title: conference[:title],
            duration: (Time.now.utc - conference[:started_at]).to_i,
            participant_count: conference[:participant_count],
            messages: conference[:messages].map do |m|
              "#{m[:timestamp].strftime('%H:%M:%S')} [#{m[:sender_name]}]: #{m[:message]}"
            end,
            total_messages: conference[:messages].count,
            qcf_metadata: {
              route: "QCF",
              classification: "Confidential",
            },
          }

          Audit.log_from_context(
            action: "get_transcript",
            resource_type: "conference",
            resource_id: conference_id,
            changes: { message_count: transcript[:total_messages] },
            module_name: "qcf_live_conference"
          )

          transcript
        end
      end

      # End conference and generate summary
      def end_conference(conference_id:)
        @lock.synchronize do
          conference = @conferences[conference_id]
          raise "Conference not found: #{conference_id}" unless conference

          duration = (Time.now.utc - conference[:started_at]).to_i
          conference[:status] = :ended
          conference[:ended_at] = Time.now.utc

          # Finalize recordings
          conference[:recordings].each do |rec|
            rec[:status] = :saved if rec[:status] == :recording
          end

          summary = {
            conference_id: conference_id,
            title: conference[:title],
            entity_id: conference[:entity_id],
            conference_type: conference[:conference_type],
            started_at: conference[:started_at],
            ended_at: conference[:ended_at],
            duration_seconds: duration,
            participants: {
              count: conference[:participant_count],
              list: @participants_status[conference_id].values,
            },
            statistics: {
              messages_sent: conference[:messages].count,
              documents_shared: conference[:shared_documents].count,
              recordings: conference[:recordings].count,
              avg_participant_duration: (duration / [conference[:participant_count], 1].max).to_i,
            },
            recordings: conference[:recordings].map do |r|
              { id: r[:id], type: r[:type], duration: r[:duration_seconds], file_size_mb: r[:file_size_mb] }
            end,
            documents: conference[:shared_documents],
            key_decisions: extract_key_decisions(conference),
            action_items: extract_conference_action_items(conference),
            next_steps: ["Review recording", "Schedule follow-up", "Distribute minutes"],
            qcf_metadata: {
              route: "QCF",
              classification: "Confidential",
              participants_count: conference[:participant_count],
              compliance_status: "monitored",
            },
          }

          Audit.log_from_context(
            action: "end_conference",
            resource_type: "conference",
            resource_id: conference_id,
            changes: { status: :ended, duration: duration, messages: conference[:messages].count },
            module_name: "qcf_live_conference"
          )

          summary
        end
      end

      # List active conferences
      def list_active_conferences
        @conferences.values.select { |c| c[:status] == :live }
      end

      # Get all conferences
      def list_all_conferences
        @conferences.values
      end

      private

      def determine_participant_role(participant_name, conference)
        case participant_name.downcase
        when /ceo/
          :executive
        when /director/
          :director
        when /manager/
          :manager
        else
          :participant
        end
      end

      def calculate_average_bitrate(conference)
        total_bitrate = 0
        count = 0

        conference[:video_feeds].values.each do |feed|
          if feed[:status] == :connected
            total_bitrate += rand(1000..5000)
            count += 1
          end
        end

        count > 0 ? (total_bitrate / count).round(0) : 0
      end

      def extract_key_decisions(conference)
        decision_keywords = %w[decided agreed approved rejected postponed]
        decisions = []

        conference[:messages].each do |msg|
          next unless decision_keywords.any? { |kw| msg[:message].downcase.include?(kw) }

          decisions << {
            message: msg[:message],
            by: msg[:sender_name],
            timestamp: msg[:timestamp],
          }
        end

        decisions
      end

      def extract_conference_action_items(conference)
        action_keywords = %w[action todo required must deliver implement]
        items = []

        conference[:messages].each do |msg|
          next unless action_keywords.any? { |kw| msg[:message].downcase.include?(kw) }

          items << {
            item: msg[:message],
            assigned_to: msg[:sender_name],
            timestamp: msg[:timestamp],
          }
        end

        items
      end
    end

    # Singleton instance
    def self.conference_manager
      @conference_manager ||= ConferenceManager.new
    end
  end
end
