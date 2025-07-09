# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class TerminalService < StripeService
    attr_reader :configurations
    attr_reader :connection_tokens
    attr_reader :locations
    attr_reader :readers
    attr_reader :reader_collected_data
    def initialize(requestor)
      super(requestor)
      @configurations = Stripe::Terminal::ConfigurationService.new(@requestor)
      @connection_tokens = Stripe::Terminal::ConnectionTokenService.new(@requestor)
      @locations = Stripe::Terminal::LocationService.new(@requestor)
      @readers = Stripe::Terminal::ReaderService.new(@requestor)
      @reader_collected_data = Stripe::Terminal::ReaderCollectedDataService.new(@requestor)
    end
  end
end