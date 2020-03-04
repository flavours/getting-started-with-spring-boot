#!/usr/bin/env bash

set -o errexit
set -o nounset

# DATABASE_URL=postgres://username:password@host:port/database

function export_database_settings_from_database_url {
    if [[ -z "${DATABASE_URL:-}" ]]; then
       echo 'DATABASE_URL empty or undefined.'
       exit 1
    else
        IFS='@:/' read -r -a parts<<<"$DATABASE_URL" # split $DATABASE_URL into a "parts"-array
        local parts_count=${#parts[@]}
        if [ "${parts[0]}" = "postgres" ]; then
            export DB_FLAVOUR="postgresql"
        else
            export DB_FLAVOUR="mysql"
        fi

        if [ $parts_count -eq 8 ]; then # username + password
            export DB_USERNAME="${parts[3]}"
            export DB_PASSWORD="${parts[4]}"
            export DB_HOST="${parts[5]}"
            export DB_PORT="${parts[6]}"
            export DB_NAME="${parts[7]}"
        elif [ $parts_count -eq 7 ]; then # only username
            export DB_USERNAME="${parts[3]}"
            export DB_PASSWORD=""
            export DB_HOST="${parts[4]}"
            export DB_PORT="${parts[5]}"
            export DB_NAME="${parts[6]}"
        else
            echo 'Bad format of DATABASE_URL.'
            exit 1
        fi
    fi
}
