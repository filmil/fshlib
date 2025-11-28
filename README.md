# fshlib

[![Test](https://github.com/filmil/fshlib/actions/workflows/test.yml/badge.svg)](https://github.com/filmil/fshlib/actions/workflows/test.yml)
[![Publish BCR](https://github.com/filmil/fshlib/actions/workflows/publish-bcr.yml/badge.svg)](https://github.com/filmil/fshlib/actions/workflows/publish-bcr.yml)
[![Publish](https://github.com/filmil/fshlib/actions/workflows/publish.yml/badge.svg)](https://github.com/filmil/fshlib/actions/workflows/publish.yml)
[![Tag and Release](https://github.com/filmil/fshlib/actions/workflows/tag-and-release.yml/badge.svg)](https://github.com/filmil/fshlib/actions/workflows/tag-and-release.yml)

`fshlib` is a simple shell library for logging. It provides a set of functions to log messages with different severity levels.

## Usage

To use the library, source the `log.bash` file in your script:

```bash
source "path/to/log.bash"
```

Then you can use the logging functions:

```bash
log::info "This is an info message"
log::warn "This is a warning message"
log::error "This is an error message"
```

## Functions

- `log::info`: Logs an informational message.
- `log::warn`: Logs a warning message.
- `log::error`: Logs an error message.
- `log::debug`: Logs a debug message. This message is only shown if the `DEBUG` environment variable is set to `true` or `log`.
- `log::prefix`: Prefixes each line of the input with a given string.

## Example

```bash
#!/usr/bin/env bash

source "path/to/log.bash"

log::info "Starting the script"
log::warn "Something might be wrong"
log::error "Something went wrong"

echo "some output" | log::prefix "[my-prefix] "
```
