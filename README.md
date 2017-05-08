Application Bundle
==================

This is a bundle for running application dependencies.

For workstations with multiple installed projects, perhaps in different workspaces,
this bundle will help to isolate dependencies such as databases, cache servers,
and load balancers.

## Usage

```bash
bin/setup
foreman start
```

Note that you cannot run foreman with `bundle exec`, or the fact that it is loading bundler Gemfiles from projects in subdirectories
will cause problems.

