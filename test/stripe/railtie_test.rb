# frozen_string_literal: true

require "test/unit"

begin
  require "rails"
rescue LoadError
  # Rails is not a dependency of stripe-ruby; skip these tests when unavailable.
end

if defined?(::Rails::Railtie)
  require "stripe"

  class RailtieTest < Test::Unit::TestCase
    test "Railtie is defined and is a Rails::Railtie" do
      assert_operator Stripe::Railtie, :<, ::Rails::Railtie
    end

    test "Stripe is registered in eager_load_namespaces" do
      app = Class.new(Rails::Application) do
        config.eager_load = false
        config.active_support.to_time_preserves_timezone = :zone
      end
      assert_includes app.config.eager_load_namespaces, Stripe
    end
  end
end
