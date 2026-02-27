# stripe-ruby

## Testing

- Run all tests: `just test`
- Tests use Rake (`bundle exec rake test`)
- Typecheck: `just typecheck` (Sorbet, requires Ruby >= 2.7)

## Formatting & Linting

- Format: `just format` (uses rubocop with auto-correct)
- Lint check: `just format-check` (rubocop without auto-correct)

## Key Locations

- Main client (HTTP requests, headers, auth): `lib/stripe/stripe_client.rb`
- Connection management: `lib/stripe/connection_manager.rb`
- Version: `lib/stripe/version.rb`
- Sorbet type definitions: `rbi/`. NEVER read `rbi/stripe.rbi`, since it's a huge file that collects data already present in other `.rbi` files

## Generated Code

- Files containing `File generated from our OpenAPI spec` at the top are generated; do not edit. Similarly, any code block starting with `The beginning of the section generated from our OpenAPI spec` is generated and should not be edited directly.
  - If something in a generated file/range needs to be updated, add a summary of the change to your report but don't attempt to edit it directly.
- Resource classes under `lib/stripe/resources/` are largely generated.
- `stripe_client.rb`, `connection_manager.rb`, and core infrastructure files are NOT generated.

## Conventions

- Uses Ruby's standard `Net::HTTP` library
- Bundler for gem management
- Rubocop for style enforcement
- Sorbet for optional type checking
- Work is not complete until `just test` and `just typecheck` complete successfully.
- All code must run on all supported Ruby versions (full list in the test section of @.github/workflows/ci.yml)

### Comments

- Comments MUST only be used to:
    1. Document a function
    2. Explain the WHY of a piece of code
    3. Explain a particularly complicated piece of code
- Comments NEVER should be used to:
    1. Say what used to be there. That's no longer relevant!
    2. Explain the WHAT of a piece of code (unless it's very non-obvious)

It's ok not to put comments on/in a function if their addition wouldn't meaningfully clarify anything.
