#!/usr/bin/env bash
set -euo pipefail
HOOK_DIR=".git/hooks"
mkdir -p "$HOOK_DIR"
cp -f scripts/pre-push "$HOOK_DIR/pre-push"
chmod +x "$HOOK_DIR/pre-push"
echo "✅ pre-push hook установлен. Прямой push в main теперь запрещён локально."
echo "Если нужно удалить — удалите файл .git/hooks/pre-push"
