#!/bin/bash
# 用法: 在已有 C++ 项目根目录下运行
#   curl -sL https://raw.githubusercontent.com/aureliano248/cookiecutter-cpp/main/inject.sh | bash

set -e

REPO="https://github.com/aureliano248/cookiecutter-cpp.git"
TMP=$(mktemp -d)

git clone --depth 1 "$REPO" "$TMP" 2>/dev/null

# 模板目录名（原始未渲染的）
TEMPLATE="$TMP/{{cookiecutter.project_name}}"

# 复制 .vscode
mkdir -p .vscode
cp -n "$TEMPLATE/.vscode/settings.json" .vscode/ 2>/dev/null && echo "  added .vscode/settings.json" || echo "  skipped .vscode/settings.json (already exists)"
cp -n "$TEMPLATE/.vscode/launch.json" .vscode/ 2>/dev/null && echo "  added .vscode/launch.json" || echo "  skipped .vscode/launch.json (already exists)"
cp -n "$TEMPLATE/.vscode/README.md" .vscode/ 2>/dev/null && echo "  added .vscode/README.md" || echo "  skipped .vscode/README.md (already exists)"

# 复制 CMakePresets.json
cp -n "$TEMPLATE/CMakePresets.json" . 2>/dev/null && echo "  added CMakePresets.json" || echo "  skipped CMakePresets.json (already exists)"

rm -rf "$TMP"
echo "Done!"
