
(** 
    * OClosure Project - 2010
    * Class goog.graphics.AffineTransform
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Math  (* goog.math *)

class external affineTransform : number(* opt? *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) -> number(* opt? *) ->  <
isIdentity : boolean;
clone : affineTransform(* opt? *);
setTransform : number -> number -> number -> number -> number -> number -> affineTransform(* opt? *);
copyFrom : affineTransform(* opt? *) -> affineTransform(* opt? *);
scale : number -> number -> affineTransform(* opt? *);
translate : number -> number -> affineTransform(* opt? *);
rotate : number -> number -> number -> affineTransform(* opt? *);
shear : number -> number -> affineTransform(* opt? *);
toString : string;
getScaleX : number;
getScaleY : number;
getTranslateX : number;
getTranslateY : number;
getShearX : number;
getShearY : number;
concatenate : affineTransform(* opt? *) -> affineTransform(* opt? *);
preConcatenate : affineTransform(* opt? *) -> affineTransform(* opt? *);
transform : (* Array[number] *)(* opt? *) -> number -> (* Array[number] *)(* opt? *) -> number -> number -> unit;
getDeterminant : number;
isInvertible : boolean;
createInverse : affineTransform(* opt? *);
getScaleInstance : number -> number -> affineTransform(* opt? *);
getTranslateInstance : number -> number -> affineTransform(* opt? *);
getShearInstance : number -> number -> affineTransform(* opt? *);
getRotateInstance : number -> number -> number -> affineTransform(* opt? *);
setToScale : number -> number -> affineTransform(* opt? *);
setToTranslation : number -> number -> affineTransform(* opt? *);
setToShear : number -> number -> affineTransform(* opt? *);
setToRotation : number -> number -> number -> affineTransform(* opt? *);
equals : affineTransform -> boolean;
> = "goog.graphics.AffineTransform"
