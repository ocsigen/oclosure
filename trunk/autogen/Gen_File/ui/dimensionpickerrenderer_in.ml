
(** 
    * OClosure Project - 2010
    * Class goog.ui.DimensionPickerRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open ControlRenderer  (* goog.ui.ControlRenderer *)
open Style  (* goog.style *)
open Bidi  (* goog.i18n.bidi *)
open TagName  (* goog.dom.TagName *)
open Dom  (* goog.dom *)

class external dimensionPickerRenderer 
inherit controlRenderer:  <
canDecorate : element -> boolean;
decorate : dimensionPicker -> element -> element;
updateSize : dimensionPicker -> element -> unit;
createDom : dimensionPicker -> element;
initializeDom : dimensionPicker -> unit;
getMouseMoveElement : dimensionPicker -> element;
getGridOffsetX : dimensionPicker -> number -> number;
getGridOffsetY : dimensionPicker -> number -> number;
setHighlightedSize : dimensionPicker -> number -> number -> unit;
positionMouseCatcher : dimensionPicker -> unit;
getCssClass : string;
> = "goog.ui.DimensionPickerRenderer"
