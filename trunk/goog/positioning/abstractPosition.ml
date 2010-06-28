(** 
    * OClosure Project - 2010
    * Class goog.positioning.AbstractPosition
    * 
    * Abstract position object. Encapsulates position and overflow handling.
    * 
    * @author Bozman Cagdas
    * @version 0.1
*)

(** goog.math.Box **)
type box = Math.Box.box

(** goog.math.Size **)
type size = Math.Size.size

type corner (*= Positioning.Corner.t*)

open Js
class type abstractPosition = object
  (**  Repositions the element. Abstract method, should be overloaded **)
  method reposition: Dom_html.element t -> corner -> box t opt -> size t opt -> unit meth
end

let abstractPosition : abstractPosition t constr =
  Js.Unsafe.variable "goog.positioning.AbstractPosition"

