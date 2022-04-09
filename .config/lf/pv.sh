#!/bin/sh

file="$1"
file_type="$(file -Lb --mime-type -- "$file")"

if test $(du "$file" | awk '{print $1}') -gt 1048576; then
  echo "file type: $file_type"
  echo "file is greater then 1G"
  exit
fi

case "$file_type" in
  text/* | */xml)
    bat --color=always --style=plain --pager=never "$file"
    ;;
  application/zip | application/x-7z-compressed)
    7z l "$file"
    ;;
  *)
    echo "file type: $file_type"
    echo "no preview"
esac
