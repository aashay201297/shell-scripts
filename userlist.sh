awk -F':' ' { print "USER #" FNR " = " $1}' /etc/passwd

