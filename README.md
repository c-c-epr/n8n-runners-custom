# 📦 n8n Runners Custom

方便的打包客製化 n8n runners 工具

[![Ask DeepWiki][]][DeepWiki]
![GitHub License][]
![GitHub Commit Activity][]
[![Code Style: Prettier][]][Prettier@GitHub]

## ⭐ 特色

- Python Package 安裝，原生支援 requirements.txt，採用`uv pip`
- JavaScript Package 安裝，原生支援 package.json，採用`pnpm`
- 可指定 n8n Runners 版本
- 自動執行於 GitHub Action

## 🏗️ 使用步驟

請參考 [使用步驟.md](./docs/使用步驟.md)
或複製[提示詞Prompt](./docs/Prompt.md)給AI 工具協助部署。

## ⚠️ 安全問題

多人共用時，可能會有非預期行為，詳見 [SECURITY.md](./docs/SECURITY.md)

## 🚗 開發進度

- Python
  - [x] Python Package 自動安裝
  - [ ] 自動根據 `requirements.txt` 產生允許使用的 Package 環境變數
- JavaScript
  - [x] JS Package 自動安裝
  - [ ] 自動根據 `package.json` 產生允許使用的 Package 環境變數
- Chore
  - [ ] 英文版本說明文件
  - [ ] AI 提示詞

## 📄 授權許可

本專案採用 MIT LICENSE 授權

<!-- 網址們 -->

[Ask DeepWiki]: https://deepwiki.com/badge.svg
[DeepWiki]: https://deepwiki.com/c-c-epr/n8n-runners-custom
[GitHub License]: https://img.shields.io/github/license/c-c-epr/n8n-runners-custom
[GitHub Commit Activity]: https://img.shields.io/github/commit-activity/w/c-c-epr/n8n-runners-custom
[Code Style: Prettier]: https://img.shields.io/badge/Code_Style-Prettier-ff69b4
[Prettier@GitHub]: https://github.com/prettier/prettier
