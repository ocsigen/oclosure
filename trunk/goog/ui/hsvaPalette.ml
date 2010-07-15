(**
   OClosure Project - 2010
   Class goog.ui.HsvaPalette
   
   @author Cardoso Gabriel
   @version 0.2
   @see 'goog.events.EventTarget'
*)
open Js

class type hsvaPalette = object
  inherit HsvPalette.hsvPalette

  method createDom : unit meth

  method disposeInternal : unit meth

  method getAlpha : float t meth

  method getColorRgbaHex : js_string t meth

  method setAlpha : float -> unit meth

  method setColor : js_string t -> unit meth

  method setColorRgbaHex : js_string t -> unit meth

  method updateInput : unit meth
end

let hsvaPalette : (Gdom.domHelper t opt -> js_string t opt -> float opt
		     -> js_string t opt ->  hsvaPalette t) constr = 
  Js.Unsafe.variable "goog.ui.HsvaPalette"
