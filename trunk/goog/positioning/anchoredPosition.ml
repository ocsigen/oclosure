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

open Js
class type anchoredPosition = object
  inherit abstractPosition
end

let anchoredPosition : (Dom_html.element t -> corner -> anchoredPosition t) constr =
  Js.Unsafe.variable "goog.positioning.AnchoredPosition"
