# frozen_string_literal: true

module Stripe
  module TelemetryId
    @cached_id = nil
    @loaded = false

    def self.config_dir
      if Gem.win_platform?
        appdata = ENV.fetch("APPDATA", nil)
        return nil unless appdata && !appdata.empty?

        ::File.join(appdata, "Stripe")
      else
        xdg = ENV.fetch("XDG_CONFIG_HOME", nil)
        if xdg && !xdg.empty?
          ::File.join(xdg, "stripe")
        else
          ::File.expand_path("~/.config/stripe")
        end
      end
    rescue ArgumentError
      nil
    end

    def self.get
      return @cached_id if @loaded

      dir = config_dir
      return nil unless dir

      file_path = ::File.join(dir, "telemetry_id")

      begin
        content = ::File.read(file_path).strip
        unless content.empty?
          @cached_id = content
          return @cached_id
        end
      rescue SystemCallError
        # File doesn't exist or can't be read
      end

      new_id = SecureRandom.hex(16)

      begin
        ::FileUtils.mkdir_p(dir)
        ::File.write(file_path, new_id)
      rescue SystemCallError
        return nil
      end

      @cached_id = new_id
      @cached_id
    ensure
      @loaded = true
    end

    # For testing only
    def self.reset!
      @cached_id = nil
      @loaded = false
    end
  end
end
