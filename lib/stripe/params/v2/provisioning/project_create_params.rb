# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class ProjectCreateParams < ::Stripe::RequestParams
        # Catalog partition to create the project in.
        attr_accessor :catalog
        # Human-readable name for the new project.
        attr_accessor :name
        # Identifier of the developer profile to associate with the new project.
        attr_accessor :project_profile

        def initialize(catalog: nil, name: nil, project_profile: nil)
          @catalog = catalog
          @name = name
          @project_profile = project_profile
        end
      end
    end
  end
end
