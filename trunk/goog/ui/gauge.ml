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

(**
   Information on how to decorate a range in the gauge. This is an internal-only class.
   @param fromValue The range start (minimal) value.
   @param toValue The range end (maximal) value.
   @param backgroundColor Color to fill the range background with.
   @constructor
*)
let gaugeColoredRange : (int -> int -> js_string t -> gaugeColoredRange t) constr =  
  Js.Unsafe.variable "goog.ui.GaugeColoredRange"

class type gauge = object
  inherit component

  (** @return The minimum value of the range. *)
  method getMinimum : int meth

  (** Sets the minimum value of the range
      @param min The minimum value of the range. *)
  method setMinimum : int -> unit meth

  (** @return The maximum value of the range. *)
  method getMaximum : int meth

  (** Sets the maximum number of the range
      @param max The maximum value of the range. *)
  method setMaximum : int -> unit meth

  (** Sets the current value range displayed by the gauge.
      @param value The current value for the gauge. This value determines the position of the needle of the gauge.
      @param opt_formattedValue The string value to show in the gauge. If not specified, no string value will be displayed. *)
  method setValue : int -> js_string t opt -> unit meth

  (** Sets the number of major tick sections and minor tick sections.
      @param majorUnits The number of major tick sections.
      @param minorUnits The number of minor tick sections for each major tick section. *)
  method setTicks : int -> int -> unit meth

  (** Sets the labels of the major ticks.
      @param tickLabels A text label for each major tick value. *)
  method setMajorTickLabels : string js_array t -> unit meth

  (** Sets the top title of the gauge. The top title is displayed above the center.
      @param text The top title text. *)
  method setTitleTop : js_string t -> unit meth

  (** Sets the bottom title of the gauge. The top title is displayed below the center.
      @param text The bottom title text. *)
  method setTitleBottom : js_string t -> unit meth

  (** Sets the font for displaying top and bottom titles.
      @param font The font for titles. *)
  method setTitleFont : font t -> unit meth

  (** Sets the font for displaying the formatted value.
      @param font The font for displaying the value. *) 
  method setValueFont : font t -> unit meth

  (** Sets the color theme for drawing the gauge.
      @param theme The color theme to use. *)
  method setTheme : gaugeTheme t -> unit meth

  (** Set the background color for a range of values on the gauge.
      @param {number} fromValue The lower (start) value of the colored range.
      @param {number} toValue The higher (end) value of the colored range.
      @param {string} color The color name to paint the range with. For example 'red', '#ffcc00' or constants like goog.ui.Gauge.RED. *)
  method addBackgroundColor : int -> int -> js_string t -> unit meth

  (** Creates the DOM representation of the graphics area. *)
  method createDom : unit meth

  (** Redraws the entire gauge. Should be called after theme colors have been changed. *)
  method redraw : unit meth

  (** Called when the component is added to the DOM. *)
  method enterDocument : unit meth
    
  (** Called when the component is removed from the DOM. *)
  method exitDocument : unit meth 

  (** @inheritDoc *)
  method disposeInternal : unit meth
    
end   

(**
   A UI component that displays a gauge.
   A gauge displayes a current value within a round axis that represents a given range. The gauge is built from an external border, and internal border inside it, ticks and labels inside the internal border, and a needle that points to the current value.
   @param width The width in pixels.
   @param height The height in pixels.
   @param opt_domHelper The DOM helper object for the document we want to render in.
   @constructor *)
let gauge : (int -> int -> domHelper t opt -> gauge t) constr =
  Js.Unsafe.variable "goog.ui.Gauge"

module Gauge = struct 
  (** Constant for a background color for a gauge area. *)
  let _RED = Js.string "#ffc0c0"

  (** Constant for a background color for a gauge area. *)
  let _GREEN = Js.string "#c0ffc0"
    
  (** Constant for a background color for a gauge area. *)
  let _YELLOW = Js.string "#ffffa0"
    
  (** The radius of the entire gauge from the canvas size. *)
  let _FACTOR_RADIUS_FROM_SIZE = 0.45

  (** The ratio of internal gauge radius from entire radius. The remaining area is the border around the gauge. *)
  let _FACTOR_MAIN_AREA = 0.9

  (** The ratio of the colored background area for value ranges. The colored area width is computed as InternalRadius * (1 - FACTOR_COLOR_RADIUS) *)
  let _FACTOR_COLOR_RADIUS = 0.75

  (**The ratio of the major ticks length start position, from the radius. The major ticks length width is computed as InternalRadius (1 - FACTOR_MAJOR_TICKS) *)
  let _FACTOR_MAJOR_TICKS = 0.8

  (** The ratio of the minor ticks length start position, from the radius. The minor ticks length width is computed as InternalRadius (1 - FACTOR_MINOR_TICKS) *)
  let _FACTOR_MINOR_TICKS = 0.9

  (** The length of the needle front (value facing) from the internal radius. The needle front is the part of the needle that points to the value. *)
  let _FACTOR_NEEDLE_FRONT = 0.95

  (** The length of the needle back relative to the internal radius. The needle back is the part of the needle that points away from the value. *)
  let _FACTOR_NEEDLE_BACK = 0.3

  (** The width of the needle front at the hinge. This is the width of the curve control point, the actual width is computed by the curve itself. *)
  let _FACTOR_NEEDLE_WIDTH = 0.07

  (** The width (radius) of the needle hinge from the gauge radius. *)
  let _FACTOR_NEEDLE_HINGE = 0.15

  (** The title font size (height) for titles relative to the internal radius. *)
  let _FACTOR_TITLE_FONT_SIZE = 0.16

  (** The offset of the title from the center, relative to the internal radius. *)
  let _FACTOR_TITLE_OFFSET = 0.35

  (** The formatted value font size (height) relative to the internal radius. *)
  let _FACTOR_VALUE_FONT_SIZE = 0.18

  (** The title font size (height) for tick labels relative to the internal radius. *)
  let _FACTOR_TICK_LABEL_FONT_SIZE = 0.14

  (** The offset of the formatted value down from the center, relative to the internal radius. *)
  let _FACTOR_VALUE_OFFSET = 0.75

  (** The font name for title text. *)
  let _TITLE_FONT_NAME = Js.string "arial"

  (** The maximal size of a step the needle can move (percent from size of range). If the needle needs to move more, it will be moved in animated steps, to show a smooth transition between values. *)
  let _NEEDLE_MOVE_MAX_STEP = 0.02

  (** Time in miliseconds for animating a move of the value pointer. *)
  let _NEEDLE_MOVE_TIME = 400

  (** Tolerance factor for how much values can exceed the range (being too low or too high). The value is presented as a position (percentage). *)
  let _MAX_EXCEED_POSITION_POSITION = 0.02

end

