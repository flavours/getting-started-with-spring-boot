#!/usr/bin/env bash

# Launch script for the packaged Java app.

set -o errexit
set -o nounset

function export_database_settings_from_database_url {
    local split="${DATABASE_URL/\:\/\// }"
    local split="${split/:/ }"
    local split="${split/@/ }"
    local split="${split/:/ }"
    local split="${split/\// }"

    local db_type="$(echo $split|awk '{print $1}')"
    if [ "$db_type" = "postgres" ]; then
        export DB_FLAVOUR="postgresql"
    else
        export DB_FLAVOUR="mysql"
    fi
    export DB_USERNAME="$(echo $split|awk '{print $2}')"
    export DB_PASSWORD="$(echo $split|awk '{print $3}')"
    export DB_HOST="$(echo $split|awk '{print $4}')"
    export DB_PORT="$(echo $split|awk '{print $5}')"
    export DB_NAME="$(echo $split|awk '{print $6}')"
}

if [ -z "${DATABASE_URL:-}" ]; then
   echo 'DATABASE_URL empty or undefined.'
   exit 1
else 
   export_database_settings_from_database_url
   java -jar app.jar
fi
