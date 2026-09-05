# gdstyle-action

A fast, zero-configuration GitHub action to lint, format, auto-fix, and report GDScript code quality for Godot 4 projects using [`gdstyle`](https://github.com/atelico/gdstyle).

---

## Quick Start

Add the action to your workflow to check formatting and linting:

```yaml
#...
steps:
  - name: GDScript QA
    uses: nikooozzz/gdstyle-action@v1
    with:
      path: 'src/'
      check-lint: 'true'    # default: true
      check-format: 'true'  # default: true
      
```

## Arguments

A set of input arguments are accepted for this action:

|**Argument**|**Description**|**Default**|
|---|---|---|
|`path`|The path to scan for `*.gd` files (**required**)|`'.'`|
|`check-lint`|Run lint checks|`'true'`|
|`check-format`|Run format checks|`'true'`|
|`auto-fix`|Automatically commit formatting fixes to the branch|`'false'`|
|`commit-message`|Commit message for auto-fix commits|`'style: auto-fix GDScript formatting'`|
|`post-comment`|Post results to PR|`'true'`|

## Repository Permissions

To allow PR comments or commit auto-fixes, configure the required job permissions in your workflow:

```yaml
permissions:
  contents: write       # For auto-fix commits
  pull_requests: write  # For PR reports
```

## License

This project is licensed under the [MIT License](LICENSE)
