(** 
    * OClosure Project - 2010 
    * Class goog.positioning.AnchoredPosition
    *
    * Encapsulates a popup position where the popup is anchored 
    * at a corner of an element. When using AnchoredPosition, it is 
    * recommended that the popup element specified in the Popup 
    * constructor or Popup.setElement be absolutely positioned.
    *
    * @author Esther Baruk
    * @version 0.1
    * @see 'goog.positioning.AbstractPosition'
*)
open AbstractPosition

class external anchoredPosition inherit abstractPosition : 
  element -> corner ->
  < 
    (** Repositions the movable element.*)
    reposition : element -> corner-> box -> unit
  > = "goog.positioning.AnchoredPosition"
