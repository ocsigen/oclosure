(** 
    OClosure Project - 2010
    
    Class goog.ui.Gauge

    @author : Oran Charles
    @version 0.2
    @see 'goog.ui.Component'
*)
open Component
open DomHelper
open Font
open GaugeTheme
open Js

class type gaugeColoredRange = object
end

let gaugeColoredRange : (int -> int -> js_string t -> gaugeColoredRange t) constr =  
  Tools.variable "[oclosure]goog.ui.GaugeColoredRange[/oclosure]"

class type gauge = object
  inherit component

  method getMinimum : int meth

  method setMinimum : int -> unit meth

  method getMaximum : int meth

  method setMaximum : int -> unit meth

  method setValue : int -> js_string t opt -> unit meth

  method setTicks : int -> int -> unit meth

  method setMajorTickLabels : string js_array t -> unit meth

  method setTitleTop : js_string t -> unit meth

  method setTitleBottom : js_string t -> unit meth

  method setTitleFont : font t -> unit meth

  method setValueFont : font t -> unit meth

  method setTheme : gaugeTheme t -> unit meth

  method addBackgroundColor : int -> int -> js_string t -> unit meth

  method createDom : unit meth

  method redraw : unit meth

  method enterDocument : unit meth
    
  method exitDocument : unit meth 

  method disposeInternal : unit meth
    
end   

let gauge : (int -> int -> domHelper t opt -> gauge t) constr =
  Tools.variable "[oclosure]goog.ui.Gauge[/oclosure]"

module Gauge = struct 
  let _RED = Js.string "#ffc0c0"

  let _GREEN = Js.string "#c0ffc0"
    
  let _YELLOW = Js.string "#ffffa0"
    
  let _FACTOR_RADIUS_FROM_SIZE = 0.45

  let _FACTOR_MAIN_AREA = 0.9

  let _FACTOR_COLOR_RADIUS = 0.75

  let _FACTOR_MAJOR_TICKS = 0.8

  let _FACTOR_MINOR_TICKS = 0.9

  let _FACTOR_NEEDLE_FRONT = 0.95

  let _FACTOR_NEEDLE_BACK = 0.3

  let _FACTOR_NEEDLE_WIDTH = 0.07

  let _FACTOR_NEEDLE_HINGE = 0.15

  let _FACTOR_TITLE_FONT_SIZE = 0.16

  let _FACTOR_TITLE_OFFSET = 0.35

  let _FACTOR_VALUE_FONT_SIZE = 0.18

  let _FACTOR_TICK_LABEL_FONT_SIZE = 0.14

  let _FACTOR_VALUE_OFFSET = 0.75

  let _TITLE_FONT_NAME = Js.string "arial"

  let _NEEDLE_MOVE_MAX_STEP = 0.02

  let _NEEDLE_MOVE_TIME = 400

  let _MAX_EXCEED_POSITION_POSITION = 0.02
end

