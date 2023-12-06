.PHONY: update-version codegen-format test ci-test
update-version:
	@echo "$(VERSION)" > VERSION
	@perl -pi -e 's|VERSION = "[.\-\w\d]+"|VERSION = "$(VERSION)"|' lib/stripe/version.rb

codegen-format:
	bundle install --quiet
	bundle exec rubocop -o /dev/null --autocorrect

ci-test:
	bundle install && bundle exec rake test

test: ci-test
