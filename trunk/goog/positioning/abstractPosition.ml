(** 
    * OClosure Project - 2010
    * Class goog.positioning.AbstractPosition
    * 
    * Abstract position object. Encapsulates position and overflow handling.
    * 
    * @author Bozman Cagdas
    * @version 0.1
*)

(** JSOO.obj **)
type element = Dom_html.element

(** goog.math.Box **)
type box

(** goog.math.Size **)
type size

type corner

open Js
class type abstractPosition = object
  (**  Repositions the element. Abstract method, should be overloaded **)
  method reposition: element -> corner -> box (*->  size*) -> unit meth
end

let abstractPosition : abstractPosition t constr =
  Js.Unsafe.variable "goog.positioning.AbstractPosition"

