(**
   OClosure Project - 2010
   Class goog.ui.DimensionPicker
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

class type dimensionPicker = object
  inherit Control.control

  method disposeInternal : unit meth

  method enterDocument : unit meth

  method exitDocument : unit meth

  method getSize : Math.size t meth

  method getValue : Math.size t meth

  method handleKeyEvent_ : Events.keyEvent t -> bool t meth

  method setValue : int -> int opt -> unit meth
end

and dimensionPickerRenderer = object
  inherit Control.controlRenderer

  method canDecorate : Dom_html.element t -> bool t meth

  method createDom_ : dimensionPicker t -> Dom_html.element t meth

  method decorate_ : dimensionPicker t -> Dom_html.element t 
    -> Dom_html.element t meth

  method getCssClass : js_string t meth

  method getGridOffsetX : dimensionPicker t -> int meth

  method getGridOffsetY : dimensionPicker t -> int meth

  method getMouseMoveElement : dimensionPicker t -> Dom_html.element t meth

  method initializeDom : dimensionPicker t -> unit meth

  method positionMouseCatcher : dimensionPicker t -> unit meth

  method setHighlightedSize : dimensionPicker t -> int -> int -> unit meth

  method updateSize : dimensionPicker t -> Dom_html.element t -> unit meth
end

let dimensionPicker : (dimensionPickerRenderer t opt -> Gdom.domHelper t opt -> dimensionPicker t) constr = 
  Js.Unsafe.variable "goog.ui.DimensionPicker"

let dimensionPickerRenderer : (dimensionPickerRenderer t) constr = 
  Js.Unsafe.variable "goog.ui.DimensionPickerRenderer"
