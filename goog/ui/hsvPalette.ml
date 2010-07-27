(**
   OClosure Project - 2010
   Class goog.ui.HsvPalette
   
   @author Cardoso Gabriel
   @version 0.2
   @see 'goog.events.EventTarget'
*)
open Js

class type hsvPalette = object
  inherit Component.component

  method canDecorate : #Dom_html.element t -> bool t meth

  method createDom : unit meth

  method disposeInternal : unit meth

  method enterDocument : unit meth

  method getAlpha : float t meth

  method getColor : js_string t meth

  method setColor : js_string t -> unit meth

  method setHsv : float opt -> float opt -> int opt -> unit meth
end

let hsvPalette : (Gdom.domHelper t opt -> js_string t opt -> js_string t opt ->
	       hsvPalette t) constr =
  Tools.variable "[oclosure]goog.ui.HsvPalette[/oclosure]"

