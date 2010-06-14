
(** 
    * OClosure Project - 2010
    * Class goog.ui.IframeMask
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Style  (* goog.style *)
open EventTarget  (* goog.events.EventTarget *)
open EventHandler  (* goog.events.EventHandler *)
open Iframe  (* goog.dom.iframe *)
open DomHelper  (* goog.dom.DomHelper *)
open Dom  (* goog.dom *)
open Timer  (* goog.Timer *)
open Disposable  (* goog.Disposable *)

class external iframeMask 
inherit disposable: domHelper(* opt? *) -> pool(* opt? *) ->  <
disposeInternal : unit;
hideMask : unit;
applyMask : unit;
setOpacity : number -> unit;
setZIndex : number -> unit;
setSnapElement : element -> unit;
listenOnTarget : eventTarget -> string -> string -> element(* opt? *) -> unit;
removeHandlers : unit;
> = "goog.ui.IframeMask"
