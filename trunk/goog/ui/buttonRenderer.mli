(**
   OClosure Project - 2010
   Class goog.ui.ButtonRenderer
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type buttonRenderer = object
  inherit ControlRenderer.controlRenderer

(** @inheritDoc *)
  method createDom : #Control.control t -> Dom_html.element t meth

(** @inheritDoc *)
  method decorate : #Control.control t -> Dom_html.element t -> Dom_html.element t meth

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
