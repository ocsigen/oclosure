
(** 
    * OClosure Project - 2010
    * Class goog.gears.UrlCapture.EventType, goog.gears.UrlCapture.Event, goog.gears.UrlCapture
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Gears  (* goog.gears *)
open EventTarget  (* goog.events.EventTarget *)
open Event  (* goog.events.Event *)
open Logger  (* goog.debug.Logger *)
open Uri  (* goog.Uri *)

class external urlCapture 
inherit eventTarget: string -> string(* opt? *) -> gearsResourceStore(* opt? *) ->  <
exists : boolean;
removeStore : unit;
rename : string(* | uri *) -> string(* | uri *) -> unit;
capture : (* Array[string(* | uri *)] *) -> number;
abort : number -> unit;
isCaptured : string(* | uri *) -> boolean;
remove : string(* | uri *) -> unit;
> = "goog.gears.UrlCapture"

class external event 
inherit event: eventType -> number -> string(* | uri(* opt? *) *) -> (* Array[string(* | uri *)] *)(* opt? *) ->  <
> = "goog.gears.UrlCapture.Event"
