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

let tmp = Tools.variable "[oclosure]goog.ui.ToolbarMenuButtonRenderer[/oclosure]"
let toolbarMenuButtonRenderer : (toolbarMenuButton #toolbarMenuButtonRenderer t) constr = 
  tmp
