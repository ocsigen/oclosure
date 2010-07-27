(**
   OClosure Project - 2010
   Class goog.math.Rect
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type rect = object
  method boundingRect : rect t -> unit meth

  method clone : rect t meth

  method contains : (rect t, Coordinate.coordinate t) Tools.Union.t 
    -> bool t meth

  method difference : rect t -> rect t js_array t meth

  method getSize : Size.size t meth

  method intersection : rect t -> bool t meth

  method intersects : rect t -> bool t meth

  method toBox : Box.box t meth

  method toString : js_string t meth
end

let rect : (int -> int -> int -> int -> rect t) constr = 
  Tools.variable "[oclosure]goog.math.Rect[/oclosure]"
