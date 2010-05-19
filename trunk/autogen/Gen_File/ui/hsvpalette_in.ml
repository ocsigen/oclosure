
(** 
    * OClosure Project - 2010
    * Class goog.ui.HsvPalette
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open EventType  (* goog.ui.Component.EventType *)
open Component  (* goog.ui.Component *)
open Style  (* goog.style *)
open InputHandler  (* goog.events.InputHandler *)
open EventType  (* goog.events.EventType *)
open Event  (* goog.events.Event *)
open Events  (* goog.events *)
open DomHelper  (* goog.dom.DomHelper *)
open Dom  (* goog.dom *)
open Color  (* goog.color *)

class external hsvPalette 
inherit component: domHelper(* opt? *) -> string(* opt? *) -> string(* opt? *) ->  <
getColor : string;
getAlpha : number;
updateInput : unit;
setColor : string -> unit;
setHsv : number(* opt? *) -> number(* opt? *) -> number(* opt? *) -> unit;
canDecorate : element -> boolean;
createDom : unit;
enterDocument : unit;
disposeInternal : unit;
> = "goog.ui.HsvPalette"
