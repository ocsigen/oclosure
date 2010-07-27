(**
   OClosure Project - 2010
   Class goog.ui.BaseRoundedPanel
   
   @author Gabriel Cardoso 
   @version 0.2
*)

open Js

class type baseRoundedPanel = object
  inherit Component.component 
  method disposeInternal : unit meth
  method getContentElement : Dom_html.element t meth 
end

module RoundedPanel = struct
  let rp = Tools.variable "[oclosure]goog.ui.RoundedPanel[/oclosure]"
  let create (r : int) (bw : int) (bc : js_string t) (bgc : js_string t opt) (c : int opt) (dh : Gdom.domHelper t opt) : baseRoundedPanel t =
    rp##create(r, bw, bc, bgc, c, dh)
end
