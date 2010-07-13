(**
   OClosure Project - 2010
   Class goog.ui.ContainerRenderer
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type ['cont] containerRenderer = object
  constraint 'cont = #Container.container
  method canDecorate : #Dom_html.element t -> bool t meth

  method createDom : 'cont t -> Dom_html.element t meth

  method decorate : 'cont t -> #Dom_html.element t -> Dom_html.element t meth

  method decorateChildren : 'cont t -> #Dom_html.element t -> Dom_html.element t meth

  method enableTabIndex : #Dom_html.element t -> bool t meth

  method getAriaRole : Gdom.A11y.role_pre optdef meth

  method getClassNames : 'cont t -> js_string t js_array t meth

  method getContentElement : #Dom_html.element t -> Dom_html.element t meth

  method getCssClass : js_string t meth

  method getDecoratorForChild : #Dom_html.element t -> Control.control t opt meth

  method getDefaultOrientation : Container.orientation meth
  
  method getKeyEventTarget : 'cont t -> Dom_html.element t opt meth

  method hasTabIndex : Dom_html.element t -> bool t meth

  method initializeDom : 'cont t -> unit meth
end

let tmp = Js.Unsafe.variable "goog.ui.ContainerRenderer"
let containerRenderer : (#Container.container containerRenderer t) constr = tmp
