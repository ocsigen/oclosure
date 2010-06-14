
(** 
    * OClosure Project - 2010
    * Class goog.ui.CccButton
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open DeprecatedButton  (* goog.ui.DeprecatedButton *)
open Event  (* goog.events.Event *)
open Events  (* goog.events *)
open Classes  (* goog.dom.classes *)
open Dom  (* goog.dom *)

class external cccButton 
inherit deprecatedButton: string(* opt? *) -> boolean(* opt? *) ->  <
getNextUniqueId : string;
getEnabledClass : string;
getDisabledClass : string;
setCaption : string -> unit;
setEnabled : boolean -> unit;
render : element(* opt? *) -> unit;
decorate : element -> unit;
> = "goog.ui.CccButton"
