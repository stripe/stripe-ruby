# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class ProjectCreateParams < ::Stripe::RequestParams
        # Catalog partition to create the project in.
        sig { returns(T.nilable(String)) }
        def catalog; end
        sig { params(_catalog: T.nilable(String)).returns(T.nilable(String)) }
        def catalog=(_catalog); end
        # Human-readable name for the new project.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # Identifier of the developer profile to associate with the new project.
        sig { returns(T.nilable(String)) }
        def project_profile; end
        sig { params(_project_profile: T.nilable(String)).returns(T.nilable(String)) }
        def project_profile=(_project_profile); end
        sig {
          params(catalog: T.nilable(String), name: String, project_profile: T.nilable(String)).void
         }
        def initialize(catalog: nil, name: nil, project_profile: nil); end
      end
    end
  end
end