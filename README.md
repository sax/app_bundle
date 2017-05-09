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

Note that you cannot run foreman with `bundle exec`, or the fact that it is
loading bundler Gemfiles from projects in subdirectories will cause problems.

## Attribution/License

This project is based on [sax/app_bundle](https://github.com/sax/app_bundle).

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/">
<img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" />
</a>

This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.


