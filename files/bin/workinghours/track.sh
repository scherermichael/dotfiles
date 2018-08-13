# Set environment variable WORKINGHOURS_DO_NOT_TRACK to prevent tracking
if [ -n "${WORKINGHOURS_DO_NOT_TRACK}" ]; then
  exit 0
fi

userInGroup() {
  groups ${1} | grep -q "\b${2}\b"
}

onLogout() {
  echo "$(date '+%a %Y-%m-%d %H:%M:%S')\tLOGOUT" >> ~/bin/workinghours/$(date '+%Y-%m').log
  exit
}

echo "$(date '+%a %Y-%m-%d %H:%M:%S')\tLOGIN" >> ~/bin/workinghours/$(date '+%Y-%m').log

trap 'onLogout' SIGINT SIGHUP SIGTERM

while true; do
  sleep 86400 &
  wait $!
done
