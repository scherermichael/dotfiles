userInGroup() {
  groups ${1} | grep -q "\b${2}\b"
}

onLogout() {
  MINUTES=$(((${SECONDS} + 59) / 60))
  FULL_HOURS=$((${MINUTES} / 60))
  HOURS_MINS="${FULL_HOURS}:$(printf "%02d" $((${MINUTES} - ${FULL_HOURS} * 60)))"

  echo "$(date '+%Y-%m-%d %H:%M:%S')\tLOGOUT\t${HOURS_MINS}\t${MINUTES} minutes" >> ~/bin/workinghours/$(date '+%Y-%m').log
  exit
}

# Do not track the admin account
if userInGroup ${USER} admin; then
  exit 0
fi

echo "$(date '+%Y-%m-%d %H:%M:%S')\tLOGIN" >> ~/bin/workinghours/$(date '+%Y-%m').log

trap 'onLogout' SIGINT SIGHUP SIGTERM

while true; do
  sleep 86400 &
  wait $!
done
