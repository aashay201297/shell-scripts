#/bin/bash
cd $1
export avg=0
average() {
	c=$(ls -l | wc -l)
	size=0
	i=1
	d=$c-1
	while [ $i -lt $c ]
	do
		x=$(stat -c "%s" * | head -n $i | tail -1)
		size=$((size + x))
		i=$((i+1))
	done
	avg=$((size/c))
}
find_files() {
	v=$((c+1))
	i=1
	while [ $i -lt $v ]
	do
		export var=$(stat -c "%s" * | head -n $i | tail -1)
		if [ $var -gt $avg ]
		then
			x=$((i+1))
			stat -c "%n" * | head -n $i | tail -1
		fi
			i=$((i+1))
	done
}
main() {
average
find_files
}
main
