if [ $2 == "+" ]; then
	echo $(("$1 + $3"))
fi
if [ $2 == "-" ]; then
        echo $(("$1 - $3"))
fi
if [ $2 == "x" ]; then
        echo $(("$1 * $3"))
fi
if [ $2 == "/" ]; then
        echo $(("$1 / $3"))
fi
