# Wait for the Pluto server to start
echo "Waiting for Pluto server to open port ${port}..."
echo "TIMING - Starting wait at: $(date)"
if wait_until_port_used "${host}:${port}" 240; then
  echo "Discovered Pluto server listening on port ${port}!"
  echo "TIMING - Wait ended at: $(date)"
else
  echo "Timed out waiting for Pluto server to open port ${port}!"
  echo "TIMING - Wait ended at: $(date)"
  pkill -P ${SCRIPT_PID}
  clean_up 1
fi
sleep 2
