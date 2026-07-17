# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)
require "tmpdir"

module Stripe
  class TelemetryIdTest < Test::Unit::TestCase
    setup do
      TelemetryId.reset!
    end

    teardown do
      TelemetryId.reset!
    end

    context ".config_dir" do
      if RUBY_PLATFORM !~ /mingw|mswin/
        should "return XDG_CONFIG_HOME/stripe when XDG_CONFIG_HOME is set" do
          with_env("XDG_CONFIG_HOME" => "/tmp/xdg") do
            assert_equal "/tmp/xdg/stripe", TelemetryId.config_dir
          end
        end

        should "return ~/.config/stripe when XDG_CONFIG_HOME is not set" do
          with_env("XDG_CONFIG_HOME" => nil) do
            assert_equal ::File.expand_path("~/.config/stripe"), TelemetryId.config_dir
          end
        end

        should "fall back to ~/.config/stripe when XDG_CONFIG_HOME is empty" do
          with_env("XDG_CONFIG_HOME" => "") do
            assert_equal ::File.expand_path("~/.config/stripe"), TelemetryId.config_dir
          end
        end
      else
        should "return APPDATA/Stripe on Windows" do
          refute_nil TelemetryId.config_dir
          assert TelemetryId.config_dir.end_with?("Stripe")
        end
      end
    end

    context ".get" do
      should "return nil when config_dir returns nil" do
        TelemetryId.stubs(:config_dir).returns(nil)
        assert_nil TelemetryId.get
      end

      should "return cached id from file when it exists" do
        ::Dir.mktmpdir do |dir|
          file_path = ::File.join(dir, "telemetry_id")
          ::File.write(file_path, "stored_id_abc123\n")

          TelemetryId.stubs(:config_dir).returns(dir)
          assert_equal "stored_id_abc123", TelemetryId.get
        end
      end

      should "generate and persist a new id when file does not exist" do
        ::Dir.mktmpdir do |dir|
          TelemetryId.stubs(:config_dir).returns(dir)
          id = TelemetryId.get
          refute_nil id
          assert_equal 32, id.length
          assert_equal id, ::File.read(::File.join(dir, "telemetry_id"))
        end
      end

      should "create parent directory when it does not exist" do
        ::Dir.mktmpdir do |base_dir|
          dir = ::File.join(base_dir, "nonexistent", "nested")
          TelemetryId.stubs(:config_dir).returns(dir)
          id = TelemetryId.get
          refute_nil id
          assert ::File.exist?(::File.join(dir, "telemetry_id"))
        end
      end

      should "return nil when directory cannot be created" do
        TelemetryId.stubs(:config_dir).returns("/nonexistent/readonly/path")
        ::FileUtils.stubs(:mkdir_p).raises(Errno::EACCES, "permission denied")
        assert_nil TelemetryId.get
      end

      should "cache the result after first call" do
        ::Dir.mktmpdir do |dir|
          TelemetryId.stubs(:config_dir).returns(dir)
          first_id = TelemetryId.get
          # Modify the file to confirm the second call reads from cache
          ::File.write(::File.join(dir, "telemetry_id"), "different_value")
          second_id = TelemetryId.get
          assert_equal first_id, second_id
        end
      end

      should "only call config_dir once even when it returns nil" do
        TelemetryId.stubs(:config_dir).returns(nil)
        TelemetryId.get
        # Second call should use cache; expects config_dir was only called once
        TelemetryId.expects(:config_dir).never
        TelemetryId.get
      end
    end

    context ".reset!" do
      should "clear cached state so next call re-evaluates" do
        ::Dir.mktmpdir do |dir|
          TelemetryId.stubs(:config_dir).returns(dir)
          first_id = TelemetryId.get
          refute_nil first_id

          TelemetryId.reset!
          ::File.write(::File.join(dir, "telemetry_id"), "new_persisted_id")

          second_id = TelemetryId.get
          assert_equal "new_persisted_id", second_id
        end
      end
    end

    private def with_env(vars)
      old_values = {}
      vars.each do |key, value|
        old_values[key] = ENV.fetch(key, nil)
        if value.nil?
          ENV.delete(key)
        else
          ENV[key] = value
        end
      end
      yield
    ensure
      old_values.each do |key, value|
        if value.nil?
          ENV.delete(key)
        else
          ENV[key] = value
        end
      end
    end
  end
end
