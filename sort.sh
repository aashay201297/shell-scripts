a=(10 8 20 25 12)

	for ((i=0;i<5;i++))
	do
	 for((j=0;j<5;j++))
	  do
	  if (("${a[j]}" -gt "${a[$((j+1))]}"))
	then
	  v=${a[$j]}
	    a[$j]=${a[$((j+1))]}
	      a[$((j+1))]=$v
	          fi
		   done
		   done
		       echo ${a[*]}
		           echo "end..."
