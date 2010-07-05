(**
   OClosure Project - 2010
   Class goog.ui.MenuRenderer
   
   @author : 
   @version 0.2
*)

open Js

class type menuRenderer = object
  inherit ContainerRenderer.containerRenderer
	
  method canDecorate : Dom_html.element t -> bool t meth
 
  method containsElement : #Component.component t -> Dom_html.element t -> bool t meth

  method getAriaRole : Gdom.A11y.role_pre optdef meth

  method getCssClass : js_string t meth

  method getDecoratorForChild : Dom_html.element t -> Control.control t opt meth

  method initializeDom : Container.container t -> unit meth
end

let menuRenderer : (menuRenderer t) constr = 
  Js.Unsafe.variable "goog.ui.MenuRenderer"
