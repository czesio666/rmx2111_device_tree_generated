#!/system/bin/sh

TIMEOUT=45   # <-- Zmień na ile sekund chcesz (30-60 zalecane)

echo "=== Auto Reboot to System after $TIMEOUT seconds inactivity enabled ===" > /dev/kmsg

# Czekamy aż recovery w pełni się załaduje
sleep 8

# Główna pętla
counter=0
while [ $counter -lt $TIMEOUT ]; do
    # Sprawdzamy czy były jakieś zdarzenia input (przyciski lub dotyk)
    if [ -e /dev/input ]; then
        # Prosty sposób - sprawdzamy czy był ruch
        last_activity=$(cat /proc/uptime | cut -d' ' -f1)
        sleep 1
        current=$(cat /proc/uptime | cut -d' ' -f1)
        
        # Jeśli minęło mniej niż 2 sekundy od ostatniego "eventu" systemu - reset licznika
        if [ $(echo "$current - $last_activity < 3" | bc) -eq 1 ]; then
            counter=0
        else
            counter=$((counter + 1))
        fi
    else
        counter=$((counter + 1))
    fi
    
    sleep 1
done

echo "No activity detected for $TIMEOUT seconds. Rebooting to system..." > /dev/kmsg
reboot system
