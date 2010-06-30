(** 
    * OClosure Project - 2010
    * Class goog.ui.Bubble
    *
    * The Bubble provides a general purpose bubble implementation 
    * that can be anchored to a particular element and
    * displayed for a period of time.
    * 
    * @author Bozman Cagdas
    * @version 0.1
*)

open Js

class type bubble = object
  inherit Component.component

  method attach : #Dom_html.element t -> unit meth

  method createDom : unit meth

  method disposeInternal : unit meth

  method getComputedAnchoredPosition : #Dom_html.element t -> Positioning.anchoredPosition t meth
 
  method isVisible : bool t meth
  
  method setAutoHide : bool t -> unit meth
  
  method setPinnedCorner : Positioning.corner -> unit meth

  method setPosition : Positioning.abstractPosition t -> unit meth

  method setTimeout : int -> unit meth

  method setVisible : bool t -> unit meth
end

let bubble = Js.Unsafe.variable "goog.ui.Bubble"
let bubble : ((js_string t, #Dom_html.element t) Tools.Union.t -> bubble t) constr =
  bubble
