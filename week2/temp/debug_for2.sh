for((count=1;;count++))
do
	./buggy.sh 2>out.log
	if [ $? -ne 0 ]; then
		echo "failed after $count times"
		cat out.log
		break
	fi
	echo "$count try"
done
