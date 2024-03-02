# debian-control-linter

A flexible debian control file linter supporting `debian/control`, `DEBIAN/control`, `debian/copyright`, `.changes` and `.dsc` files. For more details, visit [tibetiroka/debian-control-linter](https://github.com/tibetiroka/debian-control-linter).

# GitHub Action

This GitHub action pulls in the latest version of the linter and runs it over the target file. Options work similarly to the CLI of the linter.

This action must be used in a GNU/Linux environment.

# Example usage

```yml
- name: Check copyright
  uses: tibetiroka/debian-control-linter-action@v1
  with:
    type: 'debian/copyright'
    file: 'copyright'
    preset: 'strict'
    enable: 'urlExists,urlForceHttps,trailingSpace,fieldNameCapitalization'
```

None of the options are mandatory; the linter's defaults apply.