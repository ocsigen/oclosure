(**
   OClosure Project - 2010
   Class goog.ui.MenuItemRenderer
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type menuItemRenderer = object
  inherit Control.controlRenderer

  method createDom : Control.control t -> Dom_html.element t meth

  method decorate : Control.control t -> Dom_html.element t 
    -> Dom_html.element t meth

  method getAriaRole : Gdom.A11y.role meth

  method getClassForState : Component.Component.State.state_pre 
    -> js_string t optdef meth

  method getContentElement : Dom_html.element t -> Dom_html.element t meth

  method getCssClass : js_string t meth

  method getStateFromClass : js_string t 
    -> Component.Component.State.state_pre meth

  method setCheckable : Control.control t -> Dom_html.element t opt -> bool t 
    -> unit meth

  method setContent : Dom_html.element t -> ControlContent.controlContent
    -> unit meth

  method setSelectable : Control.control t -> Dom_html.element t opt -> bool t 
    -> unit meth
end

let menuItemRenderer : (menuItemRenderer t) constr = 
  Js.Unsafe.variable "goog.ui.MenuItemRenderer"
