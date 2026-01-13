#!/usr/bin/env bash

# Set path of script
PLUGIN_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Source config files
# Note: Some "invalid style" warnings may appear during parsing because format
# strings like #{@thm_*} aren't expanded until runtime. These don't affect
# functionality - the styles work correctly when tmux renders the status line.
tmux source "${PLUGIN_DIR}/catppuccin_options_tmux.conf" || true
tmux source "${PLUGIN_DIR}/catppuccin_tmux.conf" || true
