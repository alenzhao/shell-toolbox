# shell-toolbox

This GitHub repository contains a small selection of tools that may be
useful to people doing shell-script development in a Unix environment.

Some of these shell scripts and shell functions come from answering
questions on the [Unix & Linux](http://unix.stackexchange.com/) and
[Stack Overflow](http://stackoverflow.com/) forums at Stack Exchange.

## Repository layout

- `bin`<br>
    Contains executable scripts.

- `fun`<br>
    Contains `ksh` shell functions.

- `man`<br>
    Contains manuals for the executables and functions in mandoc, text,
    HTML and PDF formats.

## Branches

- `master`<br>
    "I believe that this code is working and I think that the
    documentation is up to date."

- `develop`<br>
    Development happens here, or possibly on a feature branch off of
    this branch.  Code on `develop` may work and should at least pass
    ShellCheck testing.  Documentation may be lagging but if it's there
    it ought to be mostly correct.

- `feature/XXX`<br>
    Feature branches may contain broken and/or dangerous code in
    development, or documentation which may be misleading or missing.

## Current tools

- `bin/tsh`<br>
    Sets up a minimal shell test environment in a working directory.

## Documentation

Every script accepts the `-h` command-line flag which will show a
terse description of how to invoke it.  Command-line flags etc. are
further documented in the manual associated with the tool in the `man`
directory.
