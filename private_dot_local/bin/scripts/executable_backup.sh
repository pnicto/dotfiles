#!/usr/bin/bash

sources=("$HOME/Pictures" "$HOME/Documents" "$HOME/Videos/obs" "$HOME/Downloads" "$HOME/college")
remote="bits-one:backups/linux"
backup_dir="bits-one:backups/previous/linux"

for dir in "${sources[@]}"; do
	dir_name=$(basename "$dir")
	echo "Backing up to $remote/$dir_name"
	rclone sync "$dir" "$remote/$dir_name" --backup-dir "$backup_dir/$dir_name" -P -c --transfers 15 -L
	echo ""
done

echo "Backups completed"
