# 📦 n8n Runners Custom

方便的打包客製化 n8n runners 工具

[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/c-c-epr/n8n-runners-custom)
![GitHub License](https://img.shields.io/github/license/c-c-epr/n8n-runners-custom)
![GitHub Commit Activity](https://img.shields.io/github/commit-activity/w/c-c-epr/n8n-runners-custom)
[![Code Style: Prettier](https://img.shields.io/badge/Code_Style-Prettier-ff69b4)](https://github.com/prettier/prettier)

## ⭐ 特色

- 原生 requirements.txt 支援
- 可指定 N8N Runners 版本
- 完全支援 GitHub Action

## 🏗️ 使用步驟

1. 複製這個專案(以下方法二擇一)
   - Fork
     1. Fork 這個專案
   - Template
     1. Use This Template
     2. Create a new repository
2. 安裝 Package
   - Python
     1. 修改 `requirements.txt`
   - JS
     1. 使用指令`pnpm install <Package_Name>`
3. 儲存並上傳 commit
4. 進入 Fork 後的位置
5. 選擇「Actions」->「I understand my workflows, go ahead and enable them」
6. 「Build n8n Custom Runner Image」->「run workflow」(可指定版本，預設 latest )
7. 進入Action紀錄，在`✅Output result`會列出image地址，如`ghcr.io/{username}/n8n-runners-custom:XXXXXXX`

## ⚠️ 注意事項

- 目前以下環境變數皆為為`*`，若有開放其他使用者使用N8N，務必注意授權問題
  - `NODE_FUNCTION_ALLOW_BUILTIN`
  - `NODE_FUNCTION_ALLOW_EXTERNAL`
  - `N8N_RUNNERS_STDLIB_ALLOW`
  - `N8N_RUNNERS_EXTERNAL_ALLOW`

## 🚗 開發進度

### Python

- [x] Python Package 自動安裝
- [ ] 自動根據 `requirements.txt` 產生允許使用的 Package 環境變數

### JS

- [x] JS Package 自動安裝
- [ ] 自動根據 `package.json` 產生允許使用的 Package 環境變數

## 📄 授權許可

本專案採用 MIT LICENSE 授權
