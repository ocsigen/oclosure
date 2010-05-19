
(** 
    * OClosure Project - 2010
    * Class goog.testing.ContinuationTestCase.Test, goog.testing.ContinuationTestCase.Step, goog.testing.ContinuationTestCase
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Asserts  (* goog.testing.asserts *)
open Test  (* goog.testing.TestCase.Test *)
open TestCase  (* goog.testing.TestCase *)
open EventHandler  (* goog.events.EventHandler *)
open Array  (* goog.array *)

class external continuationTestCase 
inherit testCase: string(* opt? *) ->  <
runTests : unit;
finalize : unit;
cycleTests : unit;
waitForTimeout : function -> number(* opt? *) -> unit;
waitForEvent : eventTarget(* | eventTarget *) -> string -> function -> unit;
waitForCondition : function -> function -> number(* opt? *) -> number(* opt? *) -> unit;
> = "goog.testing.ContinuationTestCase"

class external test 
inherit test: test -> test -> test ->  <
getError : error;
setError : error -> unit;
getCurrentPhase : (* Array[test] *);
addStep : step -> unit;
cancelCurrentPhase : unit;
cancelTestPhase : unit;
> = "goog.testing.ContinuationTestCase.Test"

class external step 
inherit test: string -> function -> object(* opt? *) ->  <
setTimeout : function -> number -> unit;
clearTimeout : unit;
> = "goog.testing.ContinuationTestCase.Step"
