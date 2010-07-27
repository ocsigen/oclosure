(** 
    OClosure Project - 2010 
    Class goog.ui.PopupDatePicker
    
    @author Gabriel Cardoso
    @version 0.2
*)
open Js

class type popupDatePicker = object
  inherit Component.component

  method attach : #Dom_html.element t -> unit meth

  method canDecorate : #Dom_html.element t -> bool t meth

  method createDom : unit meth

  method detach : #Dom_html.element t -> unit meth

  method disposeInternal : unit meth

  method enterDocument : unit meth

  method getAllowAutoFocus : bool t meth

  method getDate : Date.date t opt meth

  method getDatePicker : DatePicker.datePicker t meth

  method getLastTarget : #Dom_html.element t meth

  method hidePopup : unit meth

  method setAllowAutoFocus : bool t -> unit meth

  method setDate : Date.date t opt -> unit meth

  method showPopup : #Dom_html.element t -> unit meth
end

let popupDatePicker : (DatePicker.datePicker t opt -> Gdom.domHelper t opt
			 -> popupDatePicker t) constr =
  Tools.variable "[oclosure]goog.ui.PopupDatePicker[/oclosure]"
