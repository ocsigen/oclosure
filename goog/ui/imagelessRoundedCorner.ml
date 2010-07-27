(**
   OClosure Project - 2010
   Class goog.ui.AbstractImagelessRoundedCorner
   Class goog.ui.CanvasRoundedCorner
   Class goog.ui.VmlRoundedCorner
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type abstractImagelessRoundedCorner = object
  method draw : unit meth

  method getBackgroundColor : js_string t meth

  method getBorderColor : js_string t meth

  method getHeight : int meth
	
  method getLineWidth : int meth
      
  method getRadius : int meth

  method getWidth : int meth

  method setBakcgroundColor : js_string t -> unit meth

  method setBorderColor : js_string t -> unit meth

  method setHeight : int -> unit meth

  method setLineWidth : int -> unit meth

  method setRadius : int -> unit meth

  method setWidth : int -> unit meth
end

module ImagelessRoundedCorner = struct
let ilrc = Tools.variable "[oclosure]goog.ui.ImagelessRoundedCorner[/oclosure]"
let create (e : #Dom_html.element t) (w : int) (h : int) (bw : int) (r : int) (l : int) (bc : js_string t) (bgc : js_string t opt) (hp : Gdom.domHelper t opt) : abstractImagelessRoundedCorner t optdef =
  ilrc##create(e, w, h, bw, r, l, bc, bgc, hp)
end
