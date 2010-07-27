(** 
   OClosure Project - 2010
   Class goog.ui.Button
   
   @author Cardoso Gabriel
   @version 0.2
*)

module Side = struct
   type side =   
       NONE
     | START
     | END
     | BOTH
end

open Js
class type button = object
  inherit Control.control

  method disposeInternal : unit meth

  method enterDocument : unit meth

  method getTooltip : js_string t optdef meth

  method getValue : js_string t optdef meth

  method setCollapsed : Side.side -> unit meth

  method setTooltip : js_string t -> unit meth

  method setValue : js_string t opt -> unit meth
end

class type ['but] buttonRenderer = object
  constraint 'but = #button
  inherit ['but] Control.controlRenderer

  method getAriaRole : Gdom.A11y.role_pre optdef meth

  method getCssClass : js_string t meth

  method getTooltip : #Dom_html.element t -> js_string t optdef meth

  method getValue : #Dom_html.element t -> js_string t opt meth
end

let buttonRenderer = Js.Unsafe.variable "goog.ui.ButtonRenderer"
let buttonRenderer : #button buttonRenderer t constr = buttonRenderer

let button = Js.Unsafe.variable "goog.ui.Button"
let button : (ControlContent.controlContent -> button #buttonRenderer t opt -> 
  Gdom.domHelper t opt -> button t) constr = button


