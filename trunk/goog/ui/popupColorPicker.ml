(** 
    OClosure Project - 2010 
    Class goog.ui.PopupColorPicker
    
    @author Cardoso Gabriel
    @version 0.2
*)
open Js

open Tools

class type popupColorPicker = object
  inherit Component.component

  method addColors : js_string t js_array t -> unit meth

  method attach : #Dom_html.element t -> unit meth

  method canDecorate : #Dom_html.element t -> bool t meth

  method clearColors : unit meth

  method createDom : unit meth

  method detach : #Dom_html.element t -> unit meth

  method disposeInternal : unit meth

  method getAllowAutoFocus : bool t meth

  method getAutoHide : bool t meth

  method getAutoHideRegion : Dom_html.element t meth

  method getColorPicker : ColorPicker.colorPicker t meth

  method getLastTarget : #Dom_html.element t meth

  method getPopup : PopupBase.popupBase t opt meth

  method getRememberSelection : bool t meth

  method getSelectedColor : js_string t opt meth

  method getToggleMode : bool t meth

  method setAllowAutoFocus : bool t -> unit meth

  method setAutoHide : bool t -> unit meth

  method setAutoHideRegion : #Dom_html.element t -> unit meth

  method setFocusable : bool t -> unit meth

  method setPinnedCorner : Positioning.corner -> unit meth

  method setPopupCorner : Positioning.corner -> unit meth

  method setRememberSelection : bool t -> unit meth

  method setToggleMode : bool t -> unit meth
end

let popupColorPicker : (Gdom.domHelper t opt -> ColorPicker.colorPicker t opt 
			  -> popupColorPicker t) constr =
  Js.Unsafe.variable "goog.ui.PopupColorPicker"
