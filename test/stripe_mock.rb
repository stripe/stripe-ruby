# frozen_string_literal: true

module Stripe
  class StripeMock
    include Singleton

    PATH_SPEC = "#{::File.dirname(__FILE__)}/openapi/spec3.json".freeze
    PATH_FIXTURES = "#{::File.dirname(__FILE__)}/openapi/fixtures3.json".freeze

    @pid = nil
    @port = -1

    # Starts stripe-mock, if necessary. Returns the port on which stripe-mock is listening.
    def self.start
      unless ::File.exist?(PATH_SPEC)
        port = ENV["STRIPE_MOCK_PORT"] || 12_111
        puts("No custom spec file found, assuming stripe-mock is already running on port #{port}")
        return port
      end

      unless @pid.nil?
        puts("stripe-mock already running on port #{@port}")
        return @port
      end

      @port = find_available_port

      puts("Starting stripe-mock on port #{@port}...")

      @stdout, @child_stdout = ::IO.pipe
      @stderr, @child_stderr = ::IO.pipe

      @pid = ::Process.spawn(
        ["stripe-mock", "stripe-mock"],
        "-http-port",
        @port.to_s,
        "-spec",
        PATH_SPEC,
        "-fixtures",
        PATH_FIXTURES,
        out: @child_stdout,
        err: @child_stderr
      )

      [@child_stdout, @child_stderr].each(&:close)

      sleep 1

      status = (::Process.wait2(@pid, ::Process::WNOHANG) || []).last
      if status.nil?
        puts("Started stripe-mock, PID = #{@pid}")
      else
        abort("stripe-mock terminated early: #{status}")
      end

      @port
    end

    # Stops stripe-mock, if necessary.
    def self.stop
      return if @pid.nil?
      puts("Stopping stripe-mock...")
      ::Process.kill(:SIGTERM, @pid)
      ::Process.waitpid2(@pid)
      @pid = nil
      @port = -1
      puts("Stopped stripe-mock")
    end

    # Finds and returns an available TCP port
    private_class_method def self.find_available_port
      server = TCPServer.new("localhost", 0)
      port = server.addr[1]
      server.close
      port
    end
  end
end
