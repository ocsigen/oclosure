
(** 
    * OClosure Project - 2010
    * Class goog.math.Long
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)

class external long : number -> number ->  <
fromInt : number -> long;
fromNumber : number -> long;
fromBits : number -> number -> long;
fromString : string -> number(* opt? *) -> long;
zERO : unit;
oNE : unit;
nEG_ONE : unit;
mAX_VALUE : unit;
mIN_VALUE : unit;
toInt : unit;
toNumber : unit;
toString : number(* opt? *) -> string;
getHighBits : unit;
getLowBits : unit;
getLowBitsUnsigned : unit;
getNumBitsAbs : number;
isZero : unit;
isNegative : unit;
isOdd : unit;
equals : long -> boolean;
notEquals : long -> boolean;
lessThan : long -> boolean;
lessThanOrEqual : long -> boolean;
greaterThan : long -> boolean;
greaterThanOrEqual : long -> boolean;
compare : long -> number;
negate : unit;
add : long -> long;
subtract : long -> long;
multiply : long -> long;
div : long -> long;
modulo : long -> long;
not : unit;
and : long -> long;
or : long -> long;
xor : long -> long;
shiftLeft : number -> long;
shiftRight : number -> long;
shiftRightUnsigned : number -> long;
> = "goog.math.Long"
