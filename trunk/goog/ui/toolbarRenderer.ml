(** 
    OClosure Project - 2010
    
    Class goog.ui.ToolbarRenderer

    @author : Oran Charles
    @version 0.2
    @see 'goog.ui.ContainerRenderer'
*)
open Js
open ContainerRenderer

class type ['cont] toolbarRenderer = object
  inherit ['cont] containerRenderer

  (**
     Returns the ARIA role to be applied to toolbar/menubar.
     @return  ARIA role.
  *)
  method getAriaRole_ : js_string t meth

  (**
     Inspects the element, and creates an instance of or
     an appropriate subclass best suited to decorate it.  Overrides the superclass implementation by recognizing HR elements as separators.
     @param  element Element to decorate.
     @return  A new control suitable to decorate the element (null if none).
  *)
  method getDecoratorForChild : #Dom_html.element t -> Control.control t opt meth

  (**
     Returns the CSS class to be applied to the root element of containers
     rendered using this renderer.
     @return  Renderer-specific CSS class.
  *)
  method getCssClass : js_string t meth

  (**
     Returns the default orientation of containers rendered or decorated by this renderer.  This implementation returns .
     @return  Default orientation for containers created or decorated by this renderer.
  *)
  method getDefaultOrientation : Container.orientation meth

end

(**
   Default renderer for goog.ui.Toolbar, based on goog.ui.ContainerRenderer.
   @constructor
*)
let tmp = Js.Unsafe.variable "goog.ui.ToolbarRenderer"
let toolbarRenderer : (Toolbar.toolbar #toolbarRenderer t) constr = 
  tmp
