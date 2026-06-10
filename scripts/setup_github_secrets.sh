#!/bin/bash

# ==============================================================================
# Script: setup_github_secrets.sh
# Description: Sync environment files to GitHub Secrets using GitHub CLI
# ==============================================================================

set -e

# Load helper functions (utils.sh)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [ -f "$SCRIPT_DIR/utils.sh" ]; then
    source "$SCRIPT_DIR/utils.sh"
else
    PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
    if [ -f "$PROJECT_ROOT/scripts/utils.sh" ]; then
        # shellcheck disable=SC1091
        source "$PROJECT_ROOT/scripts/utils.sh"
    else
        echo "Error: utils.sh not found."
        exit 1
    fi
fi

cd "$PROJECT_ROOT"

require_cmd "gh"

SECRETS=(
    "ENV_DEV:.env.dev"
    "ENV_PROD:.env.prod"
)

log_info "Syncing environment files to GitHub Secrets..."

for ENTRY in "${SECRETS[@]}"; do
    NAME="${ENTRY%%:*}"
    FILE="${ENTRY#*:}"

    if [[ -f "$FILE" ]]; then
        log_info "Setting secret $NAME from $FILE..."
        gh secret set "$NAME" < "$FILE"
        log_success "Successfully updated secret: $NAME"
    else
        log_warning "Skipped: File $FILE not found"
    fi
done

log_success "GitHub Secrets synchronization complete!"
