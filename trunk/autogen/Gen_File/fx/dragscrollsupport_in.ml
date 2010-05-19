
(** 
    * OClosure Project - 2010
    * Class goog.fx.DragScrollSupport
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Style  (* goog.style *)
open Coordinate  (* goog.math.Coordinate *)
open EventType  (* goog.events.EventType *)
open EventHandler  (* goog.events.EventHandler *)
open Dom  (* goog.dom *)
open Timer  (* goog.Timer *)
open Disposable  (* goog.Disposable *)

class external dragScrollSupport 
inherit disposable: element -> number(* opt? *) -> boolean(* opt? *) ->  <
setConstrainScroll : boolean -> unit;
onMouseMove : event -> unit;
calculateScrollDelta : number -> number -> number -> number;
disposeInternal : unit;
> = "goog.fx.DragScrollSupport"
