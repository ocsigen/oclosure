(**
   OClosure Project - 2010
   Class goog.ui.IframeMask
   
   @author Cardoso Gabriel
   @version 0.2
*)
open Js

class type iframeMask = object
  inherit Disposable.disposable

  method applyMask : unit meth

  method disposeInternal : unit meth

  method hideMask : unit meth

  method listenOnTarget : Events.eventTarget t -> js_string t -> js_string t
    -> #Dom_html.element t -> unit meth

  method removeHandlers : unit meth

  method setOpacity : float -> unit meth

  method setSnapElement : #Dom_html.element t -> unit meth

  method setZIndex : int -> unit meth
end

let iframeMask : Gdom.domHelper t opt -> Structs.pool t opt ->
  iframeMask t constr = Js.Unsafe.variable "goog.ui.IframeMask"
