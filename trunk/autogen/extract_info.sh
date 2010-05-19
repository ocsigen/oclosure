cat $1 |
egrep "^(goog|.\*.@(param|type|return|constructor|extends|protected|private|enum))" |
sed "s/[^@]*@/@/" |
sed "s/ =.*//g" |
sed "s/}.*/}/" |
sed "s/'//g" |
sed "s/;//g" |
sed "/\[/d" |
sed "s/goog.provide/provide/g" |
sed "s/goog.require/require/g" |
sed "/^goog\(.[A-Za-z0-9_]*\)*(/d"