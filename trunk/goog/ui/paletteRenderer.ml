(** 
   OClosure Project - 2010
   Class goog.ui.PaletteRenderer
   
   Default renderer for goog.ui.Palettes. Renders the palette as an HTML table 
   wrapped in a DIV, with one palette item per cell:
   ...Item 0...	    ...Item 1...      ...      
   ...
    
   @author Cardoso Gabriel
   @version 0.2
*)
open Js

open ControlRenderer

class type paletteRenderer = object
    inherit controlRenderer
    method canDecorate : element t -> bool t meth
end

let paletteRenderer : paletteRenderer t constr = 
  Js.Unsafe.variable "goog.ui.PaletteRenderer"
