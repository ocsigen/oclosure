
(** 
    * OClosure Project - 2010
    * Class goog.math.Range
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)

class external range : number -> number ->  <
clone : range;
equals : range -> range -> boolean;
intersection : range -> range -> range(* opt? *);
hasIntersection : range -> range -> boolean;
boundingRange : range -> range -> range;
contains : range -> range -> boolean;
containsPoint : range -> number -> boolean;
> = "goog.math.Range"
