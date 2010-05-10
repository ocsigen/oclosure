(*
 * Module goog.positioning.AbstractPosition
 * Abstract position object. Encapsulates position and overflow handling.
 * Bozman Cagdas - 2010
 *)
 
(** JSOO.obj **)
type element = JSOO.obj
(** goog.positioning.Corner **)
type corner = 
(*goog.positioning.Corner = {
  TOP_LEFT: 0,
  TOP_RIGHT: 2,
  BOTTOM_LEFT: 1,
  BOTTOM_RIGHT: 3,
  TOP_START: 4,
  TOP_END: 6,
  BOTTOM_START: 5,
  BOTTOM_END: 7
};
*)

(** goog.math.Box **)
type box
(** goog.math.Size **)
type size

class external abstractPosition :
  < 
  (**  Repositions the element. Abstract method, should be overloaded **)
  reposition: element -> corner -> (*opt args box -> size ->*) unit
  > = "goog.positioning.AbstractPosition"
