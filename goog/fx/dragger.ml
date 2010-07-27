(**
   OClosure Project - 2010
   Class goog.fx.Dragger
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type dragger = object
  inherit Events.eventTarget

  method defaultAction : int -> int -> unit meth

  method disposeInternal : unit meth

  method endDrag : Events.browserEvent t -> bool t opt -> unit meth

  method endDragCancel : Events.browserEvent t -> unit meth

  method getEnabled : bool t meth

  method getHandler : Events.eventHandler t meth

  method getHysteresis : int meth

  method limitX : int -> int meth
  
  method limitY : int -> int meth

  method setCancelIeDragStart : bool t -> unit meth

  method setEnabled : bool t -> unit meth

  method setHysteresis : int -> unit meth

  method setLimits : Math.rect t optdef -> unit meth

  method setScrollTarget : #Dom_html.eventTarget t -> unit meth

  method startDrag : Events.browserEvent t -> unit meth
end

let tmp = Tools.variable "[oclosure]goog.fx.Dragger[/oclosure]"
let dragger : (#Dom_html.element t -> #Dom_html.element t opt -> Math.rect t opt
  -> dragger t) constr = tmp 
