(**
   OClosure Project - 2010
   Class goog.ui.MenuRenderer
   
   @author : 
   @version 0.2
*)

open Js

class type menuRenderer = object
  inherit ContainerRenderer.containerRenderer
(**
   Returns whether the element is a UL or acceptable to our superclass.
   @param element Element to decorate.
   @return Whether the renderer can decorate the element.
*)	
  method canDecorate : Dom_html.element t -> bool t meth
 
(**
   Returns whether the given element is contained in the menu's DOM.
   @param menu The menu to test.
   @param element The element to test.
   @return Whether the given element is contained in the menu.
*)
  method containsElement : #Component.component t -> Dom_html.element t -> bool t meth

(**
   Returns the ARIA role to be applied to menus.
   @return ARIA role.
   @override
*)
  method getAriaRole : Gdom.A11y.role_pre optdef meth

(**
   Returns the CSS class to be applied to the root element of containers
   rendered using this renderer.
   @return Renderer-specific CSS class.
*)
  method getCssClass : js_string t meth

(**
   Inspects the element, and creates an instance of {@link goog.ui.Control} or
   an appropriate subclass best suited to decorate it.  Overrides the superclass
   implementation by recognizing HR elements as separators.
   @param element Element to decorate.
   @return A new control suitable to decorate the element
   (null if none).
*)
  method getDecoratorForChild : Dom_html.element t -> Control.control t opt meth

(** @inheritDoc *)
  method initializeDom : Container.container t -> unit meth
end

val menuRenderer : (menuRenderer t) constr 
