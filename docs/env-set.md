# 環境變數設定

## 說明

目前的設定是允許所有被安裝的 Python 和 JavaScript 皆能在 n8n 中使用。

但部分 Package 可能是其他安裝包所需的依賴，或是 Runners 內，為了實現部分功能所安裝的依賴。

## 解決方法

將`n8n-task-runners.json`中，以下環境變數修改為預期的值，而不是`*`。

- NODE_FUNCTION_ALLOW_BUILTIN
- NODE_FUNCTION_ALLOW_EXTERNAL
- N8N_RUNNERS_STDLIB_ALLOW
- N8N_RUNNERS_EXTERNAL_ALLOW
