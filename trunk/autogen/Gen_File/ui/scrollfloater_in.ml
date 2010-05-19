
(** 
    * OClosure Project - 2010
    * Class goog.ui.ScrollFloater
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Component  (* goog.ui.Component *)
open Style  (* goog.style *)
open Object  (* goog.object *)
open EventType  (* goog.events.EventType *)
open Classes  (* goog.dom.classes *)
open Dom  (* goog.dom *)

class external scrollFloater 
inherit component: element(* opt? *) -> domHelper(* opt? *) ->  <
createDom : unit;
decorateInternal : element -> unit;
enterDocument : unit;
disposeInternal : unit;
setScrollingEnabled : boolean -> unit;
isScrollingEnabled : boolean;
isFloating : boolean;
> = "goog.ui.ScrollFloater"
