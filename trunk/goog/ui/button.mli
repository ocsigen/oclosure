(** 
   OClosure Project - 2010
   Class goog.ui.Button
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

module Side : sig
   type side =   
     (** Neither side. *)
       NONE
     (** Left for LTR, right for RTL. *)
     | START
     (** Right for LTR, left for RTL. *) 
     | END
     (** Both sides. *)
     | BOTH
end

class type button = object
  inherit Control.control

(** @inheritDoc *)
  method disposeInternal : unit meth

(** @inheritDoc *)
  method enterDocument : unit meth

(**
   Returns the tooltip for the button.
   @return Tooltip text (undefined if none).
*)
  method getTooltip : js_string t optdef meth

(**
   Returns the value associated with the button.
   @return Button value (undefined if none).
*)
  method getValue : js_string t optdef meth

(**
   Collapses the border on one or both sides of the button, allowing it to be
   combined with the adjancent button(s), forming a single UI componenet with
   multiple targets.
   @param sides Bitmap of one or more {@link goog.ui.Button.Side}s for
   which borders should be collapsed.
*)
  method setCollapsed : Side.side -> unit meth

(**
   Sets the tooltip for the button, and updates its DOM.
   @param tooltip New tooltip text.
*)
  method setTooltip : js_string t -> unit meth

(**
   Sets the value associated with the button, and updates its DOM.
   @param value New button value.
*)
  method setValue : js_string t -> unit meth
end

(**
   A button control, rendered as a native browser button by default.
   
   @param content Text caption or existing DOM
   structure to display as the button's caption.
   @param opt_renderer Renderer used to render or
   decorate the button; defaults to {@link goog.ui.NativeButtonRenderer}.
   @param opt_domHelper Optional DOM hepler, used for
   document interaction.
   @constructor
*)

val button : ControlContent.controlContent -> ButtonRenderer.buttonRenderer t opt -> Gdom.domHelper t opt -> button t constr
