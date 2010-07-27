(** 
   OClosure Project - 2010
   Class goog.ui.NativeButtonRenderer
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

class type ['but] nativeButtonRenderer = object
  inherit ['but] Button.buttonRenderer

  method canDecorate : #Dom_html.element t -> bool t meth

  method createDom : 'but t -> Dom_html.element t meth

  method decorate : 'but t -> #Dom_html.element t -> Dom_html.element t meth

  method getAriaRole : Gdom.A11y.role_pre optdef meth

  method getValue : #Dom_html.element t -> js_string t opt meth

  method initializeDom : 'but t -> unit meth

  method isFocusable : 'but t -> bool t meth

  method setAllowTextSelection : #Dom_html.element t -> bool t -> unit meth

  method setFocusable :'but t -> bool t -> unit meth

  method setRightToLeft : #Dom_html.element t -> bool t -> unit meth

  method setState : 'but t -> Component.Component.State.state_pre -> bool t 
    -> unit meth

  method setValue : #Dom_html.element t -> js_string t meth

  method updateAriaState : unit meth
end

let tmp = Js.Unsafe.variable "goog.ui.NativeButtonRenderer"
let nativeButtonRenderer : #Button.button nativeButtonRenderer t constr = tmp

