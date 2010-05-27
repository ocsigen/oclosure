#!/bin/sh
#Directory to put new files
DEST=Parse_File
#Where is goog directory
BASE=~/local/src/closure-library/closure/goog
ok=0
err=0

rm -Rf error.log
rm -Rf ${DEST}

mkdir ${DEST}

for dd in `ls ${BASE}/`
do
    if test -d "${BASE}/${dd}"
    then
	mkdir ${DEST}/${dd}
	
	for f in ${BASE}/${dd}/*.js
	do
	    ./extract_info.sh "$f"> ${DEST}/${dd}/`basename $f .js`".parse" 2> /dev/null
	    if [ $? -eq 2 ]
	    then echo $f "Error";echo $f >> error.log; err=$(($err+1))
	    else echo $f "Ok " ; ok=$((ok+1))
	    fi
	done
    else
	echo ${dd}
    fi
done

echo "autogen success number" ${ok}
echo "autogen failure number" ${err}