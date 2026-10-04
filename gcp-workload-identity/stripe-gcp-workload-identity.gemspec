# frozen_string_literal: true

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "lib"))

require "stripe/gcp_workload_identity/version"

Gem::Specification.new do |s|
  s.name = "stripe-gcp-workload-identity"
  s.version = Stripe::GcpWorkloadIdentity::VERSION
  s.required_ruby_version = ">= 3.0.0"
  s.summary = "GCP workload identity provider for the Stripe Ruby bindings"
  s.description = "Lets Stripe::StripeClient.for_workload_identity authenticate on Google Cloud " \
                  "(Compute Engine, Cloud Run) using a Google-signed identity token instead of a " \
                  "long-lived API key. Does not depend on the `stripe` gem."
  s.author = "Stripe"
  s.email = "support@stripe.com"
  s.homepage = "https://stripe.com/docs/api?lang=ruby"
  s.license = "MIT"

  s.metadata = {
    "bug_tracker_uri" => "https://github.com/stripe/stripe-ruby/issues",
    "documentation_uri" => "https://stripe.com/docs/api?lang=ruby",
    "github_repo" => "ssh://github.com/stripe/stripe-ruby",
    "homepage_uri" => "https://stripe.com/docs/api?lang=ruby",
    "source_code_uri" => "https://github.com/stripe/stripe-ruby",
    "rubygems_mfa_required" => "false",
  }

  s.files = Dir.chdir(File.dirname(__FILE__)) { `git ls-files -- lib`.split("\n") }
  s.require_paths = ["lib"]

  s.add_dependency "googleauth", "~> 1.8"
end
