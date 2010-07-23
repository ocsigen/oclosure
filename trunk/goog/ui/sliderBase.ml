(**
   OClosure Project - 2010

   Class goog.ui.SliderBase

   @author Oran Charles
   @version 0.2
 *)
open Component
open Js 

module SliderBase = struct 
  module Orientation = struct
    let _VERTICAL = Js.string "vertical"
    let _HORIZONTAL = Js.string "horizontal"
  end
end

class type sliderBase = object
  inherit component
  method createDom : unit meth
  method decorateInternal : #Dom_html.element t -> unit meth
  method disposeInternal : unit meth
  method enterDocument : unit meth
  method getBlockIncrement : float t meth
  method getExtent : float t meth
  method getExtentThumb : Dom_html.element t meth
  method getMaximum : float t meth
  method getMinimum : float t meth
  method getMoveToPointEnabled : bool t meth
  method getOrientation : js_string t meth
  method getStep : float opt meth
  method getUnitIncrement : float t meth
  method getValue : float t meth
  method getValueThumb : Dom_html.element t meth
  method moveThumbs : float -> unit meth
  method setBlockIncrement : float -> unit meth
  method setExtent : float -> unit meth
  method setMaximum : float -> unit meth
  method setMinExtent : float -> unit meth
  method setMinimum : float -> unit meth
  method setMoveToPointEnabled : bool t -> unit meth
  method setOrientation : js_string t -> unit meth
  method setStep : float opt -> unit meth
  method setUnitIncrement : float -> unit meth
  method setValue : float -> unit meth
  method setValueAndExtent : float -> float -> unit meth
  method setVisible : bool t -> unit meth
end

let sliderBase : (Gdom.domHelper t opt -> sliderBase t) constr =
  Js.Unsafe.variable "goog.ui.SliderBase"
    
