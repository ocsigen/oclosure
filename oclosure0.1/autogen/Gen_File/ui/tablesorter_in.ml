
(** 
    * OClosure Project - 2010
    * Class goog.ui.TableSorter.EventType, goog.ui.TableSorter
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Component  (* goog.ui.Component *)
open EventType  (* goog.events.EventType *)
open Events  (* goog.events *)
open Classes  (* goog.dom.classes *)
open TagName  (* goog.dom.TagName *)
open Dom  (* goog.dom *)
open Array  (* goog.array *)

class external tableSorter 
inherit component: domHelper(* opt? *) ->  <
canDecorate : unit;
enterDocument : unit;
getDefaultSortFunction : (* function *);
setDefaultSortFunction : (* function *) -> unit;
getSortFunction : number -> (* function *);
setSortFunction : number -> (* function *) -> unit;
sort : number -> boolean(* opt? *) -> unit;
numericSort : (* any = "*" *) -> (* any = "*" *) -> number;
alphaSort : (* any = "*" *) -> (* any = "*" *) -> number;
createReverseSort : (* function *) -> (* function *);
> = "goog.ui.TableSorter"
