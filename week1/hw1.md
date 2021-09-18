```bash
#1.
echo $SHELL
#2.
mkdir /tmp/Missing
#3.
man touch
#4.
cd /tmp/Missing 
touch semester
#5.
echo '#!/bin/sh' > semester
echo curl --head --silent https://missing.csail.mit.edu >> semester
./semester
#6.
man chmod
#7.
chmod +x semester
#8.
./semester | grep last-modified > ~/last-modified.txt
#9.
cat /sys/class/power_supply/BAT0/capacity
```

