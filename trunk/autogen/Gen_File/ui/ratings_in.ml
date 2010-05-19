
(** 
    * OClosure Project - 2010
    * Class goog.ui.Ratings.EventType, goog.ui.Ratings
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Component  (* goog.ui.Component *)
open EventType  (* goog.events.EventType *)
open Classes  (* goog.dom.classes *)
open A11y  (* goog.dom.a11y *)

class external ratings 
inherit component: (* Array[string] *)(* opt? *) -> domHelper(* opt? *) ->  <
decorateInternal : element -> unit;
enterDocument : unit;
exitDocument : unit;
disposeInternal : unit;
getCssClass : string;
setSelectedIndex : number -> unit;
getSelectedIndex : number;
getValue : string(* opt? *);
getHighlightedIndex : number;
getHighlightedValue : string(* opt? *);
setRatings : (* Array[string] *) -> unit;
getRatings : (* Array[string] *);
setAttachedFormField : hTMLSelectElement(* | hTMLInputElement *) -> unit;
getAttachedFormField : hTMLSelectElement(* | hTMLInputElement| null *);
> = "goog.ui.Ratings"
