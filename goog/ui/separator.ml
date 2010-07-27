(**
   OClosure Project - 2010
   Class goog.ui.Separator
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

class type separator = object
  inherit Control.control
  method enterDocument : unit meth
end

class type ['sep] menuSeparatorRenderer = object
  inherit ['sep] Control.controlRenderer

  method createDom : 'sep t -> Dom_html.element t meth

  method decorate : 'sep t -> #Dom_html.element t -> Dom_html.element t meth

  method getCssClass : js_string t meth

  method setContent : #Dom_html.element  t -> ControlContent.controlContent 
    -> unit meth
end

class type menuSeparator = object
  inherit separator
end

let menuSeparator : (Gdom.domHelper t opt -> menuSeparator t) constr = 
  Js.Unsafe.variable "goog.ui.MenuSeparator"

let tmp = Js.Unsafe.variable "goog.ui.MenuSeparatorRenderer"
let menuSeparatorRenderer : 
    (#menuSeparator menuSeparatorRenderer t) constr = tmp
  

let tmp = Js.Unsafe.variable "goog.ui.Separator"
let separator : (separator #menuSeparatorRenderer t opt -> Gdom.domHelper t opt 
  -> separator t) constr = tmp
