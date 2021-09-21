```bash
#1.
ls -alht --color=auto
#2.
 #!/bin/bash
 marco(){
     echo "$(pwd)" > $HOME/marco_history.log
     echo "save pwd $(pwd)"
 }
 polo(){
     cd "$(cat "$HOME/marco_history.log")"
 }
#3.
count=1
while true
do
	./buggy.sh 2>out.log
	if [[ $? -ne 0]]; then
		ehco "failed after $count times"
		cat out.log
		break
	fi
	((count++))
done
#4.
find  . -name "*.html" | xargs -d '\n' tar -cvzf html.zip
#5.
find -type f | xargs -d "\n" ls -lt | head -1
```

