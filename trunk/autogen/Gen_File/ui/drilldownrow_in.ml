
(** 
    * OClosure Project - 2010
    * Class goog.ui.DrilldownRow
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Component  (* goog.ui.Component *)
open Events  (* goog.events *)
open Classes  (* goog.dom.classes *)
open Dom  (* goog.dom *)

class external drilldownRow 
inherit component: object(* opt? *) ->  <
sampleProperties : unit;
enterDocument : unit;
createDom : unit;
canDecorate : element -> boolean;
addChildAt : drilldownRow -> number -> boolean(* opt? *) -> unit;
removeChild : unit;
disposeInternal : unit;
render : unit;
findIndex : number;
isExpanded : boolean;
setExpanded : boolean -> unit;
getDepth : number;
decorate : drilldownRow -> unit;
> = "goog.ui.DrilldownRow"
