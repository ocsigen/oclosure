(** 
    * OClosure Project - 2010
    * Class goog.ui.Bubble
    *
    * The Bubble provides a general purpose bubble implementation 
    * that can be anchored to a particular element and
    * displayed for a period of time.
    * 
    * @author Bozman Cagdas
    * @version 0.1
*)

(** JSOO.obj **)
type element = Dom.element

(** goog.ui.Popup.AnchoredPosition **)
type anchoredPosition

(** goog.positioning.Corner **)
type corner 

(** goog.positioning.AbstractPosition **)
type abstractPosition 

(** Number **)
type number

open Js
class type bubble = object
  (** Attaches the bubble to an anchor element. 
      Computes the positioning and orientation of the bubble *)
  method attach : element -> unit meth

 (** Returns an AnchoredPosition that will position the bubble optimally given 
     the position of the anchor element and the size of the viewport *)
  method getComputedAnchoredPosition: element -> anchoredPosition meth
 
  (** Whether the bubble is visible. *)
  method isVisible : unit -> bool meth
  
  (**  Sets whether the bubble should be automatically hidden 
       whenever user clicks outside the bubble element *)
  method setAutoHide : bool -> unit meth
  
  (**  Sets the corner of the bubble to used in the positioning algorithm *)
  method setPinnedCorner : corner -> unit meth

  (**  Sets the position of the bubble.
       Pass null for corner in AnchoredPosition for 
       corner to be computed automatically *)
  method setPosition : abstractPosition -> unit meth
  
  (**  Sets the timeout after which bubble hides itself *)
  method setTimeout : int -> unit meth
  
  (**  Sets whether the bubble should be visible *)
  method setVisible : bool -> unit meth

end

let bubble : (js_string t -> bubble t) constr =
  Js.Unsafe.variable "goog.ui.Bubble"
