(**
   OClosure Project - 2010

   Class goog.ui.ToolbarMenuButtonRenderer
   
   @author Oran Charles
   @version 0.2
*)
open Js
open MenuButtonRenderer
open ToolbarMenuButton

class type ['but] toolbarMenuButtonRenderer = object
  inherit ['but] menuButtonRenderer
  method getCssClass : js_string t meth
end

let tmp = Js.Unsafe.variable "goog.ui.ToolbarMenuButtonRenderer"
let toolbarMenuButtonRenderer : (toolbarMenuButton #toolbarMenuButtonRenderer t) constr = 
  tmp
