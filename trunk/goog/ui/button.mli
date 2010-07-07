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

and buttonRenderer = object
  inherit Control.controlRenderer

(** @inheritDoc *)
  method createDom_ : button t -> Dom_html.element t meth

(** @inheritDoc *)
  method decorate_ : button t -> Dom_html.element t -> Dom_html.element t meth

(**
   Returns the ARIA role to be applied to buttons.
   @return ARIA role.
*)
  method getAriaRole : Gdom.A11y.role_pre optdef -> unit meth

(** @inheritDoc *)
  method getCssClass : js_string t meth

(**
   Takes a button's root element, and returns its tooltip text.
   @param element The button's root element.
   @return The tooltip text.
*)
  method getTooltip : Dom_html.element t -> js_string t optdef meth

(**
   Takes a button's root element, and returns the value associated with it.
   No-op in the base class.
   @param element The button's root element.
   @return The button's value (undefined if none).
*)
  method getValue : js_string t optdef meth
end

(**
   Default renderer for {@link goog.ui.Button}s.  Extends the superclass with
   the following button-specific API methods:
   <ul>
   <li>{@code getValue} - returns the button element's value
   <li>{@code setValue} - updates the button element to reflect its new value
   <li>{@code getTooltip} - returns the button element's tooltip text
   <li>{@code setTooltip} - updates the button element's tooltip text
   <li>{@code setCollapsed} - removes one or both of the button element's
   borders
   </ul>
   For alternate renderers, see {@link goog.ui.NativeButtonRenderer},
   {@link goog.ui.CustomButtonRenderer}, and {@link goog.ui.FlatButtonRenderer}.
   @constructor
*)
val buttonRenderer : buttonRenderer t constr


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
val button : (ControlContent.controlContent -> buttonRenderer t opt -> Gdom.domHelper t opt -> button t) constr
