# frozen_string_literal: true

module Stripe
  class Railtie < ::Rails::Railtie
    config.eager_load_namespaces << Stripe
  end
end
