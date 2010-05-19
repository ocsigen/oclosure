
(** 
    * OClosure Project - 2010
    * Class goog.testing.AsyncTestCase.ControlBreakingException, goog.testing.AsyncTestCase
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Asserts  (* goog.testing.asserts *)
open Test  (* goog.testing.TestCase.Test *)
open TestCase  (* goog.testing.TestCase *)

class external asyncTestCase 
inherit testCase: string(* opt? *) ->  <
> = "goog.testing.AsyncTestCase"

class external controlBreakingException :  <
createAndInstall : string(* opt? *) -> asyncTestCase;
waitForAsync : string(* opt? *) -> unit;
continueTesting : unit;
doAsyncError : string(* | error(* opt? *) *) -> unit;
runTests : unit;
cycleTests : unit;
finalize : unit;
enableDebugLogging : unit;
> = "goog.testing.AsyncTestCase.ControlBreakingException"
