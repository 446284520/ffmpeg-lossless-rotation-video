set path=%path%;此处粘贴你ffmpeg程序所在位置的bin目录位置;

@echo off
:: 创建目标文件夹 Done（如果不存在）
if not exist "Done" mkdir "Done"

:: 遍历当前文件夹中的所有 MP4 文件
for %%f in (*.mp4) do (
    echo 正在处理文件：%%f
    :: 无损复制视频流，重新编码音频为 AAC，添加旋转元数据
    ffmpeg -i "%%f" -c:v copy -c:a aac -b:a 192k -movflags +faststart -metadata:s:v rotate=90 "Done\%%~nxf"
)

echo 所有文件已处理完成！
pause
