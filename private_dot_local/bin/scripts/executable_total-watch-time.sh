#!/usr/bin/env bash

total_seconds=0
for dir in */; do
	videos=$(find "$dir" -type f -name "*.mkv" -or -name "*.mp4")
	total_duration=0
	IFS=$'\n'
	for video in $videos; do
		duration=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$video" 2>/dev/null)

		if [ -n "$duration" ]; then
			total_duration=$(echo "$total_duration + $duration" | bc -l)
		fi
	done
	total_seconds=$(echo "$total_seconds + $total_duration" | bc -l)
	hours=$(echo "$total_duration / 3600" | bc -l)
	hours=$(printf "%.2f" "$hours")
	echo "$dir $hours hours"
done

total_hours=$(echo "$total_seconds / 3600" | bc -l)
echo "Total: $total_seconds seconds"
echo "Total: $total_hours hours"
