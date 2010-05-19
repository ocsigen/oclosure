
(** 
    * OClosure Project - 2010
    * Class goog.ui.NativeButtonRenderer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open State  (* goog.ui.Component.State *)
open ButtonRenderer  (* goog.ui.ButtonRenderer *)
open EventType  (* goog.events.EventType *)
open Classes  (* goog.dom.classes *)

class external nativeButtonRenderer 
inherit buttonRenderer:  <
getAriaRole : unit;
createDom : control -> element;
canDecorate : element -> boolean;
decorate : unit;
initializeDom : unit;
setAllowTextSelection : unit;
setRightToLeft : unit;
isFocusable : unit;
setFocusable : unit;
setState : unit;
getValue : unit;
setValue : unit;
updateAriaState : unit;
> = "goog.ui.NativeButtonRenderer"
