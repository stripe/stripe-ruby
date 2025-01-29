# NOTE: this file is deprecated and slated for deletion; prefer using the equivalent `just` commands.

.PHONY: update-version codegen-format test ci-test
update-version:
	@echo "$(VERSION)" > VERSION
	@perl -pi -e 's|VERSION = "[.\-\w\d]+"|VERSION = "$(VERSION)"|' lib/stripe/version.rb

codegen-format:
	bundle install --quiet
	bundle exec rubocop -o /dev/null --autocorrect

ci-test:
	bundle install && bundle exec rake test
	@version=$$(ruby -e "puts RUBY_VERSION.split('.')[0..1].join.to_i"); \
	if [ $$version -ge 27 ]; then \
		echo "Ruby version >= 2.7, continue with srb tc"; \
		bundle exec srb tc; \
	else \
		echo "Ruby version < 2.7, skipping srb tc"; \
	fi

test: ci-test
