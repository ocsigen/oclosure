
(** 
    * OClosure Project - 2010
    * Class goog.testing.PerformanceTimer
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Math  (* goog.math *)
open Array  (* goog.array *)

class external performanceTimer : number(* opt? *) -> number(* opt? *) ->  <
getNumSamples : number;
setNumSamples : number -> unit;
getTimeoutInterval : number;
setTimeoutInterval : number -> unit;
setDiscardOutliers : boolean -> unit;
isDiscardOutliers : boolean;
run : function -> object;
> = "goog.testing.PerformanceTimer"
