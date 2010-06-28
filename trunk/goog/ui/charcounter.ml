(** 
    * OClosure Project - 2010
    * Class goog.ui.Charcounter
    *
    * CharCounter widget. Counts the number of characters in a input field or a
    * text box and displays the number of additional characters that may be
    * entered before the maximum length is reached.
    *
    * @author : Oran Charles
    * @version 0.2
    * @see 'goog.events.EventTarget'
*)
open EventTarget
open Js

(**
   * Display mode for the charcounter.
*)
module Display = 
  (struct
     type t = 
	 (** Widget displays the number of characters remaining (the default). *)
	 REMAINING
	   (** Widget displays the number of characters entered. *)
       |INCREMENTAL
   end)

type elInput = Dom_html.element t

type elCount = Dom_html.element t

type browserEvent 

class type charcounter = object
  inherit eventTarget
  (** Sets the maximum length. *)
  method setMaxLength : int -> unit  meth

 (** Returns the maximum length. *)
  method getMaxLength : int  meth

 (** Sets the display mode. *)
  method setDisplayMode : int -> unit  meth

 (** Returns the display mode. *)
  method getDisplayMode : int  meth

 (** @inheritDoc *)
  method disposeInternal : unit  meth

end

let charcounter : (elInput -> elCount -> int -> Display.t opt -> charcounter t) constr =
  Js.Unsafe.variable "goog.ui.CharCounter"

