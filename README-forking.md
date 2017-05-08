Forking
=======

This codebase is intended to be forked, and appended to as needed.

```shell
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

Ideally, changes to a downstream repo will be implemented such that any
changes to the parent app can be always be rebased in. This can be accomplished
by adding new rake files in `lib/tasks/reset` and appending any new tasks to
the top level `:reset` task.

```shell
git fetch bundle
git rebase bundle/master
## ideally there are no conflicts
git push --force origin master
```

