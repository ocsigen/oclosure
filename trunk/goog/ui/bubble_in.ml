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
type element = JSOO.obj

(** goog.ui.Popup.AnchoredPosition **)
type anchoredPosition

(** goog.positioning.Corner **)
type corner 

(** goog.positioning.AbstractPosition **)
type abstractPosition 

(** Number **)
type number

class external bubble : string ->
  <
  (** Attaches the bubble to an anchor element. 
      Computes the positioning and orientation of the bubble *)
  attach : element -> unit;

 (** Returns an AnchoredPosition that will position the bubble optimally given 
     the position of the anchor element and the size of the viewport *)
  getComputedAnchoredPosition: element -> anchoredPosition;
 
  (** Whether the bubble is visible. *)
  isVisible : unit -> bool;
  
  (**  Sets whether the bubble should be automatically hidden 
       whenever user clicks outside the bubble element *)
  setAutoHide : bool -> unit;
  
  (**  Sets the corner of the bubble to used in the positioning algorithm *)
  setPinnedCorner : corner -> unit;

  (**  Sets the position of the bubble.
       Pass null for corner in AnchoredPosition for 
       corner to be computed automatically *)
  setPosition : abstractPosition -> unit;
  
  (**  Sets the timeout after which bubble hides itself *)
  setTimeout : int -> unit;
  
  (**  Sets whether the bubble should be visible *)
  setVisible : bool -> unit;

  > = "goog.ui.Bubble"
