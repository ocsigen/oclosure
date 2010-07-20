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

  (**
     Returns the CSS class to be applied to the root element of buttons rendered using this renderer.
     @return Renderer-specific CSS class.
  *)
  method getCssClass : js_string t meth

end

(**
   Toolbar-specific renderer for goog.ui.Button, based on goog.ui.CustomButtonRenderer.
   @constructor
*)
let tmp = Js.Unsafe.variable "goog.ui.ToolbarButtonRenderer"
let toolbarButtonRenderer : (ToolbarButton.toolbarButton #toolbarButtonRenderer t) constr =
  tmp
