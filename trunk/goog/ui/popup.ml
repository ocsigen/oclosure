(** 
   OClosure Project - 2010 
   Class goog.ui.Popup
   
   @author Esther Baruk
   @version 0.1
*)
open Js

open Tools

class type popup = object
  inherit PopupBase.popupBase
  method getPinnedCorner : Positioning.corner meth
  method setPinnedCorner : Positioning.corner -> unit meth
  method getPosition : Positioning.abstractPosition t meth
  method setPosition : Positioning.abstractPosition t -> unit meth
  method getMargin : Math.box t opt meth
  method setMargin : (Math.box t, int) Union.t opt -> int opt -> int opt 
    -> int opt -> unit meth
  method reposition : unit meth
end

let tmp = Js.Unsafe.variable "goog.ui.Popup"
let popup : (#Dom_html.element t opt -> Positioning.abstractPosition t opt 
  -> popup t) constr = tmp
