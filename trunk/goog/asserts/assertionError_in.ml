(** 
    * OClosure Project - 2010
    * Class goog.asserts.AssertionError
    *
    * Utilities to check the preconditions, postconditions and 
    * invariants runtime.
    * Methods in this package should be given special treatment by 
    * the compiler for type-inference.
    * @extends {goog.debug.Error}
    *
    * @author Bozman Cagdas 
    * @version 0.1
*)

(** The items to substitute into the pattern **)
type array = JSOO.obj
    
(** Type condition **)
type condition

class external assertError : string -> array ->
  < 
  (** Checks if the condition evaluates to true 
      if goog.asserts.ENABLE_ASSERTS is true. *)
    asserts: condition -> string -> unit;
 
 > = "goog.ui.AssertionError"
