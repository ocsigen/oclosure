
(** 
    * OClosure Project - 2010
    * Class goog.testing.PerformanceTable
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open PerformanceTimer  (* goog.testing.PerformanceTimer *)
open Dom  (* goog.dom *)

class external performanceTable : element -> performanceTimer(* opt? *) -> number(* opt? *) ->  <
getTimer : performanceTimer;
run : function -> string(* opt? *) -> unit;
reportError : (* any = "*" *) -> unit;
> = "goog.testing.PerformanceTable"
