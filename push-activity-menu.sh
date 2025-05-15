#! /usr/bin/env bash

username="nath"
src="/Users/${username}/Documents/personal"
src_filename="Activity Menu.md"
dst="/Users/${username}/Documents/activity-menu"
dst_filename="index.md"

# Exit if files are identical
if cmp -s "$src/$src_filename" "$dst/$dst_filename"; then
    echo "Files are identical. No changes needed."
    exit 0
fi

cp "$src/$src_filename" "$dst/$dst_filename"
cd "$dst"
git commit -am 'Update activity menu'
git push

