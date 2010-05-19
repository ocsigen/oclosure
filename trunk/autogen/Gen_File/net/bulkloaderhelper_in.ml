
(** 
    * OClosure Project - 2010
    * Class goog.net.BulkLoaderHelper
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Logger  (* goog.debug.Logger *)
open Disposable  (* goog.Disposable *)

class external bulkLoaderHelper 
inherit disposable: (* Array[string(* | uri *)] *) ->  <
getUri : number -> string(* | uri *);
getUris : (* Array[string(* | uri *)] *);
getResponseTexts : (* Array[string] *);
setResponseText : number -> string -> unit;
isLoadComplete : boolean;
disposeInternal : unit;
> = "goog.net.BulkLoaderHelper"
