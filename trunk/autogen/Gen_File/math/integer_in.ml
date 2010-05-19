
(** 
    * OClosure Project - 2010
    * Class goog.math.Integer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)

class external integer : (* Array[number] *) -> number ->  <
fromInt : number -> integer;
fromNumber : number -> integer;
fromBits : (* Array[number] *) -> integer;
fromString : string -> number(* opt? *) -> integer;
zERO : unit;
oNE : unit;
toInt : number;
toNumber : unit;
toString : number(* opt? *) -> string;
getBits : number -> number;
getBitsUnsigned : number -> number;
getSign : unit;
isZero : unit;
isNegative : unit;
isOdd : unit;
equals : integer -> boolean;
notEquals : integer -> boolean;
greaterThan : integer -> boolean;
greaterThanOrEqual : integer -> boolean;
lessThan : integer -> boolean;
lessThanOrEqual : integer -> boolean;
compare : integer -> number;
shorten : number -> integer;
negate : unit;
add : integer -> integer;
subtract : integer -> integer;
multiply : integer -> integer;
divide : integer -> integer;
modulo : integer -> integer;
not : unit;
and : integer -> integer;
or : integer -> integer;
xor : integer -> integer;
shiftLeft : number -> integer;
shiftRight : number -> integer;
> = "goog.math.Integer"
