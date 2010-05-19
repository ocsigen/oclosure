
(** 
    * OClosure Project - 2010
    * Class goog.ui.OfflineStatusComponent.StatusClassNames, goog.ui.OfflineStatusComponent
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Popup  (* goog.ui.Popup *)
open Component  (* goog.ui.Component *)
open Overflow  (* goog.positioning.Overflow *)
open Corner  (* goog.positioning.Corner *)
open AnchoredPosition  (* goog.positioning.AnchoredPosition *)
open Positioning  (* goog.positioning *)
open StatusType  (* goog.gears.StatusType *)
open EventType  (* goog.events.EventType *)
open Classes  (* goog.dom.classes *)

class external offlineStatusComponent 
inherit component: domHelper(* opt? *) ->  <
getStatus : statusType;
setStatus : statusType -> unit;
isStatusDifferent : statusType -> boolean;
setInstallDialog : offlineInstallDialog -> unit;
getInstallDialog : offlineInstallDialog;
setStatusCard : offlineStatusCard -> unit;
getStatusCard : offlineStatusCard;
createDom : unit;
enterDocument : unit;
update : unit;
getMessageInfo : statusType -> object;
performAction : unit;
performEnableAction : unit;
performStatusAction : unit;
insertCardElement : offlineStatusCard -> unit;
getPopupInternal : popup;
disposeInternal : unit;
> = "goog.ui.OfflineStatusComponent"
