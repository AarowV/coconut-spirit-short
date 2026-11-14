#!/usr/bin/env bash
# 一键创建 GitHub 仓库并推送。
# 用法：
#   bash scripts/setup_github.sh                       # 公开仓库，名字 coconut-spirit-short
#   bash scripts/setup_github.sh my-repo private       # 私有仓库，自定义名字
#
# 前提：已安装 git 和 GitHub CLI（gh），并且执行过 `gh auth login`。

set -euo pipefail

REPO_NAME="${1:-coconut-spirit-short}"
VISIBILITY="${2:-public}"   # public 或 private

if [[ "$VISIBILITY" != "public" && "$VISIBILITY" != "private" ]]; then
  echo "第二个参数只能是 public 或 private" >&2
  exit 1
fi

if ! command -v gh >/dev/null 2>&1; then
  echo "没有找到 gh。先安装 GitHub CLI：https://cli.github.com/" >&2
  exit 1
fi

if ! gh auth status >/dev/null 2>&1; then
  echo "gh 还没有登录。先运行：gh auth login" >&2
  exit 1
fi

cd "$(dirname "$0")/.."

if [[ ! -d .git ]]; then
  git init -b main
fi

git add .
git commit -m "init: 放生椰子精 分镜、提示词和素材" || echo "没有新的改动需要提交"

gh repo create "$REPO_NAME" "--$VISIBILITY" --source=. --remote=origin --push

echo
echo "完成。仓库地址："
gh repo view --json url --jq .url
