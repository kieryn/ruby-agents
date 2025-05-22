# Agentic

Agentic is a lightweight Ruby framework for building *agentic* applications—systems composed of autonomous agents that can perceive, reason, and act.

This repository is a work-in-progress. The initial release provides the gem skeleton, tests, and a minimal example. Future updates will flesh out the core abstractions.

## Requirements

* Ruby **3.1.0** or newer (tested up to 3.3.x)

## Installation

```
$ gem install agentic
```

Or add this line to your **Gemfile**:

```ruby
gem "agentic"
```

## Usage

```ruby
require "agentic"

puts Agentic.hello #=> "Hello, world! I am an agent."
```

More elaborate examples can be found in the `examples/` directory.

## Development

```
$ bundle install
$ bundle exec rake spec

### Automatic version bump on push

This repository ships with a Git *pre-push* hook that automatically bumps the
gem’s **minor** version (following semantic versioning) whenever you push.  The
hook lives in `.githooks/pre-push`.  To enable it run once:

```
$ git config core.hooksPath .githooks
```

From that point on every `git push` will:

1. Invoke `rake version:bump_minor` to rewrite `lib/agentic/version.rb`.
2. Amend your last commit so the new version is included.
3. Re-execute the push (skipping hooks) so the updated commit is sent to the
   remote.

If any step fails the push is aborted so you can address the issue.
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/your_username/agentic.

## License

The gem is available as open source under the terms of the [MIT License](LICENSE).
