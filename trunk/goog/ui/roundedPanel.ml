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
  let create (r : int) (bw : int) (bc : js_string t) (bgc : js_string t opt) (c : int opt) (dh : Gdom.domHelper t opt) : baseRoundedPanel t =
    Js.Unsafe.fun_call
      (Js.Unsafe.variable "goog.ui.RoundedPanel.create")
      [|Js.Unsafe.inject r; Js.Unsafe.inject bw; Js.Unsafe.inject bc; 
	Js.Unsafe.inject bgc; Js.Unsafe.inject c; Js.Unsafe.inject dh|] 
end
