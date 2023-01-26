sleep 1
echo deep | sudo tee /sys/power/mem_sleep
echo mem | sudo tee /sys/power/state
