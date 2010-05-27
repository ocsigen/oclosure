#!/bin/sh
#Directory to put new files
DEST=Gen_File
#Where is goog directory
BASE=Parse_File
ok=0
err=0

rm -Rf error.log
rm -Rf ${DEST}

mkdir ${DEST}

cp ../goog/Makefile ./${DEST}/Makefile
for dd in `ls ${BASE}/`
do
    if test -d "${BASE}/${dd}"
    then
	mkdir ${DEST}/${dd}
	echo "ROOT=../../.." > ${DEST}/${dd}/Makefile
	echo "include ../../../Makefile.generic" >> ${DEST}/${dd}/Makefile
	for f in ${BASE}/${dd}/*.parse
	do
	    cat "$f" | ./generate > ${DEST}/${dd}/`basename $f .parse`"_in.ml" 2> /dev/null
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