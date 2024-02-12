#! /usr/bin/env sh

SCRIPT_DIRECTORY="$(dirname -- "$(readlink -f -- "$0")")"
PROJECT_DIRECTORY="$(dirname -- "$SCRIPT_DIRECTORY")"
SOURCE_DIRECTORY="$PROJECT_DIRECTORY/src"
RESOURCE_DIRECTORY="$SOURCE_DIRECTORY/rootfs"

KEYFILE_DIRECTORY="$SOURCE_DIRECTORY/keyfiles"
OUTPUT_FILE="$RESOURCE_DIRECTORY/etc/skel/.config/dconf/user"

dconf compile "$OUTPUT_FILE" "$KEYFILE_DIRECTORY"