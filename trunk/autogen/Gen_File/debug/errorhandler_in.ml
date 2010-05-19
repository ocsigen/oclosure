
(** 
    * OClosure Project - 2010
    * Class goog.debug.ErrorHandler
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Trace  (* goog.debug.Trace *)
open Debug  (* goog.debug *)

class external errorHandler : function ->  <
protectEntryPoint : function -> boolean(* opt? *) -> function(* opt? *);
getProtectedFunction : function -> boolean -> function(* opt? *);
protectWindowSetTimeout : boolean(* opt? *) -> unit;
protectWindowSetInterval : boolean(* opt? *) -> unit;
> = "goog.debug.ErrorHandler"
