(**
   OClosure Project - 2010
   Class goog.ui.AnimatedZippy

   @author Oran Charles, Cardoso Gabriel
   @version 0.2
*)
open Zippy

open Js
open Tools

class type animatedZippy = object
  inherit zippy

  method animationAcceleration : float -> float t meth
  
  method setExpanded : bool t -> unit meth

end

let unit x = Js.Unsafe.variable (String.sub x 10 (String.length x - 21))
let tmp = unit "[oclosure]goog.ui.AnimatedZippy[/oclosure]"
let animatedZippy : ((#Dom_html.element t, js_string t) Union.t opt -> 
  (#Dom_html.element t, js_string t) Union.t opt -> bool t opt 
  -> animatedZippy t) constr = tmp
