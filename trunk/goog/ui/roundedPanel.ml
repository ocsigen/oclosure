(**
   OClosure Project - 2010
   Class goog.ui.BaseRoundedPanel

   Base class for the hierarchy of RoundedPanel classes. Do not instantiate 
   directly. Instead, call goog.ui.RoundedPanel.create(). The HTML structure for
   the RoundedPanel is:
   - div (Contains the background and content. Class name: goog-roundedpanel)
   - div (Contains the background/rounded corners. Class name:
   goog-roundedpanel-bg)
   - div (Contains the content. Class name: goog-roundedpanel-content)
   
   @author : Gabriel Cardoso 
   @version 0.2
*)

open Js

class type baseRoundedPanel = object
  inherit Component.component 

(** @inheritDoc *)
  method disposeInternal : unit meth

(**
   Returns the DOM element containing the actual content.
   @return The element containing the actual content (null if none).
*)
  method getContentElement : Dom_html.element t meth 
end

(**
   Factory method that returns an instance of a BaseRoundedPanel.
   @param radius The radius of the rounded corner(s), in pixels.
   @param borderWidth The thickness of the border, in pixels.
   @param borderColor The border color of the panel.
   @param opt_backgroundColor The background color of the panel.
   @param opt_corners The corners of the panel to be rounded. Any
   corners not specified will be rendered as square corners. Will default
   to all square corners if not specified.
   @param opt_domHelper The DOM helper object for the
   document we want to render in.
   @return An instance of a goog.ui.BaseRoundedPanel subclass.
*)

module RoundedPanel = struct
  let create (r : int) (bw : int) (bc : js_string t) (bgc : js_string t opt) (c : int opt) (dh : Gdom.domHelper t opt) : baseRoundedPanel t =
    Js.Unsafe.fun_call
      (Js.Unsafe.variable "goog.ui.RoundedPanel.create")
      [|Js.Unsafe.inject r; Js.Unsafe.inject bw; Js.Unsafe.inject bc; 
	Js.Unsafe.inject bgc; Js.Unsafe.inject c; Js.Unsafe.inject dh|] 
end
