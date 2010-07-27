(**
   OClosure Project - 2010
   
   Class goog.ui.ToolbarButtonRenderer
   
   @author Oran Charles
   @version 0.2
*)
open Js
open CustomButtonRenderer

class type ['but] toolbarButtonRenderer = object 
  inherit ['but] customButtonRenderer
  method getCssClass : js_string t meth
end

let tmp = Tools.variable "[oclosure]goog.ui.ToolbarButtonRenderer[/oclosure]"
let toolbarButtonRenderer : (ToolbarButton.toolbarButton #toolbarButtonRenderer t) constr =
  tmp
