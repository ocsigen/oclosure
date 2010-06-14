
(** 
    * OClosure Project - 2010
    * Class goog.ui.OfflineStatusCard.EventType, goog.ui.OfflineStatusCard
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open ProgressBar  (* goog.ui.ProgressBar *)
open EventType  (* goog.ui.Component.EventType *)
open Component  (* goog.ui.Component *)
open Style  (* goog.style *)
open Map  (* goog.structs.Map *)
open StatusType  (* goog.gears.StatusType *)
open EventType  (* goog.events.EventType *)
open Dom  (* goog.dom *)

class external offlineStatusCard 
inherit component: domHelper(* opt? *) ->  <
getProgressBar : progressBar;
getStatus : statusType;
setStatus : statusType -> unit;
createDom : unit;
enterDocument : unit;
createAdditionalDom : unit;
update : unit;
configureStatusElement : statusType -> unit;
configureActionLinks : statusType -> unit;
configureProgressElement : statusType -> unit;
shouldShowProgressBar : statusType -> boolean;
updateProgressStatus : unit;
getProgressStatusMessage : string;
getStatusMessage : statusType -> string;
getActions : statusType -> (* Array[object] *)(* opt? *);
createActionObject : string -> string -> object;
getAdditionalMessage : statusType -> string;
disposeInternal : unit;
> = "goog.ui.OfflineStatusCard"
