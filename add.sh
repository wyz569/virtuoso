#!/bin/bash

C_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
# 定義 doc 文件夹的路径
DOC_DIR="./doc"
# 定義日誌文件的路徑
LOG_FILE="$C_DIR/upload_log.txt"

# 清空之前的日誌文件（或者可以選擇追加模式 >>）
> "$LOG_FILE"
echo "上傳日誌開始於 $(date)" >> "$LOG_FILE"
echo "----------------------------------------------------" >> "$LOG_FILE"


# 檢查 doc 文件夹是否存在
if [ ! -d "$DOC_DIR" ]; then
    echo "錯誤：找不到 $DOC_DIR 文件夹。請確保它存在且位於腳本執行目錄下。" | tee -a "$LOG_FILE"
    exit 1
fi

echo "開始上傳 doc 文件夹下的子文件夹到 GitHub..." | tee -a "$LOG_FILE"
echo "----------------------------------------------------" | tee -a "$LOG_FILE"

# 進入 doc 文件夹
cd "$DOC_DIR" || { echo "無法進入 $DOC_DIR。退出。" | tee -a "$LOG_FILE"; exit 1; }

# 遍歷 doc 文件夹下的所有子文件夹
for SUBDIR in */; do
    # 移除路径末尾的斜槓，得到子文件夹名称
    SUBDIR_NAME=${SUBDIR%/}

    echo "處理子文件夹: $SUBDIR_NAME" | tee -a "$LOG_FILE"
    echo "----------------------------------------------------" | tee -a "$LOG_FILE"

    # 檢查是否為實際的文件夹 (避免處理隱藏文件等)
    if [ -d "$SUBDIR_NAME" ]; then
        # 進入子文件夹
        cd "$SUBDIR_NAME" || { echo "無法進入 $SUBDIR_NAME。跳過。" | tee -a "$LOG_FILE"; continue; }


        # 添加所有文件
        echo "  > 添加所有文件到暫存區..." | tee -a "$LOG_FILE"
        git add .

        # 檢查是否有需要提交的內容
        if git diff --cached --quiet; then
            echo "  > 沒有新的更改需要提交。" | tee -a "$LOG_FILE"
            LOG_MESSAGE="$SUBDIR_NAME - 無新內容提交"
            RESULT="跳過"
        else
            # 提交更改
            echo "  > 提交更改..." | tee -a "$LOG_FILE"
            git commit -m "push"

            # 推送到 GitHub (假設主分支是 main)
            echo "  > 推送到 GitHub (主分支)..." | tee -a "$LOG_FILE"
            git push origin main

            # 檢查推送是否成功
            if [ $? -eq 0 ]; then
                echo "  > 成功上傳 $SUBDIR_NAME 到 GitHub。" | tee -a "$LOG_FILE"
                LOG_MESSAGE="$SUBDIR_NAME - 成功上傳"
                RESULT="成功"
            else
                echo "  > 錯誤：上傳 $SUBDIR_NAME 到 GitHub 失敗。請檢查遠端倉庫URL、權限或網絡連線。" | tee -a "$LOG_FILE"
                LOG_MESSAGE="$SUBDIR_NAME - 上傳失敗"
                RESULT="失敗"
            fi
        fi

        echo "----------------------------------------------------" | tee -a "$LOG_FILE"

        # 返回到 doc 文件夹，以便處理下一個子文件夹
        cd ..
    else
        echo "  > $SUBDIR_NAME 不是一個有效的文件夾，跳過。" | tee -a "$LOG_FILE"
        echo "----------------------------------------------------" | tee -a "$LOG_FILE"
    fi
done

echo "所有子文件夹處理完畢。" | tee -a "$LOG_FILE"
echo "日誌記錄結束於 $(date)" >> "$LOG_FILE"