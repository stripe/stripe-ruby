# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class Event < APIResource
        OBJECT_NAME = "v2.core.event"
        def self.object_name
          "v2.core.event"
        end
      end
    end
  end
end
