(*
 * Module goog.asserts.AssertionError
 * Utilities to check the preconditions, postconditions and invariants runtime.
 * Methods in this package should be given special treatment by 
 * the compiler for type-inference.
 * @extends {goog.debug.Error}
 * Bozman Cagdas - 2010
 *)

(** The items to substitute into the pattern **)
type array = JSOO.obj

type condition

class external assertError : string -> array ->
  < 
  (** Checks if the condition evaluates to true 
    * if goog.asserts.ENABLE_ASSERTS is true.
    **)
    asserts: condition -> string -> unit;
 (*
 (** **)
   assertArray: ;
   
 (** **)
   assertFunction: ;
   
 (** **)
   assertInstanceof: ;
   
 (** **)
   assertNumber: ;
   
 (** **)
   assertObject: ;
   
 (** **)
   assertString: ;*)
 > (*= ""*)
