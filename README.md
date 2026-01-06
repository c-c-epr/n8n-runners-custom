# n8n Runners Custom

方便的打包客製化 n8n runners 的工具

## 使用步驟

1. Fork 這個項目
2. 修改 `requirements.txt`
3. 儲存並上傳 commit
4. 進入fork後的位置
5. 選擇「Actions」->「I understand my workflows, go ahead and enable them」
6. 「Build n8n Custom Runner Image」->「run workflow」(可指定版本，預設 latest )
7. 進入Action紀錄，在✅Output result會列出image地址，如`ghcr.io/username/n8n-runners-custom:e45840d`
8. 或可直接使用`ghcr.io/username/n8n-runners-custom:latest`

## 許可

採用 MIT License 授權
