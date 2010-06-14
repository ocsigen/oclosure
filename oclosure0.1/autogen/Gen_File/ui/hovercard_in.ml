
(** 
    * OClosure Project - 2010
    * Class goog.ui.HoverCard.TriggerEvent, goog.ui.HoverCard.EventType, goog.ui.HoverCard
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open AdvancedTooltip  (* goog.ui.AdvancedTooltip *)
open Events  (* goog.events *)
open Dom  (* goog.dom *)

class external hoverCard 
inherit advancedTooltip: function(* | object *) -> boolean(* opt? *) -> domHelper(* opt? *) ->  <
disposeInternal : unit;
triggerForElement : element -> abstractPosition(* opt? *) -> object(* opt? *) -> unit;
onTrigger : triggerEvent(* opt? *) -> boolean;
cancelTrigger : unit;
onCancelTrigger : unit;
getAnchorElement : element;
handleMouseOver : browserEvent -> unit;
handleMouseOutAndBlur : browserEvent -> unit;
maybeShow : element -> abstractPosition(* opt? *) -> unit;
setMaxSearchSteps : number -> unit;
> = "goog.ui.HoverCard"

class external triggerEvent 
inherit event: eventType -> hoverCard -> element -> object(* opt? *) ->  <
> = "goog.ui.HoverCard.TriggerEvent"
