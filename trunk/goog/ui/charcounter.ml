(** 
    * OClosure Project - 2010
    * Class goog.ui.Charcounter
    *
    * CharCounter widget. Counts the number of characters in a input field or a
    * text box and displays the number of additional characters that may be
    * entered before the maximum length is reached.
    *
    * @author : Oran Charles
    * @version 0.1
    * @see 'goog.events.EventTarget'
*)
open EventTarget

(** JSOO.obj **)
type elInput = Dom.element

(** JSOO.obj **)
type elCount = Dom.element

type browserEvent 

open Js
class type charcounter = object
  inherit eventTarget
  (** Sets the maximum length. *)
  method setMaxLength : float -> unit  meth

 (** Returns the maximum length. *)
  method getMaxLength : unit -> float  meth

 (** Sets the display mode. *)
  method setDisplayMode : int -> unit  meth

 (** Returns the display mode. *)
  method getDisplayMode : unit -> int  meth

 (** @inheritDoc *)
  method disposeInternal : unit -> unit  meth

end

let charcounter : (elInput -> elCount -> float -> number -> charcounter t) constr =
  Js.Unsafe.variable "goog.ui.CharCounter"

(** Widget displays the number of characters remaining (the default). **)
let display_Remaining = 0

(** Widget displays the number of characters entered. **)
let display_Incremental = 1 
