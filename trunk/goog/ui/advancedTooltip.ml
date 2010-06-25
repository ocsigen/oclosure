(**
   OClosure Project - 2010
   Class goog.ui.AdvancedTooltip
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js
open Gdom.DomHelper
open Tools


class type advancedTooltip = object
  inherit Tooltip.tooltip
  method getCursorTracking : bool t meth

  method getCursorTrackingHideDelayMs : int meth

  method getHideDelayMs : int meth

  method getHotSpotPadding : Math.Box.box t meth

  method isMouseInTooltip : bool t meth

  method maybeHide : element t -> unit meth

  method resetHotSpot : unit meth

  method setCursorTracking : bool t -> unit meth

  method setCursorTrackingHideDelayMs : int -> unit meth

  method setHotSpotPadding : Math.Box.box t -> unit meth
end


(**
   Advanced tooltip widget with cursor tracking abilities. Works like a regular
   tooltip but can track the cursor position and direction to determine if the 
   tooltip should be dismissed or remain open.
*)
let advancedTooltip : ((element t, js_string t) Union.t opt -> js_string t opt -> domHelper t opt -> advancedTooltip t) constr = 
  Js.Unsafe.variable "goog.ui.AdvancedTooltip"
