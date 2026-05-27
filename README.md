# ERNI Stream Downloader for macOS

macOS-версия ERNI Stream Downloader.

Приложение скачивает ваши YouTube-стримы/видео через `yt-dlp` и `ffmpeg`, а затем делает совместимый `MP4` для обычных плееров и VEGAS Pro.

Используйте приложение только для своих видео или видео, на которые у вас есть разрешение.

## Что делает

- Скачивает YouTube-видео/стримы.
- Поддерживает `Best available`, `1440p / 2K`, `1080p`, `720p`.
- Поддерживает `MP4` и `MKV`.
- Для `MP4` делает совместимый файл:
  - H.264 video;
  - AAC audio;
  - CFR, constant frame rate;
  - 48 kHz stereo;
  - yuv420p.
- Корректно работает с путями с пробелами, например `/Volumes/FLASH ERNI`.

## Установка зависимостей

На macOS должны быть установлены `yt-dlp` и `ffmpeg`.

Если Homebrew уже установлен:

```bash
brew install yt-dlp ffmpeg
```

Если Homebrew не установлен:

```text
https://brew.sh
```

## Запуск из кода

```bash
python3 app.py
```

## Сборка `.app`

```bash
chmod +x build_mac.sh
./build_mac.sh
```

Готовое приложение появится здесь:

```text
dist/ERNI Stream Downloader.app
```

## Внешние диски

Для больших видео лучше включать:

```text
Download to temporary local folder first, then copy to selected drive
```

Так видео сначала скачивается на локальный диск, а потом копируется на флешку или внешний диск.
