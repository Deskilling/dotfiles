#!/bin/sh

if command -v awww >/dev/null 2>&1; then
  awww img "$NOCTALIA_WALLPAPER_PATH" \
    --transition-type grow \
    --transition-step 30 \
    --transition-duration 1.2 \
    --transition-fps 144
else
  echo "awww not found. Please install a wallpaper engine." >&2
fi


if command -v matugen >/dev/null 2>&1; then
  matugen image "$NOCTALIA_WALLPAPER_PATH" --source-color-index 0
fi
