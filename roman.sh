num=$1
var=0
function roman {
	number=$1
	factor=$2
	rchar=$3
#echo "doing for $2"
#echo "number= $1"
	let "remainder = number - factor"
#echo "remainder=$remainder"
	while [ "$remainder" -ge 0 ]
	do
		echo  -n $rchar
		let "number -= factor"
		let "remainder = number - factor"
	done
	var=$number
	return 0
}
roman $num 1000 M
num=$var
roman $num 900 CM
num=$var
roman $num 500 D
num=$var
roman $num 400 CD
num=$var
roman $num 100 C
num=$var
roman $num 90 XC
num=$var
roman $num 50 L
num=$var
roman $num 40 XL
num=$var
roman $num 10 X
num=$var
roman $num 9 IX
num=$var
roman $num 5 V
num=$var
roman $num 4 IV
num=$var
roman $num 1 I
echo 
