# GitHub 連携のための初期設定スクリプト
# 実行: .\github-setup.ps1

# 1. Git のユーザー名とメールを設定（初回のみ。お好みの名前に変更してください）
git config --global user.email "tanaka1719804-boop@users.noreply.github.com"
git config --global user.name "tanaka1719804-boop"

# 2. このスクリプトがあるフォルダ（git_traning）で実行
Set-Location $PSScriptRoot

# 3. ファイルを追加して初回コミット
git add .
git commit -m "Initial commit"

# 4. ブランチ名を main に変更（-M はハイフン付き）
git branch -M main

# 5. プッシュ
git push -u origin main

Write-Host "完了しました。" -ForegroundColor Green
