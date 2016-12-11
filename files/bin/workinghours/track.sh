userInGroup() {
  groups ${1} | grep -q "\b${2}\b"
}

onLogout() {
  MINUTES=$(((${SECONDS} + 59) / 60))
  FULL_HOURS=$((${MINUTES} / 60))
  HOURS_MINS="${FULL_HOURS}:$(printf "%02d" $((${MINUTES} - ${FULL_HOURS} * 60)))"

  echo "$(date '+%a %Y-%m-%d %H:%M:%S')\tLOGOUT\t${HOURS_MINS}\t${MINUTES} minutes" >> ~/bin/workinghours/$(date '+%Y-%m').log
  exit
}

# Set environment variable WORKINGHOURS_DO_NOT_TRACK to prevent tracking
if [ -n "${WORKINGHOURS_DO_NOT_TRACK}" ]; then
  exit 0
fi

echo "$(date '+%a %Y-%m-%d %H:%M:%S')\tLOGIN" >> ~/bin/workinghours/$(date '+%Y-%m').log

trap 'onLogout' SIGINT SIGHUP SIGTERM

while true; do
  sleep 86400 &
  wait $!
done
