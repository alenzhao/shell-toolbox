# shell-toolbox

This GitHub repository contains a small selection of tools that may be
useful to people doing shell-script development in a Unix environment.
It may also come contain a few utility scripts that may be of general
interest.

Some of these shell scripts and functions come from answering questions
on the [Unix & Linux](http://unix.stackexchange.com/) and
[Stack Overflow](http://stackoverflow.com/) forums at Stack Exchange.

## Repository layout

- `bin`:
    executable scripts.

- `fun`:
    (will possibly contain) `ksh` shell functions.

- `man`:
    manuals for the executables and functions in mandoc, text, HTML and
    PDF formats.

## Branches

- `master`:
    "I believe that this code is working and I think that the
    documentation is up to date."  I'll merge in `develop` here whenever
    I feel that the current state of that branch is worth it.

- `develop`:
    Development happens here, or possibly on a feature branch off
    of this branch.  Code on `develop` may work and should at least
    pass [ShellCheck](http://www.shellcheck.net/) without issue.
    Documentation may be lagging but if it's there it ought to be mostly
    correct.

- `feature/XXX`:
    Feature branches may contain unfinished, broken and/or dangerous
    code in development, or documentation which may be misleading or
    simply missing.

## Current tools

- `bin/tsh`:
    Sets up a minimal shell test environment in a working directory.

## Documentation

Every script in `bin` accepts the `-h` command-line flag which will show
a terse description of how to invoke it.  Command-line flags etc. are
further documented in the manual associated with the tool in the `man`
directory.
