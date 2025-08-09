#!/usr/bin/env bash

set -eu

type debuild > /dev/null

DIRNAME="$(realpath "$(dirname  -- "${BASH_SOURCE[0]}")")"
PROJECT_ROOT="$(realpath "${DIRNAME}/..")"

export DEBEMAIL="git@phanective.org"
export DEBFULLNAME="Jumpei Ogawa"

cd "${PROJECT_ROOT}/debs/neon-ime-ja"
debuild
