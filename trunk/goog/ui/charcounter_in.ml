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
type elInput = JSOO.obj

(** JSOO.obj **)
type elCount = JSOO.obj

type browserEvent 

class external charcounter inherit eventTarget: elInput -> elCount -> float -> int ->
< 
  (** Sets the maximum length. *)
  setMaxLength : float -> unit ;

 (** Returns the maximum length. *)
 getMaxLength : unit -> float ;

 (** Sets the display mode. *)
 setDisplayMode : int -> unit ;

 (** Returns the display mode. *)
 getDisplayMode : unit -> int ;

 (** @inheritDoc *)
 disposeInternal : unit -> unit ;

 (*(** Change event handler for input field. *)
 onChange_ : browserEvent -> unit ;
 
 (** Checks length of text in input field and updates the counter. Truncates text if the maximum lengths is exceeded. *)
 checkLength_ : unit -> unit ;*)

> = "goog.ui.CharCounter"
