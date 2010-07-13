(** 
    OClosure Project - 2010
    
    Class goog.ui.Charcounter

    @author : Oran Charles
    @version 0.2
    @see 'goog.events.EventTarget'
*)
open EventTarget
open Js

module CharCounter = struct

  (** Display mode for the charcounter. *)
  module Display = struct
    type t =  
	(** Widget displays the number of characters remaining (the default). *)
	REMAINING
	(** Widget displays the number of characters entered. *)
      |INCREMENTAL
  end
end

class type charCounter = object
  inherit eventTarget
  (** Sets the maximum length. 
      @param maxLength The maximum length.*)
  method setMaxLength : int -> unit  meth

 (** Returns the maximum length. 
     @return The maximum length.*)
  method getMaxLength : int  meth

 (** Sets the display mode. 
     @param displayMode The display mode.*)
  method setDisplayMode : int -> unit  meth

 (** Returns the display mode. 
     @return The display mode. *)
  method getDisplayMode : int  meth

 (** @inheritDoc *)
  method disposeInternal : unit  meth

end

(** CharCounter widget. Counts the number of characters in a input field or a text box and displays the number of additional characters that may be entered before the maximum length is reached. 
    @param elInput Input or text area element to count the number of characters in.
    @param elCount HTML element to display the remaining number of characters in.
    @param maxLength The maximum length.
    @param opt_displayMode Display mode for this charcounter. Defaults to goog.ui.CharCounter.Display.REMAINING.
    @constructor*)
let charCounter : (Dom_html.element t -> Dom_html.element t -> int -> CharCounter.Display.t opt -> charCounter t) constr =
  Js.Unsafe.variable "goog.ui.CharCounter"

