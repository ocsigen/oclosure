(** 
   OClosure Project - 2010 
   Class goog.ui.PopupBase
   
   The PopupBase class provides functionality for showing and
   hiding a generic container element. It also provides the option 
   for hiding the popup element if the user clicks outside the 
   popup or the popup loses focus.
   
   @author Esther Baruk
   @version 0.2
*)

open Js

module PopupBase = struct
  type _type = TOGGLE_DISPLAY | MOVE_OFFSCREEN

  type type_pre = js_string t

  let type_pre_of_type = function 
      TOGGLE_DISPLAY -> Js.string "toggle_display"
    | MOVE_OFFSCREEN -> Js.string "move_offscreen"
  
  let type_of_type_pre s = match Js.to_string s with
    "toggle_display" -> TOGGLE_DISPLAY
  | "move_offscreen" -> MOVE_OFFSCREEN
  | _ -> invalid_arg "Goog.Ui.PopupBase.type_of_type_pre"
end

class type popupBase = object
  inherit EventTarget.eventTarget
  method getType : js_string t meth
  method setType : js_string t -> unit meth
  method shouldHideAsync : bool t meth
  method setShouldHideAsync : bool t -> unit meth
  method getElement : Dom_html.element t meth
  method setElement : #Dom_html.element t -> unit meth
  method getAutoHide : bool t meth
  method setAutoHide : bool t -> unit meth
  method getHideOnEscape : bool t meth
  method setHideOnEscape : bool t -> unit meth
  method getEnableCrossIframeDismissal : bool t meth
  method setEnableCrossIframeDismissal : bool t -> unit meth
  method getAutoHideRegion : bool t meth
  method setAutoHideRegion : bool t -> unit meth
  method getLastShowTime : float t meth
  method getLastHideTime : float meth
  method isVisible : bool t meth
  method isOrWasRecentlyVisible : bool t meth
  method setVisible : bool t -> unit meth
  method showPopupElement : unit meth
  method onBeforeShow : bool t meth
end
 
let tmp = Js.Unsafe.variable "goog.ui.PopupBase"
let popubBase : (#Dom_html.element t -> PopupBase.type_pre opt 
  -> popupBase t) constr = tmp
  
