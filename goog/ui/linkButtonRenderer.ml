(**
   OClosure Project - 2010
   Class goog.ui.LinkButtonRenderer
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type ['but] linkButtonRenderer = object
  inherit ['but] FlatButtonRenderer.flatButtonRenderer

  method getCssClass : js_string t meth
end

let tmp = Tools.variable "[oclosure]goog.ui.LinkButtonRenderer[/oclosure]"
let linkButtonRenderer : (#Button.button linkButtonRenderer t) constr = tmp
  
