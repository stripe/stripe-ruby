set quiet

import? '../sdk-codegen/utils.just'

_default:
    just --list --unsorted

install *args:
    bundle install {{ if is_dependency() == "true" {"--quiet"} else {""} }} {{ args }}

# ⭐ run all unit tests
test: install
    bundle exec rake test

# check linting / formatting status of files
format-check *args: install
    bundle exec rubocop {{ args }}
alias lint-check := format-check

# ⭐ check style & formatting for all files, fixing what we can
lint: (format-check "--autocorrect")

# NOTE: "-o /dev/null" is vital - rubocop has super noisy output and codegen will crash when formatting ruby if everything gets printed
# so, we send all its output to the void
# copy of `lint` with less output
format: (format-check "-o /dev/null --autocorrect")

update-certs: install
    bundle exec rake update_certs

# run sorbet to check type definitions
typecheck: install
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
