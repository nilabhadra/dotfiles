#!/usr/bin/env bash

# Create a new directory and enter it.
function mkd() {
	mkdir -p "$@" && cd "$_";
}

# Search for text within the current directory.
s() {
    grep --color=always "$*" \
         --exclude-dir=".git" \
         --exclude-dir="node_modules" \
         --ignore-case \
         --recursive \
         . \
        | less --no-init --raw-control-chars
          #    │         └─ Display ANSI color escape sequences in raw form.
          #    └─ Don't clear the screen after quitting less.
}

# Normalize `open` across Linux, macOS, and Windows.
# This is needed to make the `o` function (see below) cross-platform.
if [ ! $(uname -s) = 'Darwin' ]; then
	if grep -q Microsoft /proc/version; then
		# Ubuntu on Windows using the Linux subsystem
		alias open='explorer.exe';
	else
		alias open='xdg-open';
	fi
fi

# `o` with no arguments opens the current directory, otherwise opens the given
# location.
function o() {
	if [ $# -eq 0 ]; then
		open .;
	else
		open "$@";
	fi;
}
