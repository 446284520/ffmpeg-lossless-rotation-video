# 索尼相机视频画质无损批量转竖版视频（逆时针旋转90度）

这是一个在Windows系统中可以直接使用的通过ffmpeg程序进行批处理转换的命令。

本命令适用于解决索尼等相机在录制竖版视频时（逆时针90度）导出后为横版视频的问题。

转换后的视频画质为 `无损` ，音频格式从 `pcm_s16be` 编码转换为 `AAC 编码`，音频比特率为 `192 kbps`。

输入视频文件的音频流 使用了 `pcm_s16be 编码（未压缩的 PCM 音频）`，但 MP4 容器`不支持这种音频编码格式`。MP4 容器通常支持 AAC、MP3 等压缩的音频编码格式。因此，需要重新编码音频流为 `AAC` 格式。

**请注意，该命令仅适用于4.4版本的FFmpeg，高版本FFmpeg程序对命令的支持有所更改，若没有FFmpeg4.4版本请在下方下载**

—————————使用方法—————————

下载方式：项目右上角绿色 `CODE` 按钮打开后，点击 `Download_ZIP` 进行下载并解压。

（情况1）

   已下载过ffmpeg且添加到Path环境中的用户直接将 `【有ffmpeg】索尼相机视频画质无损批量转竖版视频（逆时针旋转90度）.bat` 命令放在待转换的MP4文件所在的文件夹内 `直接运行` 该命令即可。

 OR
	 
（情况2）
   
   未下载过ffmpeg且未添加到Path环境中的用户请先`下载ffmpeg程序`。进入 `[https://github.com/BtbN/FFmpeg-Builds/releases](https://github.com/BtbN/FFmpeg-Builds/releases/tag/autobuild-2023-09-30-12-56)` 页面，下载 `ffmpeg-n4.4.4-6-gd5fa6e3a91-win64-gpl-4.4.zip` 程序，并解压zip文件。
   
   复制文件夹 `ffmpeg-master-latest-win64-gpl\bin` 该文件夹的文件目录，例如：`C:\Users\richard\Desktop\ffmpeg-master-latest-win64-gpl\bin` 【注意精确到`/bin`】，然后用记事本打开下载的`【无ffmpeg】索尼相机视频画质无损批量转竖版视频（逆时针旋转90度）.bat` 命令，修改第一行 `此处粘贴你ffmpeg程序所在位置的bin目录位置` 为刚才复制的ffmpeg-master-latest-win64-gpl\bin的目录位置，例如：`set path=%path%;C:\Users\richard\Desktop\ffmpeg-master-latest-win64-gpl\bin;`，保存后，放在待转换的MP4文件所在的文件夹内 `直接运行` 该命令即可。

转换完成后，新文件会保存在视频文件所在文件夹下的 `Done` 文件夹内。
