# Stashy

A zsh plugin that simplifies using the stash function.

You determine which stash you want by entering a plain integer.

For example, instead of:
```
$ git stash pop stash@{2}
```
you type
```
$ stashy pop 2
```

This plugin includes the standard stash commands, which all take an integer as an argument.
If no integer is given, it will assume 0- the most recent stash.

`show` - shows only the stash
`apply` - applies the stash
`drop` - drops the stash
`pop` - applies and drops the stash

In addition, a few standard commands are included that don't take an argument.
`clear` - will drop all stashes
`list` - will show all stashes one after the other

Last, a few shortcuts are included:
`stashy staged` - stashes only staged files
`stashy unstaged` - shortcut for `git stash --keep-index` which will stash unstaged, but not untracked files
`stashy all` - shortcut for `git stash --include-untracked`  which will stash everything, including untracked files
