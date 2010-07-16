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

(**
   Link renderer for {@link goog.ui.Button}s.  Link buttons can contain
   almost arbitrary HTML content, will flow like inline elements, but can be
   styled like block-level elements.
*)
val linkButtonRenderer : (#Button.button linkButtonRenderer t) constr
  
