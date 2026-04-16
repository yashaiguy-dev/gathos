#!/bin/bash
# Idea to Presentation — One-line installer
# Works with: Claude Code, Gemini CLI, Cursor, Windsurf, and more
#
# Usage: curl -sL https://raw.githubusercontent.com/yashaiguy-dev/idea-to-presentation/main/install.sh | bash

set -e

SKILL_URL="https://raw.githubusercontent.com/yashaiguy-dev/gathos/main/idea-to-presentation.md"
SKILL_FILE="idea-to-presentation.md"

echo ""
echo "  ╔══════════════════════════════════════════════╗"
echo "  ║          Gathos — Skill Installer             ║"
echo "  ║   The open-source Gamma alternative           ║"
echo "  ╚══════════════════════════════════════════════╝"
echo ""

installed=false

# Claude Code
if [ -d "$HOME/.claude" ]; then
  mkdir -p "$HOME/.claude/commands"
  curl -sL "$SKILL_URL" -o "$HOME/.claude/commands/$SKILL_FILE"
  echo "  [x] Claude Code   → ~/.claude/commands/$SKILL_FILE"
  echo "      Run: /idea-to-presentation"
  installed=true
fi

# Gemini CLI
if [ -d "$HOME/.gemini" ]; then
  mkdir -p "$HOME/.gemini/commands"
  curl -sL "$SKILL_URL" -o "$HOME/.gemini/commands/$SKILL_FILE"
  echo "  [x] Gemini CLI    → ~/.gemini/commands/$SKILL_FILE"
  installed=true
fi

# Cursor (current project)
if [ -d ".cursor" ]; then
  mkdir -p ".cursor/rules"
  curl -sL "$SKILL_URL" -o ".cursor/rules/$SKILL_FILE"
  echo "  [x] Cursor        → .cursor/rules/$SKILL_FILE"
  installed=true
fi

# Windsurf (current project)
if [ -d ".windsurf" ]; then
  mkdir -p ".windsurf/rules"
  curl -sL "$SKILL_URL" -o ".windsurf/rules/$SKILL_FILE"
  echo "  [x] Windsurf      → .windsurf/rules/$SKILL_FILE"
  installed=true
fi

# If no agent detected, install for Claude Code by default
if [ "$installed" = false ]; then
  mkdir -p "$HOME/.claude/commands"
  curl -sL "$SKILL_URL" -o "$HOME/.claude/commands/$SKILL_FILE"
  echo "  [x] Installed     → ~/.claude/commands/$SKILL_FILE"
  echo "      (Default: Claude Code)"
fi

echo ""
echo "  --- Optional: Enable AI image gen + voiceover ---"
echo ""
echo "  1. Get your API keys at https://gathos.com"
echo "  2. Add to your shell profile (~/.zshrc or ~/.bashrc):"
echo ""
echo "     export GATHOS_IMAGE_API_KEY=\"your_key_here\""
echo "     export GATHOS_TTS_API_KEY=\"your_key_here\""
echo ""
echo "  Without keys, you still get the full presentation"
echo "  blueprint (design system, prompts, narration scripts)."
echo "  Keys unlock AI-generated slide images + voiceover."
echo ""
echo "  Done! Start with: /idea-to-presentation"
echo ""
