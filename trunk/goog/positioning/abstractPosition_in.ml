(*
 * Module goog.positioning.AbstractPosition
 * Abstract position object. Encapsulates position and overflow handling.
 * Bozman Cagdas - 2010
 *)
 
(** JSOO.obj **)
type element = JSOO.obj
(** goog.positioning.Corner **)
type corner 
(** goog.math.Box **)
type box
(** goog.math.Size **)
type size

class external abstractPosition :
  < 
  (**  Repositions the element. Abstract method, should be overloaded **)
  reposition: element -> corner -> box -> size -> unit
  >
