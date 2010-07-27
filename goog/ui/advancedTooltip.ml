(**
   OClosure Project - 2010
   Class goog.ui.AdvancedTooltip
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js
open Gdom
open Tools

class type advancedTooltip = object
  inherit Tooltip.tooltip
  method getCursorTracking : bool t meth

  method getCursorTrackingHideDelayMs : int meth

  method getHideDelayMs : int meth

  method getHotSpotPadding : Math.box t meth

  method isMouseInTooltip : bool t meth

  method maybeHide : #Dom_html.element t -> unit meth

  method resetHotSpot : unit meth

  method setCursorTracking : bool t -> unit meth

  method setCursorTrackingHideDelayMs : int -> unit meth

  method setHotSpotPadding : Math.box t -> unit meth
end

let tmp = Js.Unsafe.variable "goog.ui.AdvancedTooltip"
let advancedTooltip : ((#Dom_html.element t, js_string t) Union.t opt 
		       -> js_string t opt -> domHelper t opt 
		       -> advancedTooltip t) constr = tmp
  
