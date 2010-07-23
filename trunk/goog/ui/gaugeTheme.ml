(** 
    OClosure Project - 2010
    
    Class goog.ui.GaugeTheme

    @author Oran Charles
    @version 0.2
*)
open Js
open Stroke
open Fill

class type gaugeTheme = object 
  method getExternalBorderStroke : stroke t meth

  method getExternalBorderFill : int -> int -> float -> fill t meth

  method getInternalBorderStroke : stroke t meth

  method getInternalBorderFill : int -> int -> float -> fill t meth

  method getMajorTickStroke : stroke t meth

  method getMinorTickStroke : stroke t meth

  method getHingeStroke : stroke t meth

  method getHingeFill : int -> int -> float -> fill t meth

  method getNeedleStroke : stroke t meth

  method getNeedleFill : int -> int -> float -> fill t meth

  method getTitleColor : js_string t meth

  method getValueColor : js_string t meth

  method getTickLabelColor : js_string t meth

end

let gaugeTheme : gaugeTheme t constr =
  Js.Unsafe.variable "goog.ui.GaugeTheme"
