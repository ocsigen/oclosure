
(** 
    * OClosure Project - 2010
    * Class goog.math.Vec2
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Coordinate  (* goog.math.Coordinate *)
open Math  (* goog.math *)

class external vec2 
inherit coordinate: number(* opt? *) -> number(* opt? *) ->  <
randomUnit : vec2(* opt? *);
random : vec2(* opt? *);
fromCoordinate : coordinate(* opt? *) -> vec2(* opt? *);
clone : vec2(* opt? *);
magnitude : number;
squaredMagnitude : number;
scale : number -> vec2(* opt? *);
invert : vec2(* opt? *);
normalize : vec2(* opt? *);
add : vec2(* opt? *) -> vec2(* opt? *);
subtract : vec2(* opt? *) -> vec2(* opt? *);
equals : vec2(* opt? *) -> boolean;
distance : vec2(* opt? *) -> vec2(* opt? *) -> number;
squaredDistance : vec2(* opt? *) -> vec2(* opt? *) -> number;
equals : vec2(* opt? *) -> vec2(* opt? *) -> boolean;
sum : vec2(* opt? *) -> vec2(* opt? *) -> vec2(* opt? *);
difference : vec2(* opt? *) -> vec2(* opt? *) -> vec2(* opt? *);
dot : vec2(* opt? *) -> vec2(* opt? *) -> number;
lerp : vec2(* opt? *) -> vec2(* opt? *) -> number -> vec2(* opt? *);
> = "goog.math.Vec2"
