# 📦 n8n Runners Custom

**方便的打包客製化 n8n runners 工具**

[![code style: prettier](https://img.shields.io/badge/code_style-prettier-ff69b4.svg?style=flat-square)](https://github.com/prettier/prettier)

## ⭐ 特色

- 原生 requirements.txt 支援
- 可指定 N8N Runners 版本
- 完全支援 GitHub Action

## 🪧 範例

Image 地址：`ghcr.io/c-c-epr/n8n-runners-custom:demo`

```
📢注意：此 Image 僅供測試使用，可能會未經通知而調整內容。
N8N Runners Version：2.2.3
Python Package：numpy、pandas
```

## 🏗️ 使用步驟

1. Fork 這個專案
2. 修改 `requirements.txt`
3. 儲存並上傳 commit
4. 進入 Fork 後的位置
5. 選擇「Actions」->「I understand my workflows, go ahead and enable them」
6. 「Build n8n Custom Runner Image」->「run workflow」(可指定版本，預設 latest )
7. 進入Action紀錄，在`✅Output result`會列出image地址，如`ghcr.io/{username}/n8n-runners-custom:XXXXXXX`
8. 或可直接使用`ghcr.io/{username}/n8n-runners-custom:latest`

## ⚠️ 注意事項

- 目前不支援 JS Package 安裝，但尚未移除程式碼安裝 `uuid` 和 `moment` 的部分，若有安全需求，請自行移除。
- 目前`N8N_RUNNERS_STDLIB_ALLOW`和`N8N_RUNNERS_EXTERNAL_ALLOW`為`*`，若有開放其他使用者使用N8N，務必注意授權問題。

## 🚗 開發進度

- [x] Python Package 自動安裝
- [ ] 自動根據 `requirements.txt` 產生允許使用的 Package 環境變數
- [ ] JS Package 自動安裝

## 📄 授權許可

本專案採用 MIT LICENSE 授權
