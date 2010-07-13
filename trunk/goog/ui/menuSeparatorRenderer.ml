(**
   OClosure Project - 2010
   Class goog.ui.MenuSeparatorRenderer
   
   @author : 
   @version 0.2
*)

open Js

open MenuSeparator

class type ['sep] menuSeparatorRenderer = object
  inherit ['sep] Control.controlRenderer

  method createDom : 'sep t -> Dom_html.element t meth

  method decorate : 'sep t -> #Dom_html.element t -> Dom_html.element t meth

  method getCssClass : js_string t meth

  method setContent : 'sep t -> ControlContent.controlContent -> unit meth
end

let menuSeparatorRenderer : (menuSeparator menuSeparatorRenderer t) constr = 
  Js.Unsafe.variable "goog.ui.MenuSeparatorRenderer"
