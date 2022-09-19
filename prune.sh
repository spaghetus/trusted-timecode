for file in $(ls www/logs/*.log || true); do
	TIMECODE=$(cat www/logs/$file | tail -n1 | jq ".timecode" | sed s/\"//g)
	NOW=$(date +%s)
	DELTA=$((NOW-TIMECODE))
	if (( "$DELTA" > 360000 )); then
		rm www/logs/$file
	fi
done 