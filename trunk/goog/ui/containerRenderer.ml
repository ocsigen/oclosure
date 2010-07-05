(**
   OClosure Project - 2010
   Class goog.ui.ContainerRenderer
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type containerRenderer = object
  method canDecorate : Dom_html.element t -> bool t meth

  method createDom : Container.container t -> Dom_html.element t meth

  method decorate : Container.container t -> Dom_html.element t -> Dom_html.element t meth

  method decorateChildren : Container.container t -> Dom_html.element t -> Dom_html.element t meth

  method enableTabIndex : Dom_html.element t -> bool t meth

  method getAriaRole : Gdom.A11y.role_pre optdef meth

  method getClassNames : Container.container t -> js_string t js_array t meth

  method getContentElement : Dom_html.element t -> Dom_html.element t meth

  method getCssClass : js_string t meth

  method getDecoratorForChild : Dom_html.element t -> Control.control t opt meth

  method getDefaultOrientation : Container.orientation meth
  
  method getKeyEventTarget : Container.container t -> Dom_html.element t opt meth

  method hasTabIndex : Dom_html.element t -> bool t meth

  method initializeDom : Container.container t -> unit meth
end

let containerRenderer : (containerRenderer t) constr = 
  Js.Unsafe.variable "goog.ui.ContainerRenderer"
