(** 
   OClosure Project - 2010
   Class goog.ui.Button
   
   @author Cardoso Gabriel
   @version 0.2
*)

module Side = struct
   type side =   
     (** Neither side. *)
       NONE
     (** Left for LTR, right for RTL. *)
     | START
     (** Right for LTR, left for RTL. *) 
     | END
     (** Both sides. *)
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

  method setValue : js_string t -> unit meth
end

and buttonRenderer = object
  inherit Control.controlRenderer

  method createDom_ : button t -> Dom_html.element t meth

  method decorate_ : button t -> Dom_html.element t -> Dom_html.element t meth

  method getAriaRole : Gdom.A11y.role_pre optdef -> unit meth

  method getCssClass : js_string t meth

  method getTooltip : Dom_html.element t -> js_string t optdef meth

  method getValue : js_string t optdef meth
end

let buttonRenderer : buttonRenderer t constr = 
  Js.Unsafe.variable "goog.ui.ButtonRenderer"


let button : (ControlContent.controlContent -> buttonRenderer t opt -> Gdom.domHelper t opt -> button t) constr =
  Js.Unsafe.variable "goog.ui.Button"

