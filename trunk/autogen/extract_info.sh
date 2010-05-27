#cat $1 |
#egrep "^(\ ?goog|.\*.)"
# sed "s/ =.*//g" |
# sed "s/[^@]*@/@/" |
# sed "s/||/|/g" |
# sed "s/}.*/}/" |
# sed "s/'//g" |
# sed "s/;//g" |
# sed "/\[/d" |
# sed "s/goog.provide/provide/g" |
# sed "s/goog.require/require/g" |
# sed "/^goog\(.[A-Za-z0-9_]*\)*(/d"


cat $1 |
egrep "^(.?goog|.?\*)" |
sed 's/^.\?\*.\?\(@\(param\|return\|constructor\|type\|enum\|extends\|private\|protected\)\(\ {[^{]*\({[^{]*}\)*[^{]*}\)\?\)\(.*\)/\ \*\/\n\1\n\/\*\*\n\ \*\ \1\4/' |
#sed 's/\/\*\*\(.*\)/#Comm \1/' |
#sed 's/\ \?\*\//#Comm_/' |
#sed 's/.\?\*\(.*\)/#Comm \1 #Comm_end/g' |
#sed 's/\/\/\(.*\)/#Comm \1 #Comm_end/g' |

sed "s/.\?goog.provide('\([^)]*\)');\?/@provide{\1}/g" |
sed "s/.\?goog.require('\([^)]*\)');\?/@require{\1}/g" |

sed "/.\?goog.inherit/d" |

sed "s/^.\?\(goog[^\ \[(]*\)\(.*\)/\1/" |
sed "s/||/|/g" |
sed "s/\.\.\.//g" |

sed "s/Object\.<[^,]*,/Array\.</g" |
sed "s/Object\.</Array\.</g" |
sed "s/this://g" |
sed "s/;//g"