#!/usr/bin/env bash

set -o errexit
set -o nounset

source ./scripts/export_database_env.sh

export_database_settings_from_database_url

./gradlew --stop --quiet
./gradlew --continuous --no-daemon --quiet build &
./gradlew --no-daemon bootRun
