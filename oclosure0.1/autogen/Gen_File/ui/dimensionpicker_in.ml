
(** 
    * OClosure Project - 2010
    * Class goog.ui.DimensionPicker
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Registry  (* goog.ui.registry *)
open DimensionPickerRenderer  (* goog.ui.DimensionPickerRenderer *)
open Control  (* goog.ui.Control *)
open Size  (* goog.math.Size *)
open EventType  (* goog.events.EventType *)

class external dimensionPicker 
inherit control: dimensionPickerRenderer(* opt? *) -> domHelper(* opt? *) ->  <
enterDocument : unit;
exitDocument : unit;
disposeInternal : unit;
handleMouseMove : browserEvent -> unit;
handleWindowResize : event -> unit;
handleKeyEvent : keyEvent -> boolean;
getSize : size;
getValue : size;
setValue : number -> number(* opt? *) -> unit;
> = "goog.ui.DimensionPicker"
