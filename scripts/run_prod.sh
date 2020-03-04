#!/usr/bin/env bash

# Launch script for the packaged Java app.

set -o errexit
set -o nounset

source ./scripts/export_database_env.sh

export_database_settings_from_database_url

java -jar app.jar
