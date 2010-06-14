
(** 
    * OClosure Project - 2010
    * Class goog.math.Rect
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Size  (* goog.math.Size *)
open Box  (* goog.math.Box *)

class external rect : number -> number -> number -> number ->  <
clone : rect;
toBox : box;
createFromBox : box -> rect;
equals : rect -> rect -> boolean;
intersection : rect -> boolean;
intersection : rect -> rect -> rect(* opt? *);
intersects : rect -> rect -> boolean;
intersects : rect -> boolean;
difference : rect -> rect -> (* Array[rect] *);
difference : rect -> (* Array[rect] *);
boundingRect : rect -> unit;
boundingRect : rect -> rect -> rect(* opt? *);
contains : rect(* | coordinate *) -> boolean;
getSize : size;
> = "goog.math.Rect"
