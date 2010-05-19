
(** 
    * OClosure Project - 2010
    * Class goog.math.Vec3
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Coordinate3  (* goog.math.Coordinate3 *)
open Math  (* goog.math *)

class external vec3 
inherit coordinate3: number(* opt? *) -> number(* opt? *) -> number(* opt? *) ->  <
randomUnit : vec3;
random : vec3;
fromCoordinate3 : coordinate3 -> vec3;
clone : vec3;
magnitude : number;
squaredMagnitude : number;
scale : number -> vec3;
invert : vec3;
normalize : vec3;
add : vec3 -> vec3;
subtract : vec3 -> vec3;
equals : vec3 -> boolean;
distance : vec3 -> vec3 -> number;
squaredDistance : vec3 -> vec3 -> number;
toMatrix3x1 : coordinate3 -> matrix;
toMatrix4x1 : coordinate3 -> matrix;
equals : vec3 -> vec3 -> boolean;
sum : vec3 -> vec3 -> vec3;
difference : vec3 -> vec3 -> vec3;
dot : vec3 -> vec3 -> number;
cross : vec3 -> vec3 -> vec3;
lerp : vec3 -> vec3 -> number -> vec3;
> = "goog.math.Vec3"
