Application Bundle
==================

This is a bundle for running application dependencies.

For workstations with multiple installed projects, perhaps in different workspaces,
this bundle will help to isolate dependencies such as databases, cache servers,
and load balancers.

## Installation

```
cd $PROJECT_ROOT
mkdir bundle
cd bundle
git init
git remote add bundle https://github.com/sax/app_bundle.git
git fetch bundle
git reset --hard bundle/master

git remote add origin git@github.com:[organization/project-name]
git push -u origin master
```

## Usage

```bash
bin/setup
foreman start
```

Note that you cannot run foreman with `bundle exec`, or the fact that it is loading bundler Gemfiles from projects in subdirectories
will cause problems.

