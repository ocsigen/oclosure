
(** 
    * OClosure Project - 2010
    * Class goog.ui.DeprecatedButton
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open EventTarget  (* goog.events.EventTarget *)
open Event  (* goog.events.Event *)
open Events  (* goog.events *)
open Dom  (* goog.dom *)

class external deprecatedButton 
inherit eventTarget: string(* opt? *) ->  <
getNextUniqueId : string;
eventType : unit;
getCaption : string(* opt? *);
setCaption : string -> unit;
getTooltip : string(* opt? *);
setTooltip : string -> unit;
getValue : object;
setValue : object -> unit;
getEnabled : boolean;
setEnabled : boolean -> unit;
getClass : string;
getElement : element;
getId : string;
isRendered : boolean;
render : element(* opt? *) -> unit;
decorate : element -> unit;
disposeInternal : unit;
> = "goog.ui.DeprecatedButton"
