
(** 
    * OClosure Project - 2010
    * Class goog.ui.BidiInput
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Component  (* goog.ui.Component *)
open Bidi  (* goog.i18n.bidi *)
open InputHandler  (* goog.events.InputHandler *)
open Events  (* goog.events *)

class external bidiInput 
inherit component: domHelper(* opt? *) ->  <
decorateInternal : element -> unit;
createDom : unit;
getDirection : string(* opt? *);
setValue : string -> unit;
getValue : string;
disposeInternal : unit;
> = "goog.ui.BidiInput"
