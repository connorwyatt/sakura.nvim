# AGENTS.md

This document provides guidance for AI agents and human contributors working on sakura.nvim.

## Project Overview

sakura.nvim is a Neovim colorscheme plugin that provides a family of coordinated light and dark themes. All themes share the same highlight definitions, accent colors, and design philosophy, differing primarily through their background, surface, and text base colors.

## Architecture

- **Single source of truth for highlights**: All editor, syntax, Treesitter, and plugin highlight groups (gitsigns, telescope, blink.cmp, statusline, neotree, dap, etc.) are defined in one place inside `lua/sakura/init.lua`.
- **Palette-driven design**: Each theme is a small data file that returns a table of HSL colors. The shared highlight logic consumes this palette.
- **HSL color system**: The entire colorscheme operates in HSL space. Conversion and manipulation helpers are in `lua/sakura/color-utils.lua`.
- **Shared accents**: A fixed set of accent colors (pink, yellow, green, cyan, purple, red) lives in `lua/sakura/colors.lua` and is used across all themes.

## Adding a New Theme

1. Create a palette definition at `lua/sakura/palettes/sakura-<name>.lua` (copy an existing palette as a starting point).
2. Create the corresponding Neovim entry point at `colors/sakura-<name>.lua`.
3. Adjust only the necessary values in the palette (most commonly the `base` color and occasionally the `text` color).

The dynamic loader in `init.lua` will automatically discover the theme via `require("sakura").load("<name>")`.

## Modifying Visual Behavior

Make changes in the `highlights(palette)` and `terminal_highlights(palette)` functions in `lua/sakura/init.lua`. These functions are the authoritative place for all highlight groups and terminal color mappings.

Avoid duplicating highlight logic or creating theme-specific overrides in palette files.

## Exporting Themes to Ghostty

A minimal Ghostty theme generator exists (currently commented out) at the end of `M.load` in `lua/sakura/init.lua`.

To generate a Ghostty theme:

1. Temporarily uncomment the print statements.
2. Load the target theme in Neovim (e.g. via `:colorscheme`).
3. Capture the generated output.
4. Re-comment the generator block.
5. Write the output to `~/.config/ghostty/themes/sakura-<name>`.

## Coding Conventions

- Keep theme variants minimal — change only what is necessary (usually just `base`).
- Prefer using the color utilities (`darken`, `lighten`, `saturate`, `desaturate`, etc.) over hard-coded values.
- All plugin-specific and syntax highlighting logic belongs in the shared functions in `init.lua`.

## File Layout

- `lua/sakura/init.lua` — Core loader and all highlight definitions
- `lua/sakura/palettes/` — Individual theme color tables (HSL)
- `lua/sakura/colors.lua` — Shared accent color definitions
- `lua/sakura/color-utils.lua` — HSL conversion and manipulation helpers
- `colors/` — Thin Neovim colorscheme entry points (one per theme)
