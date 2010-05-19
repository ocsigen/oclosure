
(** 
    * OClosure Project - 2010
    * Class goog.ui.PopupBase.Type, goog.ui.PopupBase.EventType, goog.ui.PopupBase
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Style  (* goog.style *)
open KeyCodes  (* goog.events.KeyCodes *)
open EventType  (* goog.events.EventType *)
open EventTarget  (* goog.events.EventTarget *)
open EventHandler  (* goog.events.EventHandler *)
open Dom  (* goog.dom *)
open Timer  (* goog.Timer *)

class external popupBase 
inherit eventTarget: element(* opt? *) -> type(* opt? *) ->  <
getType : type;
setType : type -> unit;
shouldHideAsync : boolean;
setShouldHideAsync : boolean -> unit;
getElement : element;
setElement : element -> unit;
getAutoHide : boolean;
setAutoHide : boolean -> unit;
getHideOnEscape : boolean;
setHideOnEscape : boolean -> unit;
getEnableCrossIframeDismissal : boolean;
setEnableCrossIframeDismissal : boolean -> unit;
getAutoHideRegion : element;
setAutoHideRegion : element -> unit;
getLastShowTime : number;
getLastHideTime : number;
isVisible : boolean;
isOrWasRecentlyVisible : boolean;
setVisible : boolean -> unit;
reposition : unit;
showPopupElement : unit;
onBeforeShow : boolean;
disposeInternal : unit;
> = "goog.ui.PopupBase"
