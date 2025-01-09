set quiet

import? '../sdk-codegen/justfile'

_default:
    just --list --unsorted

install *args:
    bundle install {{ if is_dependency() == "true" {"--quiet"} else {""} }} {{ args }}

# mass-format files
format: install
    bundle exec rubocop -o /dev/null --autocorrect

test: install
    bundle exec rake test

typecheck:
    {{ if semver_matches(`ruby -e "puts RUBY_VERSION"`, ">=2.7") == "true" { \
        "bundle exec srb tc" \
    } else { \
        "echo \"Ruby version < 2.7, skipping srb tc\"" \
    } }}

# called by tooling
[private]
update-version version:
    echo "{{ version }}" > VERSION
    perl -pi -e 's|VERSION = "[.\-\w\d]+"|VERSION = "{{ version }}"|' lib/stripe/version.rb
