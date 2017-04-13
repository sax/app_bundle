Application Bundle
==================

This is a bundle for running application dependencies.

## Usage

```bash
brew bundle
bundle exec rake reset
foreman start
```

Note that you cannot run foreman with `bundle exec`, or the fact that it is loading bundler Gemfiles from projects in subdirectories
will cause problems.

