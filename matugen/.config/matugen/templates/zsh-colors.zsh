# Matugen colors for Zsh
# Source this file in your .zshrc: source ~/.config/zsh/matugen-colors.zsh

# Material Design 3 color palette
export MATUGEN_PRIMARY="{{colors.primary.default.hex}}"
export MATUGEN_PRIMARY_LIGHT="{{colors.primary.light.hex}}"
export MATUGEN_PRIMARY_DARK="{{colors.primary.dark.hex}}"
export MATUGEN_SECONDARY="{{colors.secondary.default.hex}}"
export MATUGEN_SECONDARY_LIGHT="{{colors.secondary.light.hex}}"
export MATUGEN_SECONDARY_DARK="{{colors.secondary.dark.hex}}"
export MATUGEN_TERTIARY="{{colors.tertiary.default.hex}}"
export MATUGEN_TERTIARY_LIGHT="{{colors.tertiary.light.hex}}"
export MATUGEN_TERTIARY_DARK="{{colors.tertiary.dark.hex}}"
export MATUGEN_ERROR="{{colors.error.default.hex}}"
export MATUGEN_SURFACE="{{colors.surface.default.hex}}"
export MATUGEN_ON_SURFACE="{{colors.on_surface.default.hex}}"
export MATUGEN_ON_PRIMARY="{{colors.on_primary.default.hex}}"
export MATUGEN_ON_SECONDARY="{{colors.on_secondary.default.hex}}"
export MATUGEN_BACKGROUND="{{colors.background.default.hex}}"
export MATUGEN_ON_BACKGROUND="{{colors.on_background.default.hex}}"
export MATUGEN_OUTLINE="{{colors.outline.default.hex}}"

# ANSI color overrides (for terminal applications)
# You can use these with echo -e or in prompts
export MATUGEN_COLOR_BLACK="{{colors.surface.default.hex}}"
export MATUGEN_COLOR_RED="{{colors.error.default.hex}}"
export MATUGEN_COLOR_GREEN="{{colors.tertiary.default.hex}}"
export MATUGEN_COLOR_YELLOW="{{colors.secondary.default.hex}}"
export MATUGEN_COLOR_BLUE="{{colors.primary.default.hex}}"
export MATUGEN_COLOR_MAGENTA="{{colors.tertiary_fixed_dim.default.hex}}"
export MATUGEN_COLOR_CYAN="{{colors.secondary_fixed_dim.default.hex}}"
export MATUGEN_COLOR_WHITE="{{colors.on_surface.default.hex}}"

# Helper function to convert hex to RGB for prompt usage
hex_to_rgb() {
    local hex=$1
    hex=${hex#\#}
    printf "%d;%d;%d" 0x${hex:0:2} 0x${hex:2:2} 0x${hex:4:2}
}

# Example prompt colors using Material You palette
# These create zsh color codes you can use in your prompt
export PROMPT_PRIMARY="%F{$(hex_to_rgb $MATUGEN_PRIMARY)}"
export PROMPT_SECONDARY="%F{$(hex_to_rgb $MATUGEN_SECONDARY)}"
export PROMPT_TERTIARY="%F{$(hex_to_rgb $MATUGEN_TERTIARY)}"
export PROMPT_ERROR="%F{$(hex_to_rgb $MATUGEN_ERROR)}"
export PROMPT_RESET="%f"

# Example themed prompt (uncomment to use)
# PROMPT="${PROMPT_PRIMARY}%n${PROMPT_RESET}@${PROMPT_SECONDARY}%m${PROMPT_RESET}:${PROMPT_TERTIARY}%~${PROMPT_RESET}$ "
