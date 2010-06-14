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
open Js

open Js
class type assertError = object
end

let assertError : (js_string t -> string array -> assertError t) constr =
  Js.Unsafe.variable "goog.ui.AssertionError"
